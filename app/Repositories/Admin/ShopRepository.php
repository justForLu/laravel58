<?php

namespace App\Repositories\Admin;

use App\Repositories\BaseRepository;

class ShopRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Common\Shop';
    }

}
