<?php

namespace App\Enums;

/**
 * @method static BaseEnum ENUM()
 */
class JoinTypeEnum extends BaseEnum {

    const SHOP = 1;
    const Company = 2;
    const PERSON = 3;

    static $desc = array(
        'SHOP' => '门店加盟',
        'Company' => '公司加盟',
        'PERSON' => '个人加盟',
    );

}
