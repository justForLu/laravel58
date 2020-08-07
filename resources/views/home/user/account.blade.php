@extends('home.layout.base')

@section('styles')
    <link rel="stylesheet" href="{{asset("/assets/home/css/user.css")}}">
@endsection

@section('content')
    <div class="user_top wrap">
        <div class="section">
            <div class="user_top_avt">
                <div class="imgs">
                    <img src="{{asset("/assets/home/images/default_user_img.png")}}" alt="">
                    <a href="" class="to_avt">
                        <i class="ic ic_avt_ico"></i>
                    </a>
                </div>
                <p>欢迎你，亲爱的 <em>工立方_0778</em>！</p>
            </div>
            <div class="user_top_num">
                <a href="" class="nums">
                    消息<em>0</em>
                </a>
                <a href="" class="nums">
                    我的推荐<em>0</em>
                </a>
                <a href="" class="nums">
                    我的收藏<em>0</em>
                </a>
            </div>
        </div>
    </div>

    <div class="user_main">
        <div class="section">
            <div class="s_l">
                <div class="user_left c_border">
                    <ul class="user_left_nav">
                        <li class="active"><a href=""><i class="ic iconfont">&#xe652;</i>消息中心</a></li>
                        <li><a href=""><i class="ic iconfont">&#xe650;</i>我的资料</a></li>
                        <li><a href=""><i class="ic iconfont">&#xe669;</i>提现资料</a></li>
                        <li><a href=""><i class="ic iconfont">&#xe669;</i>工资明细</a></li>
                        <li><a href=""><i class="ic iconfont">&#xe674;</i>我的收藏</a></li>
                        <li><a href=""><i class="ic iconfont">&#xe651;</i>头像设置</a></li>
                        <li><a href=""><i class="ic iconfont">&#xe63c;</i>帐号管理</a></li>
                    </ul>
                    <div class="user_lapp">
                        <img src="{{asset("/assets/home/images/weixin.jpg")}}" alt="">
                        扫描二维码，即可订阅岗位，<br>数万岗位随手可得
                    </div>
                </div>
            </div>

            <div class="s_r">
                <div class="uc_title">
                    <i class="line"></i>
                    <h3>账号管理</h3>
                    <span class="more more_tab">
                        <a href="javascript:void(0);" class="active first">修改密码</a>
                        <a href="">修改绑定手机</a>
                    </span>
                </div>
                <div class="c_border">
                    <form action=""  id="form" class="form form-horizontal uc_form">
                        <div class="form-item">
                            <label class="form-label" for="">当前密码：</label>
                            <div class="form-field">
                                <input type="password" placeholder="输入原密码" class="form-text" name="old_password">
                            </div>
                        </div>
                        <div class="form-item">
                            <label class="form-label" for="">新密码：</label>
                            <div class="form-field">
                                <input type="password" placeholder="输入新密码" class="form-text" name="password">
                            </div>
                        </div>
                        <div class="form-item">
                            <label class="form-label" for="">确认密码：</label>
                            <div class="form-field">
                                <input type="password" placeholder="再次输入新密码" class="form-text" name="repassword">
                            </div>
                        </div>
                        <div class="form-action  action-left">
                            <a href="javascript:void(0);" onclick="check()" class="btn btn_b btn_orange btn_round">确认</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection

@section('scripts')
    <script src="{{asset("/assets/home/js/user.js")}}"></script>
@endsection


