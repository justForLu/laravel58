<?php

namespace App\Repositories\Admin;

use App\Repositories\BaseRepository;

class RecruitRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Admin\Recruit';
    }

}
