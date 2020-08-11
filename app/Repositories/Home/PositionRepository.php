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
        $list = $this->model->where($where)
            ->where('status',BasicEnum::ACTIVE)
            ->orderBy('sort','DESC')
            ->get()->toArray();

        return $list;
    }

}
