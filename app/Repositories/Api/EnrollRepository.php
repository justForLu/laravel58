<?php

namespace App\Repositories\Api;

use App\Repositories\BaseRepository;

class EnrollRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Common\Enroll';
    }


    /**
     * 获取报名数量
     * @param array $where
     * @return mixed
     */
    public function getCount($where = [])
    {
        $count = $this->model->where($where)->count();

        return $count;
    }
}
