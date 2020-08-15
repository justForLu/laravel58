<?php

namespace App\Repositories\Home;

use App\Enums\BasicEnum;
use App\Repositories\BaseRepository;

class PositionRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Common\Position';
    }


    /**
     * 获取职位列表
     * @param array $where
     * @return array
     */
    public function getList($where = [])
    {
        $model = $this->model;
        if($where){
            foreach ($where as $k => $v){
                if(is_array($v)){
                    $model = $model->whereIn($k, $v);
                }else{
                    $model = $model->where($k, $v);
                }
            }
        }
        $list = $model->where('status',BasicEnum::ACTIVE)
            ->orderBy('sort','DESC')
            ->get()->toArray();

        return $list;
    }

}
