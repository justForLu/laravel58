<?php

namespace App\Repositories\Admin;

use App\Repositories\BaseRepository;

class PositionRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Admin\Position';
    }

}
