<?php
namespace App\Http\Controllers\Home;

use App\Enums\BasicEnum;
use App\Enums\BoolEnum;
use App\Enums\CategoryEnum;
use App\Repositories\Home\Criteria\NewsCriteria;
use App\Repositories\Home\NewsRepository as News;
use App\Repositories\Home\CategoryRepository as Category;
use App\Repositories\Home\RecruitRepository as Recruit;
use App\Repositories\Admin\ManagerRepository as Manager;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;

class NewsController extends BaseController
{

    protected $news;
    protected $category;
    protected $recruit;
    protected $manager;

    public function __construct(News $news, Category $category, Recruit $recruit, Manager $manager)
    {
        parent::__construct();

        $this->news = $news;
        $this->category = $category;
        $this->recruit = $recruit;
        $this->manager = $manager;

        view()->share('menu','News');
    }

    /**
     * 新闻首页
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
	public function index()
    {
        //新闻资讯分类
        $where1['type'] = CategoryEnum::NEWS;
        $category = $this->category->getList($where1);

        //8条推荐新闻
        $where2['is_recommend']['EQ'] = BoolEnum::YES;
        $news_list1 = $this->news->getList('*',$where2,8);

        //根据新闻分类获取6条新闻数据
        if($category){
            foreach ($category as &$v){
                $where3 = [
                    'category_id' => ['EQ' => $v['id']]
                ];
                $v['news'] = $this->news->getList('*',$where3,6);
            }
        }

        return view('home.news.index',compact('category','news_list1'));
    }

    public function list(Request $request)
    {
        $params = $request->all();

        $this->news->pushCriteria(new NewsCriteria($params));

        $list = $this->news->paginate(Config::get('home.page_size',10));
        //咨询分类
        $where1['type'] = CategoryEnum::NEWS;
        $category = $this->category->getList($where1);
        $category_id = $params['category_id'] ?? 0;
        $category_name = '';
        if($category){
            foreach ($category as $cat){
                if($cat['id'] == $category_id){
                    $category_name = $cat['name'];
                    break;
                }
            }
        }
        //热门文章
        $where2['is_recommend']['EQ'] = BoolEnum::YES;
        $news_2 = $this->news->getList('*',$where2,6);

        //大家想去
        $where4['is_recommend']['EQ'] = BasicEnum::ACTIVE;
        $recruit = $this->recruit->getList('*',$where4,5,['factory']);

        return view('home.news.list', compact('list','category','category_id','category_name','news_2','recruit'));
    }

    /**
     * 新闻详情
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function detail($id)
    {
        $data = $this->news->find($id);
        $data->content = htmlspecialchars_decode($data->content);
        //分类名称
        $category_id = isset($data->category_id) ? $data->category_id : 0;
        $category_info = $this->category->find($category_id);
        $category_name = isset($category_info->name) ? $category_info->name : '';
        //发布作者
        $user = $this->manager->find($data->author);
        $data->author = isset($user->username) ? $user->username : '';

        //相关文章
        $where1['category_id']['EQ'] = $category_id;
        $where1['id']['NEQ'] = $id;
        $news_1 = $this->news->getList('*',$where1,5);
        if ($news_1){
            foreach ($news_1 as &$v){
                $v['date'] = date("Y-m-d",$v['create_time']);
            }
        }

        //热门文章
        $where2['is_recommend']['EQ'] = BoolEnum::YES;
        $news_2 = $this->news->getList('*',$where2,6);

        //大家想去
        $where4['is_recommend']['EQ'] = BasicEnum::ACTIVE;
        $recruit = $this->recruit->getList('*',$where4,5,['factory']);

        //增加一次阅读量
        $data_read = [
            'read' => $data->read + 1
        ];
        $this->news->update($data_read, $id);

        return view('home.news.detail',compact('data','category_id','category_name','news_1','news_2','recruit'));
    }

}
