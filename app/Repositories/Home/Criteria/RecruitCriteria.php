<?php
namespace App\Repositories\Home\Criteria;

use App\Enums\BasicEnum;
use App\Models\Common\Factory;
use Bosnadev\Repositories\Criteria\Criteria;
use Bosnadev\Repositories\Contracts\RepositoryInterface as Repository;

class RecruitCriteria extends Criteria {

    private $conditions;

    public function __construct($conditions){
        $this->conditions = $conditions;
    }

    /**
     * @param $model
     * @param Repository $repository
     * @return mixed
     */
    public function apply($model, Repository $repository)
    {
        if(isset($this->conditions['keyword']) && !empty($this->conditions['keyword'])){
            //根据企业关键词找到工厂，根据工厂筛选
            $factory_ids = Factory::where('name','LIKE','%'.$this->conditions['keyword'].'%')
                ->where('status', BasicEnum::ACTIVE)
                ->pluck('id')->all();

            $model = $model->orWhere('title','LIKE','%'.$this->conditions['keyword'].'%');
            $model = $model->orWhereIn('factory_id', $factory_ids);
        }

        if(isset($this->conditions['salary_val']) && !empty($this->conditions['salary_val'])){
            if($this->conditions['salary_val'] == 1){   //3000以下
                $model = $model->where('salary_down','<',3000);
            }elseif ($this->conditions['salary_val'] == 2){     //3000~4000
                $model = $model->where('salary_down','>=',3000);
                $model = $model->where('salary_down','<=',4000);
            }elseif ($this->conditions['salary_val'] == 3){     //4000~5000
                $model = $model->where('salary_down','>=',4000);
                $model = $model->where('salary_down','<=',5000);
            }elseif ($this->conditions['salary_val'] == 4){     //5000~6000
                $model = $model->where('salary_down','>=',5000);
                $model = $model->where('salary_down','<=',6000);
            }elseif ($this->conditions['salary_val'] == 5){     //6000以上
                $model = $model->where('salary_down','>=',6000);
            }
        }

        if(isset($this->conditions['position_val']) && !empty($this->conditions['position_val'])){
            $model = $model->where('posts','LIKE','%'.$this->conditions['position_val'].'%');
        }

        if(isset($this->conditions['label_val']) && !empty($this->conditions['label_val'])){
            //根据福利标签获取工厂，根据工厂筛选
            $factory_ids = Factory::where('label','LIKE','%'.$this->conditions['label_val'].'%')
                ->where('status', BasicEnum::ACTIVE)
                ->pluck('id')->all();

            $model = $model->whereIn('factory_id', $factory_ids);
        }

        $model = $model->where('status', BasicEnum::ACTIVE);

        if (isset($this->conditions['sort_val']) && !empty($this->conditions['sort_val'])){
            if($this->conditions['sort_val'] == 1){     //发布时间排序
                $model = $model->orderBy('create_time','DESC');
            }elseif ($this->conditions['sort_val'] == 2){   //招聘人数排序
                $model = $model->orderBy('num','DESC');
            }
        }

        $model = $model->orderBy('is_top','DESC');
        $model = $model->orderBy('is_recommend','DESC');
        $model = $model->orderBy('sort','ASC');
        $model = $model->orderBy('id','ASC');

        return $model;
    }
}