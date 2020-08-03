<?php

namespace App\Repositories\Admin;

use App\Repositories\BaseRepository;

class UsersRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Admin\Users';
    }

}
