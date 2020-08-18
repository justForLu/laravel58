@extends('home.layout.base')

@section('styles')
    <link rel="stylesheet" href="{{asset("/assets/home/css/user.css")}}">
@endsection

@section('content')
    <div class="user_top wrap">
        <div class="section">
            <div class="user_top_avt">
                <div class="imgs">
                    <img src="@if($userInfo->image) {{$userInfo->image}}  @else {{asset("/assets/home/images/default_user_img.png")}}  @endif" alt="">
                    <a href="" class="to_avt">
                        <i class="ic ic_avt_ico"></i>
                    </a>
                </div>
                <p>欢迎你，亲爱的 <em>{{$userInfo->nickname}}</em>！</p>
            </div>
            <div class="user_top_num">
                <a href="" class="nums">
                    消息<em>0</em>
                </a>
                <a href="" class="nums">
                    我的收藏<em>{{$count_collect}}</em>
                </a>
            </div>
        </div>
    </div>

    <div class="section user_main">
        <div class="s_l">
            <div class="user_left c_border">
                <ul class="user_left_nav">
                    <li @if($menu == 'message') class="active" @endif><a href="{{url("/home/user/message.html")}}"><i class="ic iconfont">&#xe652;</i>消息中心</a></li>
                    <li @if($menu == 'info') class="active" @endif><a href="{{url("/home/user/info.html")}}"><i class="ic iconfont">&#xe650;</i>我的资料</a></li>
{{--                    <li @if($menu == 'cash_out') class="active" @endif><a href="{{url("/home/user/cash_out.html")}}"><i class="ic iconfont">&#xe669;</i>提现资料</a></li>--}}
                    <li @if($menu == 'collect') class="active" @endif><a href="{{url("/home/user/collect_recruit.html")}}"><i class="ic iconfont">&#xe674;</i>我的收藏</a></li>
                    <li @if($menu == 'portrait') class="active" @endif><a href="{{url("/home/user/portrait.html")}}"><i class="ic iconfont">&#xe651;</i>头像设置</a></li>
                    <li @if($menu == 'account') class="active" @endif><a href="{{url("/home/user/account.html")}}"><i class="ic iconfont">&#xe63c;</i>帐号管理</a></li>
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
                    <span class="more more_tab">
                        <a href="{{url("/home/user/collect_recruit.html")}}" class="@if($type == '1') active @endif first">招工收藏</a>
                        <a href="{{url("/home/user/collect_shop.html")}}" class="@if($type == '2') active @endif">门店收藏</a>
                    </span>
                </div>
                <div class="c_border">
                    @if($list)
                        <ul class="list_collect">
                            @foreach($list as $k => $v)
                                <li class="li_shop @if($k == 0) first @endif">
                                    <a href="{{url("/home/shop/detail/".$v->shop['id'].".html")}}" target="_blank" class="imgs">
                                        <img src="{{$v->shop['image']}}" alt="{{$v->shop['name']}}" class="imgs">
                                    </a>
                                    <div class="cons">
                                        <div class="names">
                                            <a href="{{url("/home/shop/detail/".$v->shop['id'].".html")}}" target="_blank" class="to_store">门店详情 ></a>
                                            <h4><a href="{{url("/home/shop/detail/".$v->shop['id'].".html")}}" target="_blank">{{$v->shop['name']}}</a></h4>
                                        </div>
                                        <p class="des">
                                            <span class="titles">招聘岗位：</span><em class="nums">{{$v->shop['job_num']}}</em>个<br><span
                                                    class="titles">招聘企业：</span><span class="tp">招聘企业</span><br>
                                            <span class="titles">门店地址：</span>{{$v->shop['address']}} </p>
                                    </div>
                                </li>
                            @endforeach
                        </ul>
                        @include('home.public.pages')
                    @else
                    <!--暂无收藏信息-->
                    <ul class="c_border gz_list u_list" id="gz_list">
                        <li class="list_no">
                            <i class="ic iconfont"></i>
                            <p>暂无收藏信息！  </p>
                        </li>
                    </ul>

                    @endif
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


