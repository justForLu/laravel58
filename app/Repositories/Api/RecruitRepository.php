<?php

namespace App\Repositories\Api;

use App\Enums\BasicEnum;
use App\Repositories\BaseRepository;

class RecruitRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Common\Recruit';
    }


    /**
     * 获取招工信息列表（无分页）
     * @param string $select
     * @param array $where
     * @param int $limit
     * @param array $with
     * @param array $order
     * @return array
     */
    public function getList($select = '*', $where = [], $limit = 0, $with = [], $order = [])
    {
        //处理一下默认排序
        if(empty($order)){
            $order = array(
                ['is_top','DESC'],
                ['is_recommend','DESC'],
                ['sort','DESC']
            );
        }

        $list = $this->getLists($this->model, $select, $where , $limit, $with, $order);

        return $list;
    }
}
