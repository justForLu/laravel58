<?php

namespace App\Repositories\Admin\Criteria;

use Bosnadev\Repositories\Criteria\Criteria;
use Bosnadev\Repositories\Contracts\RepositoryInterface as Repository;

class UsersCriteria extends Criteria {

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

        if(isset($this->conditions['realname']) && !empty($this->conditions['realname'])){
            $model = $model->where('realname', 'like','%' . $this->conditions['realname'] . '%');
        }

        if(isset($this->conditions['mobile']) && !empty($this->conditions['mobile'])){
            $model = $model->where('mobile', 'like','%' . $this->conditions['mobile'] . '%');
        }

        if(isset($this->conditions['email']) && !empty($this->conditions['email'])){
            $model = $model->where('email', 'like','%' . $this->conditions['email'] . '%');
        }

        return $model;
    }
}