<?php
namespace App\Http\Controllers\Home;

use App\Repositories\Home\QuestionRepository as Question;
use Illuminate\Http\Request;

class QuestionController extends BaseController
{

    protected $question;

    public function __construct(Question $question)
    {
        parent::__construct();

        $this->question = $question;

    }


    /**
     * 提问
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function ask(Request $request)
    {
        $params = $request->all();

        $data = [
            'recruit_id' => $params['recruit_id'] ?? 0,
            'shop_id' => $params['shop_id'] ?? 0,
            'type' => $params['type'] ?? 0,
            'title' => $params['title'] ?? '',
            'user_id' => $params['user_id'] ?? 0,
            'is_show' => $params['is_show'] ?? 0,
            'status' => 1,
            'create_time' => time()
        ];

        $result = $this->question->create($data);

        return $this->ajaxAuto($result, '提问');
    }

}
