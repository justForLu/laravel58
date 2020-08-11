<?php

namespace App\Repositories\Admin;

use App\Enums\BasicEnum;
use App\Repositories\BaseRepository;

class BannerRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Common\Banner';
    }

}
