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

    <div class="section user_main">
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
            <div class="user_msg">
                <div class="uc_title">
                    <i class="line"></i>
                    <h3>消息中心</h3>
                </div>
                <div class="c_border">
                    <h2 class="uc_title_msg">
                        全部消息
                    </h2>
                    <ul class="u_list">
                        <li class="list_no">
                            <i class="ic iconfont">&#xe70a;</i>
                            <p>暂无可查看消息~ </p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script src="{{asset("/assets/home/js/user.js")}}"></script>
@endsection


