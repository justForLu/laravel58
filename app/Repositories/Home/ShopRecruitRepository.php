<?php

namespace App\Repositories\Home;

use App\Enums\BasicEnum;
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
}
