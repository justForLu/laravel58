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
                            <a href="javascript:agreement(&#39;/Login/agreement.html&#39;)" data-href="" style="color:#3a84cf;">《好工人用户协议》</a>
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
            <p class="mt_20">
                <img src="{{asset("/assets/home/images/app-ewm.png")}}" width="122" height="122">
            </p>
            <p>扫一扫即刻体验</p>
            <div class="reg_rfoot grey">
                已有账号？<a href="{{url("/home/login")}}" class="orange">立即登录</a>
                <p class="mt_20">还可以使用以下方式登录</p>
                <p class="reg_www mt_20">
                    <a href="">
                        <img src="{{asset('/assets/home/images/weixin.png')}}" style="border: none;">
                    </a>
                    <a href="">
                        <img src="{{asset('/assets/home/images/qq.png')}}" style="border: none;">
                    </a>
                    <a href="">
                        <img src="{{asset('/assets/home/images/weibo.png')}}" style="border: none;">
                    </a>
                </p>
            </div>
        </div>
    </div>
@endsection
