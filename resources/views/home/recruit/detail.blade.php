@extends('home.layout.base')

@section('styles')
    <link rel="stylesheet" href="{{asset("/assets/home/css/style-fac.css")}}">
    <link rel="stylesheet" href="{{asset("/assets/home/css/share_style.css")}}">
@endsection

@section('content')
    <div class="breadcrumb">
        <ul class="section">
            <li>您现在的位置：</li>
            <li><a href="{{url("/home/index.html")}}" >首页</a> <span class="divider">></span></li>
            <li><a href="{{url("/home/recruit.html")}}">找工作</a> <span class="divider">></span></li>
            <li class="active">{{$data->factory->name}}</li>
        </ul>
    </div>
    <div class="fac_wrap wrap">
        <div class="section">
            <div class="fac_top clearfix">
                <div class="fac_imgshow fac_imgswiper" id="fac_imgshow">
                    <div class="view">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                @if($data->picture_path)
                                    @foreach($data->picture_path as $pic)
                                        <div class="swiper-slide">
                                            <a href="javascript:void(0);" >
                                                <img src="{{$pic}}" alt="">
                                                <span class="fix_opt">共{{$count_pic}}张照片</span>
                                            </a>
                                        </div>
                                    @endforeach
                                @endif
                            </div>
                        </div>
                    </div>
                    <div class="preview">
                        <a class="arrow-left ic_fac_arrowl" href="javascript:void(0);"></a>
                        <a class="arrow-right ic_fac_arrowr" href="javascript:void(0);"></a>
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                @if($data->picture_path)
                                    @foreach($data->picture_path as $pic)
                                        <div class="swiper-slide active-nav">
                                            <img src="{{$pic}}" alt="">
                                        </div>
                                    @endforeach
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
                <div class="fac_top_info">
                    <div class="fac_top_acts">
                        <a href="javascript:collect_func();" class="btn_collect @if($is_collect) hover @endif" id="collect" data-collect="{{$is_collect}}" data-type="2" data-userid="{{$user_id}}" data-id="{{$data->id}}" title="点击收藏">
                            <i class="ic ic_fac_collect"></i>
                            <i class="ic ich ic_fac_collect_hover"></i>
                            <span class="collect-info">@if($is_collect)取消收藏@else收藏@endif</span>
                        </a>
                    </div>
                    <p class="names"><span class="tag_need">直招</span>{{$data->title}}</p>
                    <p class="des prices"><span class="titles">综合薪资：</span>￥{{$data->salary_up}}-{{$data->salary_down}}元/月</p>
                    <p class="fac_tag">
                        @if($data->label_arr)
                            @foreach($data->label_arr as $v)
                                <em>{{$v['name']}}</em>
                            @endforeach
                        @endif
                    </p>
                    <p class="des">
                        <span class="titles">招聘人数：</span>{{$data->num}}人
                        <span class="des_not"><i class="ic ic_fac_joined"></i>已有<em>{{$count_enroll}}人</em>报名</span><br>
                        <span class="titles">要　　求：</span>
                        @if($data->edu_ask) {{$data->edu_ask}} <i class="line"></i>@endif
                        @if($data->sex_ask) {{$data->sex_ask}} <i class="line"></i>@endif
                        @if($data->age_ask) {{$data->age_ask}} <i class="line"></i>@endif<br>
                        <span class="titles">上班地址：</span>{{$data->factory->address}}
                        <a href="javascript:largeMap('{{$data->factory->longitude}}', '{{$data->factory->latitude}}', '{{$data->factory->address}}')" class="des_not">
                            <i class="ic ic_fac_address"></i>电子地图
                        </a>
                    </p>
                    <div class="fac_top_phone">
                        <span class="phones" id="service_phone">
                            <i class="ic ic_fac_numtitle"></i>
                            @if($data->factory->mobile)
                                {{$data->factory->mobile}}
                            @elseif($data->factory->phone)
                                {{$data->factory->phone}}
                            @else
                                获取服务热线中...
                            @endif
                        </span>
                        <a href="javascript:void(0);" id="btn_join_layer1" class="btn btn_b btn_round btn_orange btn_join_layer">我要报名</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="fac_main section clearfix">
            <div class="s_l">
                <div class="fac_main_info">
                    <div class="fac_salary">
                        <div class="fac_title">
                            <em class="lines"></em>
                            <i class="ic ic_fac_t1"></i>
                            <h3>工资待遇</h3>
                        </div>
                        <table width="100%" class="salary_con" style="display: table;" cellpadding="10">
                            <tbody>
                            @if($data->salary_up || $data->salary_down)
                                <tr class="t1">
                                    <th>综合工资</th>
                                    <td>
                                        <span class="prices">￥{{$data->salary_up}}-{{$data->salary_down}}元/月</span>
                                    </td>
                                </tr>
                            @endif
                            @if($data->hourly)
                                <tr class="t1">
                                    <th>小时工</th>
                                    <td>
                                        <span class="prices">{{$data->hourly}}元/小时</span>
                                    </td>
                                </tr>
                            @endif
                            @if($data->base_salary)
                                <tr class="t1">
                                    <th>基本月薪</th>
                                    <td>
                                        <span class="prices">{{$data->base_salary}}元/月</span>
                                    </td>
                                </tr>
                            @endif
                            @if($data->payday)
                                <tr class="t1">
                                    <th>发薪日</th>
                                    <td>{{$data->payday}}</td>
                                </tr>
                            @endif
                            @if($data->food_sub)
                                <tr class="t1">
                                    <th>餐补</th>
                                    <td>{{$data->food_sub}}</td>
                                </tr>
                            @endif
                            @if($data->put_up)
                                <tr class="">
                                    <th>住宿</th>
                                    <td>
                                        {{$data->put_up}}
                                    </td>
                                </tr>
                            @endif
                            @if($data->insure)
                                <tr class="">
                                    <th>保险</th>
                                    <td>
                                        {{$data->insure}}
                                    </td>
                                </tr>
                            @endif
                            @if($data->remark)
                                <tr class="">
                                    <th>备注</th>
                                    <td>{{$data->remark}}</td>
                                </tr>
                            @endif
                            </tbody>
                        </table>
                    </div>
                    <div class="fac_salary fac_des">
                        <div class="fac_title">
                            <em class="lines"></em>
                            <i class="ic ic_fac_t2"></i>
                            <h3>招聘要求</h3>
                        </div>
                        <table width="100%" cellspacing="0" cellpadding="10">
                            <tbody>
                            @if($data->edu_ask)
                                <tr>
                                    <th>学历要求</th>
                                    <td>
                                        {{$data->edu_ask}}
                                    </td>
                                </tr>
                            @endif
                            @if($data->sex_ask || $data->age_ask)
                                <tr>
                                    <th>年龄要求</th>
                                    <td>
                                        @if($data->sex_ask)
                                            {{$data->sex_ask}}<i class="line"></i>
                                        @endif
                                        @if($data->age_ask)
                                            {{$data->age_ask}}
                                        @endif
                                    </td>
                                </tr>
                            @endif
                            @if($data->other_ask)
                                <tr>
                                    <th>其他要求</th>
                                    <td>
                                        {{$data->other_ask}}
                                    </td>
                                </tr>
                            @endif
                            @if($data->tasks)
                                <tr>
                                    <th>工作内容</th>
                                    <td>
                                        {{$data->tasks}}
                                    </td>
                                </tr>
                            @endif
                            @if($data->job_desc)
                                <tr>
                                    <th>岗位说明</th>
                                    <td>
                                        {{$data->job_desc}}
                                    </td>
                                </tr>
                            @endif
                            @if($data->id_card)
                                <tr>
                                    <th>身份证要求</th>
                                    <td>
                                        {{$data->id_card}}
                                    </td>
                                </tr>
                            @endif
                            @if($data->interview)
                                <tr>
                                    <th>面试材料</th>
                                    <td>
                                        {{$data->interview}}
                                    </td>
                                </tr>
                            @endif
                            @if($data->physical)
                                <tr>
                                    <th>体检</th>
                                    <td>
                                        {{$data->physical}}
                                    </td>
                                </tr>
                            @endif
                            @if($data->interview_date)
                                <tr>
                                    <th>面试时间</th>
                                    <td>
                                        {{$data->interview_date}}
                                    </td>
                                </tr>
                            @endif
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="fac_main_question">
                    <div class="fac_title">
                        <span class="fr">
                            <em class="nums">（共{{$count_ques}}条）</em>
                            <a href="" target="_blank" class="btn btn_s btn_orange">我要提问</a>
                        </span>
                        <i class="ic ic_fac_t3"></i>
                        <h3>岗位问答</h3>
                        <span class="notes">该企业相关问题答案由工立方网和热心网友共同提供</span>
                    </div>
                    <ul class="fac_quelist">
                        @if($question)
                            @foreach($question as $v)
                                <li class="fac_queitem">
                                    <i class="ic ic_fac_ques1"></i>
                                    <i class="ic ic_fac_ques2"></i>
                                    <i class="ic ic_fac_ques3"></i>
                                    <i class="ic ic_fac_ques4"></i>
                                    <div class="items item_ask">
                                        <span class="ic_type type1">问</span>
                                        <div class="con">
                                            <p class="tit">{{$v['title']}}</p>
                                            <p class="des">{{$v['create_time']}}  @if($v['is_show']) {{$v['user']['nickname']}} @else 匿名 @endif</p>
                                        </div>
                                    </div>
                                    <div class="items fac_que1">
                                        <span class="ic_type type2">答</span>
                                        @if($v['answer'])
                                            @foreach($v['answer'] as $asw)
                                                <div class="con">
                                                    <p>{{$asw['content']}}</p>
                                                </div>
                                            @endforeach
                                        @endif
                                    </div>
                                </li>
                            @endforeach
                        @endif
                    </ul>
                    <a href="" target="_blank" class="fac_quelist_more">查看全部回答>></a>
                </div>
            </div>
            <div class="s_r">
                <div class="fac_info fac_rlist">
                    <div class="ner_title">
                        <i class="ic_line ic_ner_t"></i>
                        <h3>企业详情</h3>
                    </div>
                    <div class="fac_info_con">
                        <p class="name">{{$data->factory->name}}</p>
                        <div class="clearfix">
                            <img src="{{$data->factory->image}}" class="imgs" alt="{{$data->factory->name}}">
                            <div class="con">
                                <p><span class="titles">企业规模：</span>{{$data->factory->scale}}</p>
                                <p><span class="titles">所属行业：</span>{{$data->factory->trade}}</p>
                                <p><span class="titles">平均薪资：</span><span class="price">{{$data->factory->avg_salary}}元</span></p>
                            </div>
                        </div>
                        <p class="vals">
                            <p class="vals">{{$data->factory->desc}}</p>
                        </p>
                    </div>
                    <script type="text/javascript">
                        var longitude='{{$data->factory->longitude}}';latitude='{{$data->factory->latitude}}';address='{{$data->factory->address}}';
                    </script>
                    <div class="fac_maps">
                        <h4>工厂在哪？</h4>
                        <div id="fac_maps" style="height: 190px;"></div>
                        <div class="con">
                            <p><span class="titles">企业位置：</span>{{$data->factory->address}}</p>
                            <p><span class="titles">乘车路线：</span>{{$data->factory->bus_line}}</p>
                            <p><span class="titles">接站地址：</span>{{$data->factory->meet}}</p>
                        </div>
                        <div class="fac_maps_join">
                            <h4>我怎么去？</h4>
                            <a href="" class="btn btn_s btn_blue btn_act btn_phone">门店就近报名</a>
                            <a href="javascript:void(0);" class="btn btn_s btn_blue btn_phone">电话报名：{{$data->factory->phone}}</a>
                        </div>
                    </div>
                </div>
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
    </div>
    <div style="height:0;overflow:hidden;">
        <!--我要报名和工友推荐弹窗begin-->
        <div id="wybm" class="layer_join layers">
            <p class="to_login">
                <a href="">我是会员>></a>
            </p>
            <form action="" class="form form-horizontal" id="signup">
                <input type="hidden" name="type" value="1" /><!-- 入口类型 -->
                <input type="hidden" name="type_id" value="10011" /><!-- 公司ID -->
                <input type="hidden" name="type_name" value="联滔电子（昆山）有限公司" /><!-- 公司名称 -->
                <div class="form-item">
                    <label class="form-label" for="">意向企业：</label>
                    <div class="form-field form-field_txt">
                        <input type="hidden" name="comp_old" value="联滔电子（昆山）有限公司" class="reg_input" disabled style="width:200px">联滔电子（昆山）有限公司
                    </div>
                </div>
                <div class="form-item">
                    <label class="form-label" for="">姓名：</label>
                    <div class="form-field">
                        <input type="text" placeholder="请输入您的姓名" class="form-text" name="user_name">
                    </div>
                </div>
                <div class="form-item">
                    <label class="form-label" for="">电话：</label>
                    <div class="form-field">
                        <input type="text" placeholder="请输入您的联系电话" class="form-text" name="mobile" id="inputMobile">
                    </div>
                </div>
                <div class="form-item">
                    <a href="javascript:signup()" class="btn btn_b btn_orange">确定</a>
                </div>
            </form>
        </div>
    </div>
@endsection

@section('scripts')
    <script src="{{asset("/assets/home/js/hm.js")}}"></script>
    <script src="{{asset("/assets/home/js/push.js")}}"></script>
    <script src="{{asset("/assets/home/js/fac.js")}}"></script>


@endsection


