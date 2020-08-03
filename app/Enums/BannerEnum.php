<?php

namespace App\Enums;

/**
 * @method static BaseEnum ENUM()
 */
class BannerEnum extends BaseEnum {

    const INDEX = 1;
    const NEWS = 2;

    static $desc = array(
        'INDEX' => '首页位置',
        'NEWS' => '资讯位置',
    );

}
