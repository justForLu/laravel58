@extends('home.layout.base')

@section('styles')
    <link rel="stylesheet" href="{{asset("/assets/home/css/style-fac.css")}}">
    <link rel="stylesheet" href="{{asset("/assets/home/css/share_style.css")}}">
@endsection

@section('content')
    <div class="breadcrumb">
        <ul class="section">
            <li>您现在的位置：</li>
            <li><a href="">首页</a> <span class="divider">&gt;</span></li>
            <li class="active">找工作</li>
        </ul>
    </div>
    <div class="fac_wrap wrap">
        <div class="section fac_filter">
            <div class="clearfix fac_filter_top">
                <div class="fac_filter_search">
                    <input type="text" placeholder="请输入企业、岗位关键字..." id="keyword" name="keyword" value="">
                    <a href="javascript:search_url(2, $(&#39;#keyword&#39;).val());" class="btn btn_orange btn_b">搜　索</a>
                </div>
            </div>
            <dl class="lists first">
                <dt class="titles">工资：</dt>
                <dd>
                    <label>
                        <input type="radio" checked class="salary" name="salary" value="0">
                        <div>不限</div>
                    </label>
                    <label>
                        <input type="radio" class="salary" name="salary" value="1">
                        <div>3000元以下</div>
                    </label>
                    <label>
                        <input type="radio" class="salary" name="salary" value="2">
                        <div>3000元-4000元</div>
                    </label>
                    <label>
                        <input type="radio" class="salary" name="salary" value="3">
                        <div>4000元-5000元</div>
                    </label>
                    <label>
                        <input type="radio" class="salary" name="salary" value="4">
                        <div>5000元-6000元</div>
                    </label>
                    <label>
                        <input type="radio" class="salary" name="salary" value="5">
                        <div>6000元以上</div>
                    </label>
                </dd>
            </dl>
            <dl class="lists">
                <dt class="titles">职位：</dt>
                <dd>
                    <label>
                        <input type="radio" checked class="position" name="position" value="0">
                        <div>不限</div>
                    </label>
                    @if($position)
                        @foreach($position as $v)
                            <label>
                                <input type="radio" class="position" name="position" value="{{$v['id']}}">
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
                                <input type="radio" class="label" name="label" value="{{$v['id']}}">
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
                        <li class="active"><a href="javascript:search_url(6, &#39;1,1&#39;);">默认排序</a></li>
                        <li><a href="javascript:search_url(6, &#39;2,1&#39;);">发布时间</a></li>
                        <li><a href="javascript:search_url(6, &#39;3,1&#39;);">招聘人数</a></li>
                    </ul>
                    <span class="nums">共为您找到<em>{{$list->total()}}</em>条信息</span>
                </div>
                <ul class="fac_list">
                    @foreach($list as $k => $data)
                        <li @if($k == 0) class="first" @endif>
                            <a href="{{url("/home/recruit/detail".$data->id.".html")}}" target="_blank" class="imgs">
                                <img src="{{$data->image}}" alt="{{$data->title}}" class="imgs">
                            </a>
                            <div class="cons">
                                <div class="names">
                                    <span class="prices"><em>{{$data->salary_up}}-{{$data->salary_down}}</em>元/月</span>
                                    <h4><a href="" target="_blank">{{$data->title}}</a></h4>
                                </div>
                                <p class="des">
                                    <a href="javascript:largeMap(&#39;118.379187&#39;, &#39;32.387349&#39;, &#39;安徽省滁州市琅琊区永阳路8号&#39;)" class="to_map">
                                        <i class="ic ic_fac_lmap"></i>电子地图
                                    </a>
                                    <span class="titles">招聘人数：</span>{{$data->num}}人 <span class="titles title2">企业规模：</span>{{$data->scale}}人<br>
                                    <span class="titles">招聘岗位：</span>{{$data->posts}}<br>
                                    <span class="titles">招聘要求：</span>@if($data->edu_ask) {{$data->edu_ask}} @endif<i class="line"></i>
                                        @if($data->sex_ask) {{$data->sex_ask}} <i class="line"></i>@endif @if($data->age_ask) {{$data->age_ask}} <i class="line"></i> @endif
                                </p>
                                <p class="fac_tag">
                                    <a href="{{url("/home/recruit/detail".$data->id.".html")}}" target="_blank" class="to_fac btn btn_blue btn_m btn_round">查看</a>
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
                        <li><a href="" target="_blank">长沙知名大型电子厂 （5500--6500元/月）</a></li>
                        <li><a href="" target="_blank">滁州电子有限公司 （5000--5500元/月）</a></li>
                        <li><a href="" target="_blank">联滔电子（昆山）有限公司（5500--6000元/月）</a></li>
                        <li><a href="" target="_blank">华宝（南京）科技有限公司（5000--6000元/月）</a></li>
                        <li><a href="" target="_blank">淳华科技（昆山）有限公司（4500--5500元/月）</a></li>
                    </ul>
                </div><!-- 报名排行榜 -->
                <div class="fac_rank fac_rlist">
                    <div class="ner_title">
                        <i class="ic_line ic_ner_t"></i>
                        <h3>报名排行榜</h3>
                    </div>
                    <ul id="fac_rank">
                        <li class="tops">
                            <a href="" target="_blank" class="hover">
                                <img src="{{asset("/assets/home/images/store.jpg")}}" alt="">
                                <div class="cons">
                                    <p><span class="eqs">1</span>天津市金桥焊材集团有限公司</p>
                                    <span class="nums">已报名3035人</span>
                                </div>
                            </a>
                        </li>
                        <li class="tops">
                            <a href="" target="_blank">
                                <img src="{{asset("/assets/home/images/store.jpg")}}" alt="">
                                <div class="cons">
                                    <p><span class="eqs">2</span>天津市金桥焊材集团有限公司</p>
                                    <span class="nums">已报名3035人</span>
                                </div>
                            </a>
                        </li>
                        <li class="tops">
                            <a href="" target="_blank">
                                <img src="{{asset("/assets/home/images/store.jpg")}}" alt="">
                                <div class="cons">
                                    <p><span class="eqs">3</span>天津市金桥焊材集团有限公司</p>
                                    <span class="nums">已报名3035人</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="" target="_blank">
                                <img src="{{asset("/assets/home/images/store.jpg")}}" alt="">
                                <div class="cons">
                                    <p><span class="eqs">4</span>天津市金桥焊材集团有限公司</p>
                                    <span class="nums">已报名3035人</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="" target="_blank">
                                <img src="{{asset("/assets/home/images/store.jpg")}}" alt="">
                                <div class="cons">
                                    <p><span class="eqs">5</span>天津市金桥焊材集团有限公司</p>
                                    <span class="nums">已报名3035人</span>
                                </div>
                            </a>
                        </li>
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
                <li>
                    <a href="" class="imgs" target="_blank">
                        <img src="{{asset("/assets/home/images/shop1.jpg")}}" alt="常州瑞声">
                    </a>
                    <div class="con">
                        <a href="" target="_blank" class="name">常州瑞声</a>
                        <p class="des">
                            男女不限<i class="line"></i> 18-40岁
                        </p>
                        <p class="price">￥5500-6500元/月</p>
                    </div>
                </li>
                <li>
                    <a href="" class="imgs" target="_blank">
                        <img src="{{asset("/assets/home/images/shop2.jpg")}}" alt="立讯精密工业（滁州）有限公司">
                    </a>
                    <div class="con">
                        <a href="" target="_blank" class="name">立讯精密工业（滁州）有限公司</a>
                        <p class="des">
                            男:16-40岁&nbsp;女:16-45岁
                        </p>
                        <p class="price">￥6000-7000元/月</p>
                    </div>
                </li>
                <li>
                    <a href="" class="imgs" target="_blank">
                        <img src="{{asset("/assets/home/images/shop3.jpg")}}" alt="昆山淳华">
                    </a>
                    <div class="con">
                        <a href="" target="_blank" class="name">昆山淳华</a>
                        <p class="des">
                            男女不限<i class="line"></i> 16-40岁
                        </p>
                        <p class="price">￥4000-5000元/月</p>
                    </div>
                </li>
                <li>
                    <a href="" class="imgs" target="_blank">
                        <img src="{{asset("/assets/home/images/shop4.jpg")}}" alt="华宝（南京）科技有限公司">
                    </a>
                    <div class="con">
                        <a href="" target="_blank" class="name">华宝（南京）科技有限公司</a>
                        <p class="des">
                            男:18-40岁&nbsp;女:18-45岁
                        </p>
                        <p class="price">￥7000-7500元/月</p>
                    </div>
                </li>
                <li>
                    <a href="" class="imgs" target="_blank">
                        <img src="{{asset("/assets/home/images/shop5.jpg")}}" alt="山东歌尔声学股份有限公司">
                    </a>
                    <div class="con">
                        <a href="" target="_blank" class="name">山东歌尔声学股份有限公司</a>
                        <p class="des">
                            男女不限<i class="line"></i> 16-42岁
                        </p>
                        <p class="price">￥4500-5500元/月</p>
                    </div>
                </li>
            </ul>
        </div>
        <div class="store_recom section">
            <div class="fac_title">
                <i class="line"></i>
                <h3>选择附近的门店报名</h3>
            </div>
            <ul class="store_recom_list">
                <li>
                    <a href="">
                        <div class="imgs">
                            <img src="{{asset("/assets/home/images/shop1.jpg")}}">
                        </div>
                        <div class="con">
                            <span class="name">工立方尉氏县就业服务站</span>
                            <p><i class="ic ic_ind_address"></i>尉氏县汽车北站红绿灯北50路西</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="imgs">
                            <img src="{{"/assets/home/images/shop2.jpg"}}">
                        </div>
                        <div class="con">
                            <span class="name">工立方大营镇就业服务站</span>
                            <p><i class="ic ic_ind_address"></i>尉氏大营乡黄家村</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="imgs">
                            <img src="{{asset("/assets/home/images/shop3.jpg")}}">
                        </div>
                        <div class="con">
                            <span class="name">工立方庄头乡就业服务站</span>
                            <p><i class="ic ic_ind_address"></i>尉氏县庄头镇陈家村县道017路边</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="imgs">
                            <img src="{{asset("/assets/home/images/shop4.jpg")}}">
                        </div>
                        <div class="con">
                            <span class="name">工立方蔡庄镇就业服务站</span>
                            <p><i class="ic ic_ind_address"></i>尉氏县蔡庄镇一中东临</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="imgs">
                            <img src="{{asset("/assets/home/images/shop5.jpg")}}">
                        </div>
                        <div class="con">
                            <span class="name">工立方朱曲镇就业服务站</span>
                            <p><i class="ic ic_ind_address"></i>朱曲镇西桥往西160米</p>
                        </div>
                    </a>
                </li>
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
        })
    </script>

@endsection

