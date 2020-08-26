<?php

namespace App\Enums;

/**
 * @method static BaseEnum ENUM()
 */
class EnrollEnum extends BaseEnum {

    const UNDEAL = 1;
    const DEAL = 2;

    static $desc = array(
        'UNDEAL' => '未处理',
        'DEAL' => '已处理',
    );

}
