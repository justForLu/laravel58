@extends('home.layout.login')

@section('styles')
    <style type="text/css">
        .reg_lcont tr td{
            padding: 15px 7px;
        }
    </style>
@endsection

@section('content')
    <div class="w1200 of_hide reg_main">
        <div class="left reg_left">
            <div class="reg_lhead font_18" id="login_meth">
                <a href="" class="cur">账号密码登录</a>
                <a href="">手机验证码登录</a>
            </div>
            <div class="login_item  show">
                <form role="form" action="" method="post" id="form1">
                    <input type="hidden" name="redirect_url" value="">
                    <table class="reg_lcont font_16" cellspacing="20">
                        <tbody>
                        <tr>
                            <td class="reg_label">用户名</td>
                            <td>
                                <input type="text" name="log_name" class="reg_input3">
                            </td>
                            <td class="reg_tip">请输入您的手机号或身份证号</td>
                        </tr>
                        <tr>
                            <td class="reg_label">密码</td>
                            <td>
                                <input type="password" name="password" class="reg_input3">
                            </td>
                            <td class="reg_tip">请输入密码</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="grey">
                                <a href="" class="right grey">忘记密码？</a>
                                <label><input name="auto" type="checkbox" value="1"> 下次自动登录</label>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="grey">
                                <a href="javascript:void(0)" onclick="login(1)" class="reg_btn mt_30">登录</a>
                            </td>
                            <td></td>
                        </tr>
                        </tbody>
                    </table>
                </form>
            </div>
            <div class="login_item ">
                <form role="form" action="" method="post" id="form2">
                    <table class="reg_lcont font_16" cellspacing="20">
                        <tbody>
                        <tr>
                            <td class="reg_label">手机号</td>
                            <td>
                                <input type="text" name="mobile" id="inputMobile" class="reg_input" placeholder="输入手机号">
                            </td>
                            <td class="reg_tip">请输入您的手机号</td>
                        </tr>
                        <tr>
                            <td class="reg_label">验证码</td>
                            <td>
                                <input type="text" name="verify" placeholder="输入验证码" class="reg_input3" id="inputVerify">
                                <div class="right">
                                    <img src="{{asset("/assets/home/images/recomSms_.html.png")}}" onclick="refreshVerify()" height="47" style="cursor:pointer;" id="imgVerify" data-ajax="">
                                </div>
                            </td>
                            <td class="reg_tip">输入图片验证码</td>
                        </tr>

                        <tr>
                            <td class="reg_label">短信验证码</td>
                            <td>
                                <input type="text" name="code" class="left reg_input2" placeholder="输入短信验证码">
                                <span class="left reg_getCode send-sms" data-ajax="/Sms/loginSend.html">获取验证码</span>
                            </td>
                            <td class="reg_tip">点击获取短信验证码</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="grey">
                                <a href="" class="right grey">忘记密码？</a>
                                <label><input type="checkbox" value="1"> 下次自动登录</label>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="grey">
                                <a href="javascript:void(0)" onclick="login(2)" class="reg_btn mt_30">登录</a>
                            </td>
                            <td></td>
                        </tr>
                        </tbody>
                    </table>
                </form>
            </div>

        </div>

        <div class="right reg_right ta_center">
            <p class="mt_50 orange bold font_18">下载濮工网APP</p>
            <p>手机报名 入职速度快50%</p>
            <p class="mt_20">
                <img src="{{asset("/assets/home/images/app-ewm.png")}}" width="122" height="122"></p>
            <p>扫一扫即刻体验</p>
            <div class="reg_rfoot grey">
                没有账号？<a href="" class="orange">立即注册</a>
                <p class="mt_20">还可以使用以下方式登录</p>
                <p class="reg_www mt_20">
                    <a href="">
                        <i id="i1" class="iconfont">微博</i>
                    </a>
                    <a href="">
                        <i id="i2" class="iconfont">QQ</i>
                    </a>
                    <a href="">
                        <i id="i3" class="iconfont">微信</i>
                    </a>
                </p>
            </div>
        </div>
    </div>
@endsection