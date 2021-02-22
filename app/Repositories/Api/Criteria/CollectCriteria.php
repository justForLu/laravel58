<?php
namespace App\Repositories\Api\Criteria;

use Bosnadev\Repositories\Criteria\Criteria;
use Bosnadev\Repositories\Contracts\RepositoryInterface as Repository;

class CollectCriteria extends Criteria {

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
        if(isset($this->conditions['user_id']) && !empty($this->conditions['user_id'])){
            $model = $model->where('user_id',$this->conditions['user_id']);
        }

        if(isset($this->conditions['type']) && !empty($this->conditions['type'])){

            $model = $model->where('type',$this->conditions['type']);
        }

        $model = $model->orderBy('id','ASC');

        return $model;
    }
}
