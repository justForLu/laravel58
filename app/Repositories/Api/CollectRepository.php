<?php

namespace App\Repositories\Api;

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

    /**
     * 取消收藏
     * @param array $where
     * @return int
     */
    public function cancelCollect($where = [])
    {
        if($where){
            $result = $this->model->where($where)->delete();
        }else{
            return -1;
        }

        return $result;
    }


}
