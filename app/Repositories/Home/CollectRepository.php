<?php

namespace App\Repositories\Home;

use App\Repositories\BaseRepository;

class CollectRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Common\Collect';
    }


    /**
     * 获取收藏数量
     * @param array $where
     * @return mixed
     */
    public function getCollectCount($where = [])
    {
        $count = $this->model->where($where)->count();

        return $count;
    }
}
