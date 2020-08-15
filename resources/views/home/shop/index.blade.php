@extends('home.layout.base')

@section('styles')
    <link rel="stylesheet" href="{{asset("/assets/home/css/style-fac.css")}}">
@endsection

@section('content')
    <div class="breadcrumb">
        <ul class="section">
            <li>您现在的位置：</li>
            <li><a href="#">首页</a> <span class="divider">></span></li>
            <li class="active">找门店</li>
        </ul>
    </div>
    <div class="fac_wrap wrap">
        <div class="section fac_filter store_filter">
            <div class="clearfix fac_filter_top">
                <span class="titles">搜索服务门店</span>
                <div class="fac_filter_search">
                    <form id="search_form" action="{{url("/home/shop/index.html")}}" method="get">
                        <input type="text" placeholder="请输入搜索关键字" name="keyword" value="">
                        <button type="submit" class="btn btn_orange btn_b">搜　索</button>
                    </form>
                </div>
            </div>
            <dl class="lists first">
                <dt class="titles">地区选择：</dt>
                <dd>
                    <label>
                        <input type="radio" checked class="province" name="province" value="0">
                        <div>不限</div>
                    </label>
                    @if($province)
                        @foreach($province as $v)
                            <label>
                                <input type="radio" class="province" name="province" value="{{$v['id']}}">
                                <div>{{$v['title']}}</div>
                            </label>
                        @endforeach
                    @endif
                </dd>
            </dl>
            <!-- 根据站点获得一个默认城市列表 -->
            <dl class="lists">
                <dt class="titles">城市选择：</dt>
                <dd>
                    <label>
                        <input type="radio" checked class="city" name="city" value="0">
                        <div>不限</div>
                    </label>
                    @if($city)
                        @foreach($city as $v)
                            <label>
                                <input type="radio" class="city" name="city" value="{{$v['id']}}">
                                <div>{{$v['title']}}</div>
                            </label>
                        @endforeach
                    @endif
                </dd>
            </dl>
        </div>
        <div class="fac_main section clearfix">
            <div class="s_l fac_list_main">
                <div class="fac_list_tab">
                    <ul id="fac_list_tab">
                        <li class="active"><a href="javascript:void(0);">门店列表</a></li>
                    </ul>
                    <span class="nums">共为您找到<em>{{$list->total()}}</em>条信息</span>
                </div>
                <ul class="store_list">
                    @if($list)
                        @foreach($list as $k => $v)
                            <li @if($k == 0) class="first" @endif>
                                <a href="{{url("/home/shop/detail/".$v['id'].".html")}}" target="_blank" class="imgs">
                                    <img src="{{$v['image']}}" alt="{{$v['name']}}" class="imgs">
                                </a>
                                <div class="cons">
                                    <div class="names">
                                        <a href="{{url("/home/shop/detail/".$v['id'].".html")}}" target="_blank" class="to_store">门店详情 ></a>
                                        <h4><a href="{{url("/home/shop/detail/".$v['id'].".html")}}" target="_blank">{{$v['name']}}</a></h4>
                                    </div>
                                    <p class="des">
                                        <span class="titles">招聘岗位：</span><em class="nums">{{$v['job_num']}}</em>个<br><span
                                                class="titles">招聘企业：</span><span class="tp">招聘企业</span><br>
                                        <span class="titles">门店地址：</span>{{$v['address']}} </p>
                                </div>
                            </li>
                        @endforeach
                    @endif
                </ul>
                @include('home.public.pages')
            </div>
            <div class="s_r">
                <div class="fac_hot fac_rlist">
                    <h3 class="titles">
                        <i class="ic ic_fac_hottitle"></i>
                    </h3>
                    <ul class="fac_hot_list">
                        @if($recruit_hot)
                            @foreach($recruit as $v)
                                <li><a href="{{url("/home/recruit/detail/".$v['id'].".html")}}" target="_blank">{{$v['factory']['name']}} （{{$v['salary_up']}}--{{$v['salary_down']}}元/月）</a></li>
                            @endforeach
                        @endif
                    </ul>
                </div>
                <div class="fac_rank fac_rlist">
                    <div class="ner_title"><i class="ic_line ic_ner_t"></i>
                        <h3>报名排行榜</h3></div>
                    <ul id="fac_rank">
                        @if($factory_top)
                            @foreach($factory_top as $k => $v)
                                <li @if($k < 3) class="tops" @endif>
                                    <a href="{{url("/home/recruit/detail/".$v['recruit_id'].".html")}}" target="_blank" @if($k == 0) class="hover" @endif>
                                        <img src="{{$v['image']}}" alt="">
                                        <div class="cons">
                                            <p><span class="eqs">{{$k + 1}}</span>{{$v['name']}}</p>
                                            <span class="nums">已报名{{$v['sign_up']}}人</span>
                                        </div>
                                    </a>
                                </li>
                            @endforeach
                        @endif
                    </ul>
                </div>
                <div class="fac_vhistory fac_rlist">
                    <div class="ner_title">
                        <i class="ic_line ic_ner_t"></i>
                        <h3>最近浏览职位</h3>
                    </div>
                    <ul id="fac_vhistory">
                        <li class="first">
                            <a href="" target="_blank">
                                <img src="{{asset("/assets/home/images/store.jpg")}}"
                                     alt="滁州电子22元/小时">
                                <div class="cons">
                                    <p>滁州电子22元/小时</p>
                                    <p class="prices">￥5000-5500元/月</p>
                                </div>
                            </a>
                        </li>
                        <li class="first">
                            <a href="" target="_blank">
                                <img src="{{asset("/assets/home/images/store.jpg")}}"
                                     alt="滁州电子22元/小时">
                                <div class="cons">
                                    <p>滁州电子22元/小时</p>
                                    <p class="prices">￥5000-5500元/月</p>
                                </div>
                            </a>
                        </li>
                        <li class="first">
                            <a href="" target="_blank">
                                <img src="{{asset("/assets/home/images/store.jpg")}}"
                                     alt="滁州电子22元/小时">
                                <div class="cons">
                                    <p>滁州电子22元/小时</p>
                                    <p class="prices">￥5000-5500元/月</p>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="fac_recom section">
            <div class="fac_title">
                <i class="line"></i>
                <h3>大家都想去</h3>
            </div>
            <ul class="fac_recom_list">
                @if($recruit)
                    @foreach($recruit as $v)
                        <li>
                            <a href="{{url("/home/recruit/detail/".$v['id'].'.html')}}" class="imgs" target="_blank">
                                <img src="{{$v['factory']['image']}}" alt="{{$v['factory']['name']}}">
                            </a>
                            <div class="con">
                                <a href="{{url("/home/recruit/detail/".$v['id'].".html")}}" target="_blank" class="name">{{$v['factory']['name']}}</a>
                                <p class="des">
                                    @if($v['edu_ask']) {{$v['edu_ask']}}<i class="line"></i> @endif
                                    @if($v['sex_ask']) {{$v['sex_ask']}}<i class="line"></i> @endif
                                    @if($v['age_ask']) {{$v['age_ask']}} @endif
                                </p>
                                <p class="price">￥{{$v['salary_up']}}-{{$v['salary_down']}}元/月</p>
                            </div>
                        </li>
                    @endforeach
                @endif
            </ul>
        </div>
        <div class="store_recom section">
            <div class="fac_title">
                <i class="line"></i>
                <h3>选择附近的门店报名</h3>
            </div>
            <ul class="store_recom_list">
                @if($shop)
                    @foreach($shop as $v)
                        <li>
                            <a href="{{url("/home/shop/detail/".$v['id'].".html")}}">
                                <div class="imgs">
                                    <img src="{{$v['image']}}">
                                </div>
                                <div class="con">
                                    <span class="name">{{$v['name']}}</span>
                                    <p><i class="ic ic_ind_address"></i>{{$v['address']}}</p>
                                </div>
                            </a>
                        </li>
                    @endforeach
                @endif
            </ul>
        </div>
    </div>
@endsection

@section('scripts')
    <script src="{{asset("/assets/home/js/fac.js")}}"></script>
    <script src="{{asset("/assets/home/js/push.js")}}"></script>
@endsection


