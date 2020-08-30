@extends('home.layout.base')

@section('styles')
    <link rel="stylesheet" href="{{asset("/assets/home/css/style-fac.css")}}">
    <link rel="stylesheet" href="{{asset("/assets/home/css/share_style.css")}}">
@endsection

@section('content')
    <div class="breadcrumb">
        <ul class="section">
            <li>您现在的位置：</li>
            <li><a href="{{url("/home/index.html")}}">首页</a> <span class="divider">&gt;</span></li>
            <li class="active">找工作</li>
        </ul>
    </div>
    <div class="fac_wrap wrap">
        <div class="section fac_filter">
            <div class="clearfix fac_filter_top">
                <div class="fac_filter_search">
                    <form action="{{url("/home/recruit/index.html")}}" method="get">
                        <input type="hidden" class="salary_val" name="salary_val" value="@if(isset($params['salary_val'])) {{$params['salary_val']}} @else 0 @endif">
                        <input type="hidden" class="position_val" name="position_val" value="@if(isset($params['position_val'])) {{$params['position_val']}} @else 0 @endif">
                        <input type="hidden" class="label_val" name="label_val" value="@if(isset($params['label_val'])) {{$params['label_val']}} @else 0 @endif">
                        <input type="hidden" class="sort_val" name="sort_val" value="@if(isset($params['sort_val'])) {{$params['sort_val']}} @else 0 @endif">
                        <input type="text" placeholder="请输入企业关键字..." id="keyword" name="keyword" value="@if(isset($params['keyword'])){{$params['keyword']}}@endif">
                        <button type="submit" class="btn btn_orange btn_b">搜　索</button>
                    </form>
                </div>
            </div>
            <dl class="lists first">
                <dt class="titles">工资：</dt>
                <dd>
                    <label>
                        <input type="radio" @if(!isset($params['salary_val']) || empty($params['salary_val'])) checked @endif class="salary" name="salary" value="0">
                        <div>不限</div>
                    </label>
                    <label>
                        <input type="radio" @if(isset($params['salary_val']) && $params['salary_val'] == 1) checked @endif class="salary" name="salary" value="1">
                        <div>3000元以下</div>
                    </label>
                    <label>
                        <input type="radio" @if(isset($params['salary_val']) && $params['salary_val'] == 2) checked @endif class="salary" name="salary" value="2">
                        <div>3000元-4000元</div>
                    </label>
                    <label>
                        <input type="radio" @if(isset($params['salary_val']) && $params['salary_val'] == 3) checked @endif class="salary" name="salary" value="3">
                        <div>4000元-5000元</div>
                    </label>
                    <label>
                        <input type="radio" @if(isset($params['salary_val']) && $params['salary_val'] == 4) checked @endif class="salary" name="salary" value="4">
                        <div>5000元-6000元</div>
                    </label>
                    <label>
                        <input type="radio" @if(isset($params['salary_val']) && $params['salary_val'] == 5) checked @endif class="salary" name="salary" value="5">
                        <div>6000元以上</div>
                    </label>
                </dd>
            </dl>
            <dl class="lists">
                <dt class="titles">职位：</dt>
                <dd>
                    <label>
                        <input type="radio" @if(!isset($params['position_val']) || empty($params['position_val'])) checked @endif class="position" name="position" value="0">
                        <div>不限</div>
                    </label>
                    @if($position)
                        @foreach($position as $v)
                            <label>
                                <input type="radio" @if(isset($params['position_val']) && $params['position_val'] == $v['id']) checked @endif class="position" name="position" value="{{$v['id']}}">
                                <div>{{$v['name']}}</div>
                            </label>
                        @endforeach
                    @endif
                </dd>
            </dl>
            <dl class="lists">
                <dt class="titles">福利：</dt>
                <dd>
                    <label>
                        <input type="radio" checked class="label" name="label" value="0">
                        <div>不限</div>
                    </label>
                    @if($label)
                        @foreach($label as $v)
                            <label>
                                <input type="radio" @if(isset($params['label_val']) && $params['label_val'] == $v['id']) checked @endif class="label" name="label" value="{{$v['id']}}">
                                <div>{{$v['name']}}</div>
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
                        <li @if(!isset($params['sort_val']) || (isset($params['sort_val']) && $params['sort_val'] == 0)) class="active" @endif><a class="sort" data-sort="0">默认排序</a></li>
                        <li @if(isset($params['sort_val']) && $params['sort_val'] == 1) class="active" @endif><a class="sort" data-sort="1">发布时间</a></li>
                        <li @if(isset($params['sort_val']) && $params['sort_val'] == 2) class="active" @endif><a  class="sort" data-sort="2">招聘人数</a></li>
                    </ul>
                    <span class="nums">共为您找到<em>{{$list->total()}}</em>条信息</span>
                </div>
                <ul class="fac_list">
                    @foreach($list as $k => $data)
                        <li @if($k == 0) class="first" @endif>
                            <a href="{{url("/home/recruit/detail/".$data->id.".html")}}" target="_blank" class="imgs">
                                <img src="{{$data->factory->image}}" alt="{{$data->title}}" class="imgs">
                            </a>
                            <div class="cons">
                                <div class="names">
                                    <span class="prices"><em>{{$data->salary_up}}-{{$data->salary_down}}</em>元/月</span>
                                    <h4><a href="{{url("/home/recruit/detail/".$data->id.".html")}}" target="_blank">{{$data->title}}</a></h4>
                                </div>
                                <p class="des">
                                    <a href="javascript:largeMap(&#39;{{$data->factory->longitude}}&#39;, &#39;{{$data->factory->latitude}}&#39;, &#39;{{$data->factory->address}}&#39;)" class="to_map">
                                        <i class="ic ic_fac_lmap"></i>电子地图
                                    </a>
                                    <span class="titles">招聘人数：</span>{{$data->num}}人 <span class="titles title2">企业规模：</span>{{$data->factory->scale}}人<br>
                                    <span class="titles">招聘岗位：</span>@if($data->posts_arr) @foreach($data->posts_arr as $v) <span class="tp">{{$v['name']}}</span> @endforeach @endif<br>
                                    <span class="titles">招聘要求：</span>@if($data->edu_ask) {{$data->edu_ask}} @endif<i class="line"></i>
                                        @if($data->sex_ask) {{$data->sex_ask}} <i class="line"></i>@endif @if($data->age_ask) {{$data->age_ask}} <i class="line"></i> @endif
                                </p>
                                <p class="fac_tag">
                                    <a href="{{url("/home/recruit/detail/".$data->id.".html")}}" target="_blank" class="to_fac btn btn_blue btn_m btn_round">查看</a>
                                    @if($data->label_arr)
                                        @foreach($data->label_arr as $v)
                                            <em>{{$v['name']}}</em>
                                        @endforeach
                                    @endif
                                </p>
                            </div>
                        </li>
                    @endforeach
                </ul>
                @include('home.public.pages')
            </div>
            <div class="s_r"><!-- 热招企业 -->
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
                </div><!-- 报名排行榜 -->
                <div class="fac_rank fac_rlist">
                    <div class="ner_title">
                        <i class="ic_line ic_ner_t"></i>
                        <h3>报名排行榜</h3>
                    </div>
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
                </div><!-- 最近浏览 -->
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
    <script type="text/javascript">
        //排行榜样式调整
        $("#fac_rank>li>a").hover(function(){
            $("#fac_rank>li>a").removeClass();
            $(this).addClass('hover');
        });
        //点击筛选
        $(".salary").on('click', function () {
            $(".salary").removeClass();
            $(this).attr("class","active");
            var salary = $("input[name='salary']:checked").val();
            $(".salary_val").val(salary);
            var position = $("input[name='position']:checked").val();
            var label = $("input[name='label']:checked").val();
            var sort_val = $(".sort_val").val();

            var url = "/home/recruit/index.html?salary_val="+salary+"&position_val="+position+"&label_val="+label+"&sort_val="+sort_val;
            window.location.href = url;
        });
        $(".position").on('click', function () {
            $(".position").removeClass();
            $(this).attr("class","active");
            var salary = $("input[name='salary']:checked").val();
            var position = $("input[name='position']:checked").val();
            $(".position_val").val(position);
            var label = $("input[name='label']:checked").val();
            var sort_val = $(".sort_val").val();

            var url = "/home/recruit/index.html?salary_val="+salary+"&position_val="+position+"&label_val="+label+"&sort_val="+sort_val;
            window.location.href = url;
        });
        $(".label").on('click', function () {
            $(".label").removeClass();
            $(this).attr("class","active");
            var salary = $("input[name='salary']:checked").val();
            var position = $("input[name='position']:checked").val();
            var label = $("input[name='label']:checked").val();
            $(".label_val").val(label);
            var sort_val = $(".sort_val").val();

            var url = "/home/recruit/index.html?salary_val="+salary+"&position_val="+position+"&label_val="+label+"&sort_val="+sort_val;
            window.location.href = url;
        });
        $("#fac_list_tab li a").on('click', function () {
            var salary = $("input[name='salary']:checked").val();
            var position = $("input[name='position']:checked").val();
            var label = $("input[name='label']:checked").val();
            var sort_val = $(this).data("sort");

            var url = "/home/recruit/index.html?salary_val="+salary+"&position_val="+position+"&label_val="+label+"&sort_val="+sort_val;
            window.location.href = url;
        });

    </script>
@endsection

