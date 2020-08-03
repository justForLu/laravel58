<?php

namespace App\Repositories\Admin;

use App\Repositories\BaseRepository;

class LabelRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Admin\Label';
    }

}
