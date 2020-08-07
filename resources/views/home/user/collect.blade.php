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
            <div class="user_collect">
                <div class="uc_title">
                    <i class="line"></i>
                    <h3>我的收藏</h3>
                    <span class="more"></span>
                </div>
                <div class="c_border">
                    <ul class="list_collect">
                        <li>
                            <a href="" class="img">
                                <img src="{{asset("/assets/home/images/shop1.jpg")}}" alt=""></a>
                            <div class="con">
                                <p class="names">
                                    <a href="" class="name">长沙知名大型电子厂</a>
                                    <a href="javascript:largeMap('113.415911', '28.224532', '长沙市浏阳市')" class="to_map"><i class="iconfont"></i>电子地图</a>
                                </p>
                                <p><span>企业规模：2000人</span><span>招聘岗位：长期工,小时工</span><span>招聘人数：500人</span></p>
                                <p>招聘要求：
                                    18-48岁，男女不限
                                </p>
                                <p>工厂特色：名企,工作轻松,空调宿舍</p>
                                <p>
                                    <em class="t_org">5500—6500元/月</em>
                                    <a href="" class="btn btn_m">查看</a>
                                </p>
                            </div>
                        </li>
                    </ul>
                    <!--暂无收藏信息-->
{{--                    <ul class="c_border gz_list u_list" id="gz_list">--}}
{{--                        <li class="list_no">--}}
{{--                            <i class="ic iconfont"></i>--}}
{{--                            <p>暂无收藏信息！  </p>--}}
{{--                        </li>--}}
{{--                    </ul>--}}
                </div>
            </div><br><br>
            <div class="uc_title">
                <i class="line"></i>
                <h3>大家都想去</h3>
            </div>

            <ul class="list_recom" id="mem_djxq">
                <li>
                    <a href="" class="img">
                        <img src="{{asset("/assets/home/images/shop1.jpg")}}" alt=""></a>
                    <div class="con">
                        <p class="name"><a href="">常州瑞声</a></p>
                        <p>年龄：
                            18-40岁，男女不限
                        </p>
                        <p>薪资：<em>5500-6500</em>元/月</p>
                    </div>
                </li>
                <li>
                    <a href="" class="img">
                        <img src="{{asset("/assets/home/images/shop2.jpg")}}" alt="">
                    </a>
                    <div class="con">
                        <p class="name"><a href="">立讯精密工业（滁州）有限公司</a></p>
                        <p>年龄：
                            男:16-40岁						女:16-45岁
                        </p>
                        <p>薪资：<em>6000-7000</em>元/月</p>
                    </div>
                </li>
                <li>
                    <a href="" class="img">
                        <img src="{{asset("/assets/home/images/shop3.jpg")}}" alt="">
                    </a>
                    <div class="con">
                        <p class="name"><a href="">昆山淳华</a></p>
                        <p>年龄：
                            16-40岁，男女不限
                        </p>
                        <p>薪资：<em>4000-5000</em>元/月</p>
                    </div>
                </li>
                <li>
                    <a href="" class="img"><img src="{{asset("/assets/home/images/shop4.jpg")}}" alt=""></a>
                    <div class="con">
                        <p class="name"><a href="">华宝（南京）科技有限公司</a></p>
                        <p>年龄：
                            男:18-40岁						女:18-45岁
                        </p>
                        <p>薪资：<em>7000-7500</em>元/月</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
@endsection

@section('scripts')
    <script src="{{asset("/assets/home/js/user.js")}}"></script>
@endsection


