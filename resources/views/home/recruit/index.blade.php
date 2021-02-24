@extends('home.layout.base')

@section('styles')
    <link rel="stylesheet" href="{{asset("/assets/home/css/style-fac.css")}}">
    <link rel="stylesheet" href="{{asset("/assets/home/css/share_style.css")}}">
@endsection

@section('content')
    <div class="breadcrumb" style="text-align: center;height: 400px;">
        <img src="{{asset('/assets/home/images/job-banner.png')}}" style="width:1200px;height: 400px;">
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
                                <div class="names" style="text-align: left;">
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
                                <p class="fac_tag" style="text-align: left;">
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
                    <div class="ner_title">
                        <i class="ic_line ic_ner_t"></i>
                        <h3>工友推荐</h3>
                    </div>
                    <ul class="fac_hot_list">
                        @if($recruit_hot)
                            @foreach($recruit as $v)
                                <li><a href="{{url("/home/recruit/detail/".$v['id'].".html")}}" target="_blank">{{$v['factory']['name']}} （{{$v['salary_up']}}--{{$v['salary_down']}}元/月）</a></li>
                            @endforeach
                        @endif
                    </ul>
                </div>
            </div>
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

