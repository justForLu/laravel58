<?php

namespace App\Repositories\Admin\Criteria;

use Bosnadev\Repositories\Criteria\Criteria;
use Bosnadev\Repositories\Contracts\RepositoryInterface as Repository;

class BannerCriteria extends Criteria {

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

        if(isset($this->conditions['title']) && !empty($this->conditions['title'])){
            $model = $model->where('title', 'like','%' . $this->conditions['title'] . '%');
        }

        if(isset($this->conditions['type']) && !empty($this->conditions['type'])){
            $model = $model->where('type', $this->conditions['type']);
        }

        $model = $model->orderBy('type','ASC');
        $model = $model->orderBy('sort','DESC');

        return $model;
    }
}