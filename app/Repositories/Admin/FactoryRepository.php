<?php

namespace App\Repositories\Admin;

use App\Enums\BasicEnum;
use App\Repositories\BaseRepository;

class FactoryRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Common\Factory';
    }

    /**
     * 获取工厂列表
     * @param string $select
     * @param array $where
     * @return array
     */
    public function getList($select = '*', $where = [])
    {
        $list = $this->model->select($select)
            ->where($where)
            ->where('status',BasicEnum::ACTIVE)
            ->orderBy('is_top','DESC')
            ->orderBy('is_recommend','DESC')
            ->orderBy('sort','DESC')
            ->get()->toArray();

        return $list;
    }

}
