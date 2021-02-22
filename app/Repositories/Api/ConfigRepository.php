<?php

namespace App\Repositories\Api;

use App\Repositories\BaseRepository;

class ConfigRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Common\Config';
    }


}
