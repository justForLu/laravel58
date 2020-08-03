<?php

namespace App\Enums;

/**
 * @method static BaseEnum ENUM()
 */
class RecruitEnum extends BaseEnum {

    const FACTORY = 1;
    const LOCAL = 2;

    static $desc = array(
        'FACTORY' => '工厂招聘',
        'LOCAL' => '本地招聘',
    );

}
