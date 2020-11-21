<?php

namespace App\Http\Controllers\Admin;

use App\Enums\BasicEnum;
use App\Enums\BoolEnum;
use App\Enums\CategoryEnum;
use App\Http\Requests\Admin\NewsRequest;
use App\Repositories\Admin\Criteria\NewsCriteria;
use App\Repositories\Admin\NewsRepository as News;
use App\Repositories\Admin\CategoryRepository as Category;
use App\Repositories\Admin\ManagerRepository as Manager;
use App\Repositories\Admin\LogRepository;
use Illuminate\Support\Facades\Config;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NewsController extends BaseController
{
    /**
     * @var News
     */
    protected $news;
    protected $category;
    protected $manager;
    protected $log;

    public function __construct(News $news, Category $category, Manager $manager, LogRepository $log)
    {
        parent::__construct();

        $this->news = $news;
        $this->category = $category;
        $this->manager = $manager;
        $this->log = $log;
    }
    /**
     * Display a listing of the resource.
     *
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $params = $request->all();

        $this->news->pushCriteria(new NewsCriteria($params));

        $list = $this->news->paginate(Config::get('admin.page_size',10));
        //获取新闻分类列表
        $category = $this->category->getListByType(CategoryEnum::NEWS);
        $category_arr = [];
        if($category){
          foreach ($category as $v){
              $category_arr[$v['id']] = $v['name'];
          }
        }
        if($list){
            //发布作者
            $list_arr = json_decode(json_encode($list), true);
            $admin_ids = array_unique(array_column($list_arr['data'], 'author'));
            $admin_arr = $this->manager->getListById($admin_ids);
            $author_arr = [];   //发布作者的数组
            if($admin_arr){
                foreach ($admin_arr as $v){
                    $author_arr[$v['id']] = $v;
                }
            }
            foreach ($list as &$v){
                $v->author = $author_arr[$v->author]['username'] ?? '';
                $v->category = $category_arr[$v->category_id] ?? '';
            }
        }

        return view('admin.news.index',compact('params','list', 'category'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        //获取新闻分类列表
        $category = $this->category->getListByType(CategoryEnum::NEWS);

        return view('admin.news.create', compact('category'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param NewsRequest $request
     * @return \Illuminate\Http\JsonResponse
     * @throws \Bosnadev\Repositories\Exceptions\RepositoryException
     */
    public function store(NewsRequest $request)
    {
        $params = $request->all();
        //处理新闻封面图片链接地址，存储新闻封面图片链接
        $image_path = array_values(FileController::getFilePath($params['image']));
        $image_path = $image_path[0] ?? '';

        $data = [
            'title' => $params['title'] ?? '',
            'category_id' => $params['category_id'] ?? 0,
            'desc' => $params['desc'] ?? '',
            'image' => $image_path,
            'author' => Auth::guard('admin')->user()->id,
            'sort' => $params['sort'] ?? 0,
            'status' => $params['status'] ?? BasicEnum::ACTIVE,
            'is_top' => $params['is_top'] ?? BoolEnum::NO,
            'is_recommend' => $params['is_recommend'] ?? BoolEnum::NO,
            'content' => $params['content'] ? htmlspecialchars_decode($params['content']) : '',
            'create_time' => time()
        ];

        $result = $this->news->create($data);
        $this->log->writeOperateLog($request,'添加新闻');   //日志记录

        return $this->ajaxAuto($result,'添加',url('admin/news'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function edit($id,Request $request)
    {
        $data = $this->news->find($id);
        //获取新闻分类列表
        $category = $this->category->getListByType(CategoryEnum::NEWS);
        $data->content = htmlspecialchars_decode($data->content);

        return view('admin.news.edit',compact('data', 'category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param NewsRequest $request
     * @param $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(NewsRequest $request, $id)
    {
        $params = $request->filterAll();
        //处理新闻封面图片链接地址，存储新闻封面图片链接
        if(strlen($params['image']) > 20){
            $image_path = $params['image'];
        }else{
            $image_path = array_values(FileController::getFilePath($params['image']));
            $image_path = $image_path[0] ?? '';
        }

        $data = [
            'title' => $params['title'] ?? '',
            'category_id' => $params['category_id'] ?? 0,
            'desc' => $params['desc'] ?? '',
            'image' => $image_path,
            'sort' => $params['sort'] ?? 0,
            'status' => $params['status'] ?? BasicEnum::ACTIVE,
            'is_top' => $params['is_top'] ?? BoolEnum::NO,
            'is_recommend' => $params['is_recommend'] ?? BoolEnum::NO,
            'content' => $params['content'] ? htmlspecialchars_decode($params['content']) : '',
            'update_time' => time()
        ];

        $result = $this->news->update($data,$id);
        $this->log->writeOperateLog($request,'编辑新闻'); //日志记录

        return $this->ajaxAuto($result,'修改',url('admin/news'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($id)
    {
        $result = $this->news->delete($id);

        return $this->ajaxAuto($result,'删除');
    }


}
