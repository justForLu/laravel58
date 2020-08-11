<?php

namespace App\Repositories\Admin;

use App\Enums\BasicEnum;
use App\Repositories\BaseRepository;

class LabelRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Common\Label';
    }

    /**
     * 获取不同类型的标签
     * @param int $type
     * @return array
     */
    public function getList($type = 0)
    {
        $list = [];

        if($type){
            $list = $this->model->where('type',$type)
                ->where('status',BasicEnum::ACTIVE)
                ->orderBy('sort','DESC')
                ->get()->toArray();
        }

        return $list;
    }
}
