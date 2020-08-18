<?php

namespace App\Repositories\Admin;

use App\Repositories\BaseRepository;

class JoinRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Common\Join';
    }

}
