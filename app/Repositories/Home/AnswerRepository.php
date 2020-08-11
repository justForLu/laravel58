<?php

namespace App\Repositories\Home;

use App\Repositories\BaseRepository;

class AnswerRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Common\Answer';
    }


}
