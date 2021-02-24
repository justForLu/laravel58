@extends('home.layout.base')

@section('styles')
    <link rel="stylesheet" href="{{asset("/assets/home/css/style-fac.css")}}">
    <link rel="stylesheet" href="{{asset("/assets/home/css/share_style.css")}}">
@endsection

@section('content')
    <div class="breadcrumb">

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
                        <div id="fac_maps" data-longitude="{{$data->factory->longitude}}" data-latitude="{{$data->factory->latitude}}" style="height: 190px;"></div>
                        <div class="con">
                            <p><span class="titles">企业位置：</span>{{$data->factory->address}}</p>
                            <p><span class="titles">乘车路线：</span>{{$data->factory->bus_line}}</p>
                            <p><span class="titles">接站地址：</span>{{$data->factory->meet}}</p>
                        </div>
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
    <script src="{{asset("/assets/home/js/hm.js")}}"></script>
    <script src="{{asset("/assets/home/js/push.js")}}"></script>
    <script src="{{asset("/assets/home/js/fac.js")}}"></script>
    <script type="text/javascript">
        $("#btn_join_layer1").click(function () {
            $("#layer_join").css({"position": "fixed","bottom": "400px","left": "30%","background-color": "#fff","z-index": 99999999,"width": "40%","display":"block"});
        });
        $(".close_join").click(function () {
            $("#layer_join").hide();
            $(".layui-layer-shade").removeAttr("style");
            $(".layui-layer-shade").removeAttr("class");
        });
    </script>
@endsection


