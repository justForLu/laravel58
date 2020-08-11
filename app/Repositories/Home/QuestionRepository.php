<?php

namespace App\Repositories\Home;

use App\Repositories\BaseRepository;

class QuestionRepository extends BaseRepository
{
    public function model()
    {
        return 'App\Models\Common\Question';
    }

}
