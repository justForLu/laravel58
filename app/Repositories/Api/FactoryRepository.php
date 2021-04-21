<?php

namespace App\Repositories\Api;

use App\Enums\BasicEnum;
use App\Repositories\BaseRepository;

class FactoryRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Common\Factory';
    }


    /**
     * 获取工厂列表（无分页）
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


    /**
     * 根据ID获取工厂信息
     * @param int $id
     * @return mixed
     */
    public function getById($id = 0)
    {
        $data = $this->model->find($id);

        return $data;
    }
}
