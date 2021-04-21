<?php

namespace App\Repositories\Api;

use App\Enums\BasicEnum;
use App\Repositories\BaseRepository;

class AnswerRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Common\Answer';
    }


    /**
     * 获取回答列表（无分页）
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
