<?php

namespace App\Enums;

/**
 * @method static BaseEnum ENUM()
 */
class QuestionEnum extends BaseEnum {

    const FACTORY = 1;
    const SHOP = 2;

    static $desc = array(
        'FACTORY' => '招工问题',
        'SHOP' => '门店问题',
    );

}
