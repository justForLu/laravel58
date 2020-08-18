<?php

namespace App\Repositories\Home;

use App\Enums\BasicEnum;
use App\Repositories\BaseRepository;

class JoinRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Common\Join';
    }


}
