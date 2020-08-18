<?php

namespace App\Enums;

/**
 * @method static BaseEnum ENUM()
 */
class JoinStatusEnum extends BaseEnum {

    const PENDING = 1;
    const PROCESS = 2;
    const PASS = 3;
    const REFUSE = 4;

    static $desc = array(
        'PENDING' => '待处理',
        'PROCESS' => '处理中',
        'PASS' => '审核通过',
        'REFUSE' => '拒绝',
    );

}
