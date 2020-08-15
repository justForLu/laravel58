<?php

namespace App\Repositories\Admin\Criteria;

use Bosnadev\Repositories\Criteria\Criteria;
use Bosnadev\Repositories\Contracts\RepositoryInterface as Repository;

class FactoryCriteria extends Criteria {

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
        if(isset($this->conditions['name']) && !empty($this->conditions['name'])){
            $model = $model->where('name', 'like','%' . $this->conditions['name'] . '%');
        }

        $model = $model->orderBy('is_top','DESC');
        $model = $model->orderBy('is_recommend','DESC');
        $model = $model->orderBy('sort','DESC');

        return $model;
    }
}