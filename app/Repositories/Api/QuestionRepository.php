<?php

namespace App\Repositories\Api;

use App\Enums\BasicEnum;
use App\Repositories\BaseRepository;

class QuestionRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Common\Question';
    }

    /**
     * 获取问答题列表
     * @param array $where
     * @return mixed
     */
    public function getList($where = [])
    {
        $list = $this->model->with(array('user'))->where($where)
            ->where('status', BasicEnum::ACTIVE)
            ->orderBy('sort','DESC')
            ->get()->toArray();

        if($list){
            foreach ($list as &$v){
                $v['create_time'] = date('Y-m-d H:i:s', $v['create_time']);
            }
        }

        return $list;
    }
}
