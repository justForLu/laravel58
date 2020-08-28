<?php
namespace App\Repositories\Home\Criteria;

use App\Enums\BasicEnum;
use Bosnadev\Repositories\Criteria\Criteria;
use Bosnadev\Repositories\Contracts\RepositoryInterface as Repository;

class ShopCriteria extends Criteria {

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
            $model = $model->where('name','LIKE','%'.$this->conditions['keyword'].'%');
        }

        if (isset($this->conditions['province_id']) && !empty($this->conditions['province_id'])){
            $model = $model->where('province',$this->conditions['province_id']);
        }

        if (isset($this->conditions['city_id']) && !empty($this->conditions['city_id'])){
            $model = $model->where('city',$this->conditions['city_id']);
        }

        $model = $model->where('status', BasicEnum::ACTIVE);

        $model = $model->orderBy('is_top','DESC');
        $model = $model->orderBy('is_recommend','DESC');
        $model = $model->orderBy('sort','ASC');
        $model = $model->orderBy('id','ASC');

        return $model;
    }
}