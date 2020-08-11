<?php

namespace App\Repositories\Home;

use App\Enums\BasicEnum;
use App\Repositories\BaseRepository;

class ShopRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Common\Shop';
    }


    /**
     * 获取门店列表（无分页）
     * @param array $where
     * @param int $limit
     * @return array
     */
    public function getList($where = [], $limit = 0)
    {
        $model = $this->model->where($where)
            ->where('status',BasicEnum::ACTIVE)
            ->orderBy('is_top','DESC')
            ->orderBy('is_recommend','DESC')
            ->orderBy('sort','DESC');
        if ($limit){
            $model = $model->limit($limit);
        }

        $list = $model->get()->toArray();

        return $list;
    }
}
