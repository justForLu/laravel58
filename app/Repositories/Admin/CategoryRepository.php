<?php

namespace App\Repositories\Admin;

use App\Enums\BasicEnum;
use App\Repositories\BaseRepository;

class CategoryRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Common\Category';
    }

    /**
     * 获取分类的list
     * @param int $type
     * @return array
     */
    public function getCategoryList($type = 0)
    {
        if($type){
            $list = $this->model->where('type',$type)
                ->where('pid',0)
                ->get();
            if($list){
                foreach ($list as &$v){
                    $child = $this->model->where('type',$type)
                        ->where('pid',$v->id)
                        ->get();
                    $v['children'] = $child;
                }
            }
            return $list;
        }

        return [];
    }

    /**
     * 根据type获取分类列表
     * @param int $type
     * @return array
     */
    public function getListByType($type = 0)
    {
        $list = [];

        if($type){
            $list = $this->model->where('type', $type)
                ->where('status', BasicEnum::ACTIVE)
                ->where('pid',0)
                ->get();
        }

        return $list;
    }
}
