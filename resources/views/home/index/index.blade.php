@extends('home.layout.base')

@section('styles')
    <link rel="stylesheet" href="{{asset("/assets/home/css/style-index.css")}}">
@endsection

@section('content')
    <div class="banner">
        <div class="slide">
            <ul class="pics">
                @if($banner_arr)
                    @foreach($banner_arr as $v)
                        <li style="background:url({{$v['image']}}) center top no-repeat;">
                            <a href="{{$v['link']}}" target="_blank" class="slide_a" title="{{$v['alt']}}"></a>
                        </li>
                    @endforeach
                @endif
            </ul>
            <div class="section slide_nav">
                <div class="num">
                    @if($banner_arr)
                        @foreach($banner_arr as $v)
                            <span></span>
                        @endforeach
                    @endif
                </div>
            </div>
        </div>
    </div>

    <div class="section">
        <ul class="ind_quick">
            <li>
                <a href="{{url("/home/recruit/index.html")}}">
                    <em>找工作</em>知名企业任您挑<br>100%优质的真实岗位等你入职
                    <span class="quick_ico ico1"></span><i>挑岗位</i>
                </a>
            </li>
            <li>
                <a href="{{url("/home/shop/index.html")}}">
                    <em>门店服务</em>服务就在家门口<br>全国800余家门店，时刻准备为您服务
                    <span class="quick_ico ico2"></span><i>去咨询</i>
                </a>
            </li>
            <li>
                <a href="javascript:void(0);" id="btn_join_layer">
                    <em>报名有奖</em>报名入职有大奖<br>在线报名还能领取现金大奖
                    <span class="quick_ico ico3"></span><i>我要报名</i>
                </a>
            </li>
{{--            <li><a href="" id="btn_recom_layer">--}}
{{--                    <em>推荐有奖</em>推荐好友入职有大奖<br>单笔最高奖2000元，累计奖金无上限--}}
{{--                    <span class="quick_ico ico4"></span><i>我来推荐</i>--}}
{{--                </a>--}}
{{--            </li>--}}
        </ul>

        <div class="ii_list">
            <div class="ii_head">
                <div class="ii_key">
                    <a href="{{url("/home/recruit/index.html")}}" target="_blank">更多招聘 ></a>
                </div>
                <h2 class="ii_tit"><em>今日</em>热招</h2>
            </div>
            <ul class="ii_cont">
                @if($recruit_arr)
                    @foreach($recruit_arr as $v)
                        <li>
                            <div class="ii_pic">
                                <a href="{{url("/home/recruit/detail/".$v['id'].".html")}}" target="_blank">
                                    <img src="{{$v['factory']['image']}}" alt="{{$v['title']}}"/>
                                    <i class="ic_hot ic_ind_fachot"></i>
                                </a>
                            </div>
                            <div class="ii_con">
                                <a href="{{url("/home/recruit/detail/".$v['id'].".html")}}" target="_blank" class="name">{{$v['title']}}</a>
                                <p>招聘岗位：{{$v['posts']}}<br>
                                    招聘要求：@if($v['edu_ask']) {{$v['edu_ask']}}<i class="line"></i> @endif
                                    @if($v['sex_ask']) {{$v['sex_ask']}}<i class="line"></i> @endif
                                    @if($v['age_ask']) {{$v['age_ask']}} @endif <br>
                                    综合薪资：<span class="price">{{$v['salary_up']}}-{{$v['salary_down']}}元/月</span>
                                </p>
                            </div>
                        </li>
                    @endforeach
                @endif
            </ul>
        </div>

        <div class="ii_list">
            <div class="ii_head">
                <div class="ii_key">
                    <div class="ii_key">
                        <a href="{{url("/home/shop/index.html")}}" target="_blank">更多企业 ></a>
                    </div>
                </div>
                <h2 class="ii_tit"><em>推荐</em>企业</h2>
            </div>
            <ul class="ii_cont">
                @if($recommend_arr)
                    @foreach($recommend_arr as $v)
                        <li>
                            <div class="ii_pic">
                                <a href="{{url("/home/recruit/detail/".$v['id'].".html")}}" target="_blank">
                                    <img src="{{$v['factory']['image']}}" alt="{{$v['title']}}"/></a>
                            </div>
                            <div class="ii_con">
                                <a href="{{url("/home/recruit/detail/".$v['id'].".html")}}" class="name" target="_blank">{{$v['title']}}</a>
                                <p>招聘岗位：{{$v['posts']}}<br>
                                    招聘要求：@if($v['edu_ask']) {{$v['edu_ask']}}<i class="line"></i> @endif
                                    @if($v['sex_ask']) {{$v['sex_ask']}}<i class="line"></i> @endif
                                    @if($v['age_ask']) {{$v['age_ask']}} @endif <br>
                                    综合薪资：<span class="price">{{$v['salary_up']}}-{{$v['salary_down']}}元/月</span>
                                </p>
                            </div>
                        </li>
                    @endforeach
                @endif
            </ul>
        </div>

        <div class="ii_list ii_store">
            <div class="ii_head">
                <div class="ii_key">
                    <a href="{{url("/home/shop/index.html")}}" target="_blank">更多门店 ></a>
                </div>
                <h2 class="ii_tit">
                    <em>门店</em>服务
                </h2>
            </div>
            <ul class="ii_cont">
                @if($shop_arr)
                    @foreach($shop_arr as $v)
                        <li class="t5">
                            <a href="{{url("/home/shop/detail/".$v['id'].".html")}}" target="_blank">
                                <div class="ii_pic">
                                    <img src="{{$v['image']}}" alt="{{$v['name']}}"/>
                                </div>
                                <div class="ii_con">
                                    <span class="name">{{$v['name']}}</span>
                                    <p>
                                        <i class="ic ic_ind_address"></i>{{$v['address']}}
                                    </p>
                                </div>
                            </a>
                        </li>
                    @endforeach
                @endif
            </ul>
        </div>

        <div class="index_item">
            <div class="ii_head">
                <h2 class="ii_tit"><em>新闻</em>资讯</h2>
            </div>
            <div class="ind_dggl" id="dgggl">
                <div class="dggl_left">
                    <div class="dggl_top">
                        @if($news_arr1)
                            @foreach($news_arr1 as $k => $v)
                                @if($k == 0)
                                    <a href="{{url("/home/news/detail/".$v['id'].".html")}}" target="_blank">
                                        <img src="{{$v['image']}}" alt="{{$v['title']}}"/>
                                    </a>
                                    <div class="con">
                                        <a href="{{url("/home/news/detail/".$v['id'].".html")}}" class="" target="_blank">{{$v['title']}}</a>
                                        <p class=""></p>
                                        <span class="times">{{$v['create_time']}}</span>
                                    </div>
                                @endif
                            @endforeach
                        @endif
                    </div>
                    <ul class="dggl_mid">
                        @if($news_arr1)
                            @foreach($news_arr1 as $k => $v)
                                @if($k > 0)
                                    <li>
                                        <a href="{{url("/home/news/detail/".$v['id'].".html")}}" class="">
                                            <img src="{{$v['image']}}" alt="{{$v['title']}}"/>
                                        </a>
                                        <div class="con">
                                            <a class="" href="{{url("/home/news/detail/".$v['id'].".html")}}" target="_blank">{{$v['title']}}</a>
                                            <span class="times">{{$v['create_time']}}</span>
                                        </div>
                                    </li>
                                @endif
                            @endforeach
                        @endif
                    </ul>
                </div>
                <div class="dggl_right">
                    <div class="news_video">
                    </div>
                    <div class="list_news">
                        <h3 class="ic ic_ind_stit">{{$category_name2}}</h3>
                        <ul class="">
                            @if($news_arr2)
                                @foreach($news_arr2 as $v)
                                    <li>
                                        <i class="ic_dot"></i>
                                        <a href="{{url("/home/news/detail/".$v['id'].".html")}}" target="_blank">{{$v['title']}}</a>
                                    </li>
                                @endforeach
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div style="height:0;overflow:hidden;">
        <div class="layer_join layers" id="layer_join">
            <p style="text-align: right">
                <span class="close_join" style="padding: 8px; color: #999;">关闭</span>
            </p>
            <p class="to_login">
                <a href="{{url("/home/login")}}">我是会员>></a>
            </p>
            <form action="{{url("/home/enroll/sign_up")}}" class="form form-horizontal J_ajaxForm">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                <input type="hidden" name="type" value="2" />
                <input type="hidden" name="user_id" value="{{$user_id}}" />
                <div class="form-item">
                    <label class="form-label" for="">姓名：</label>
                    <div class="form-field">
                        <input type="text" placeholder="请输入您的姓名" style="width: 60%;border: 1px solid #dadbdf;padding: 4px;height: 35px;line-height: 35px;border-radius: 4px;" name="name">
                    </div>
                </div>
                <div class="form-item">
                    <label class="form-label" for="">电话：</label>
                    <div class="form-field">
                        <input type="text" placeholder="请输入您的联系电话" style="width: 60%;border: 1px solid #dadbdf;padding: 4px;height: 35px;line-height: 35px;border-radius: 4px;"  name="mobile">
                    </div>
                </div>

                <div class="form-item">
                    <button type="submit" class="btn btn_b btn_orange J_ajax_submit_btn">确定</button>
                </div>
            </form>
        </div>
    </div>
@endsection

@section('scripts')
    <script src="{{asset("/assets/home/js/index.js")}}"></script>
    <script src="{{asset("/assets/home/js/tvp.player_v2_jq.js")}}"></script>
    <script type="text/javascript">
        $("#btn_join_layer").click(function () {
            $("#layer_join").css({"position": "fixed","bottom": "400px","left": "30%","background-color": "#fff","z-index": 99999999,"width": "40%","display":"block"});
        });
        $(".close_join").click(function () {
            $("#layer_join").hide();
            $(".layui-layer-shade").removeAttr("style");
            $(".layui-layer-shade").removeAttr("class");
        });
    </script>
@endsection


