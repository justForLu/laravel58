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

            <div class="reg_lhead font_18"><a class="cur">手机注册</a></div>
            <form role="form" action="{{url("/home/register")}}" method="post" class="J_ajaxForm" id="form">
                <table class="reg_lcont font_16" cellspacing="20">
                    <tbody>
                    <tr>
                        <td class="reg_label">手机号</td>
                        <td>
                            <input type="text" name="mobile" class="reg_input" placeholder="请输入手机号">
                        </td>
                        <td class="reg_tip">请输入手机号</td>
                    </tr>
{{--                    <tr>--}}
{{--                        <td class="reg_label">验证码</td>--}}
{{--                        <td>--}}
{{--                            <input type="text" name="verify" placeholder="输入验证码" class="reg_input3" id="inputVerify">--}}
{{--                            <div class="right">--}}
{{--                                <img src="./【电子厂招聘_普工招工网_工厂直招信息平台】-工立方打工网_files/regSms_.html" onclick="refreshVerify()" height="47" style="cursor:pointer;" id="imgVerify" data-ajax="/Public/checkCode.html">--}}
{{--                            </div>--}}
{{--                        </td>--}}
{{--                        <td class="reg_tip">输入图片验证码</td>--}}
{{--                    </tr>--}}
{{--                    <tr>--}}
{{--                        <td class="reg_label">短信验证码</td>--}}
{{--                        <td>--}}
{{--                            <input type="text" name="code" class="left reg_input2" placeholder="输入短信验证码">--}}
{{--                            <span class="left reg_getCode send-sms" data-ajax="/Sms/regSend.html">获取验证码</span>--}}
{{--                        </td>--}}
{{--                        <td class="reg_tip">点击获取短信验证码</td>--}}
{{--                    </tr>--}}
                    <tr>
                        <td class="reg_label">请输入密码</td>
                        <td>
                            <input type="password" name="password" class="reg_input" placeholder="输入密码">
                        </td>
                        <td class="reg_tip">密码(6-20位字母与数字组合)</td>
                    </tr>
                    <tr>
                        <td class="reg_label">确认密码</td>
                        <td>
                            <input type="password" name="password_confirmation" class="reg_input" placeholder="输入确认密码">
                        </td>
                        <td class="reg_tip">输入确认密码</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td class="grey">
                            <label>
                                <input type="checkbox" name="agreement" onchange="agreeInput()" value="1" checked="">点击注册表示您已经阅读并同意
                            </label>
                            <a href="javascript:agreement(&#39;/Login/agreement.html&#39;)" data-href="" style="color:#3a84cf;">《工立方用户协议》</a>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td class="grey">
                            <button type="submit" class="reg_btn mt_30 J_ajax_submit_btn" id="regbtn">注册</button>
                        </td>
                        <td></td>
                    </tr>
                    </tbody>
                </table>
            </form>

        </div>

        <div class="right reg_right ta_center">
            <p class="mt_50 orange bold font_18">下载工立方APP</p>
            <p>手机报名 入职速度快50%</p>
            <p class="mt_20"><img src="./【电子厂招聘_普工招工网_工厂直招信息平台】-工立方打工网_files/app-ewm.png" width="122" height="122"></p>
            <p>扫一扫即刻体验</p>
            <div class="reg_rfoot grey">
                已有账号？<a href="http://www.gonglf.com/Login/index.html" class="orange">立即登录</a>
                <p class="mt_20">还可以使用以下方式登录</p>
                <p class="reg_www mt_20">
                    <a href="https://api.weibo.com/oauth2/authorize?display=&amp;redirect_uri=http%3A%2F%2Fwww.gonglf.com%2FLogin%2Fcallback%3Fauth_type%3D3&amp;state=cfda162b43eeec9709015251a19fb37c&amp;client_id=3631661381"><i
                                id="i1" class="iconfont"></i></a>
                    <a href="https://graph.qq.com/oauth2.0/authorize?response_type=code&amp;redirect_uri=http%3A%2F%2Fwww.gonglf.com%2FLogin%2Fcallback%3Fauth_type%3D2&amp;state=b18bed1621278052483b7c1f3f6d9c92&amp;client_id=101429543"><i
                                id="i2" class="iconfont"></i></a>
                    <a href="https://open.weixin.qq.com/connect/qrconnect?response_type=code&amp;scope=snsapi_login&amp;redirect_uri=http%3A%2F%2Fwww.gonglf.com%2FLogin%2Fcallback%3Fauth_type%3D1&amp;state=926077bca08e6e3313694b604650ee0e&amp;appid=wxf8b5e4422720d698#wechat_redirect"><i
                                id="i3" class="iconfont"></i></a>
                </p>
            </div>
        </div>
    </div>
@endsection