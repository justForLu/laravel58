<?php

namespace App\Repositories\Api;

use App\Enums\BasicEnum;
use App\Models\Common\Factory;
use App\Repositories\BaseRepository;

class ShopRecruitRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Common\ShopRecruit';
    }


    /**
     * 获取列表
     * @param array $where
     * @return array
     */
    public function getList($where = [])
    {
        $list = $this->model->where($where)
            ->get()->toArray();


        return $list;
    }

    /**
     * 获取门店的招聘企业
     * @param array $where
     * @return array
     */
    public function getShopFactory($where = [])
    {
        $factory_id = $this->model->where($where)
            ->pluck('factory_id')->all();

        $factory_name = [];

        if($factory_id){
            $factory_id = array_unique($factory_id);
            $factory_name = Factory::whereIn('id',$factory_id)->pluck('name')->all();
        }

        return $factory_name;
    }


}
