<?php

namespace App\Enums;

/**
 * @method static BaseEnum ENUM()
 */
class LabelEnum extends BaseEnum {

    const WELFARE = 1;
    const FACTORY = 2;

    static $desc = array(
        'WELFARE' => '福利位置标签',
        'FACTORY' => '工厂位置标签',
    );

}
