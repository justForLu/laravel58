@extends('home.layout.base')

@section('styles')
    <link rel="stylesheet" href="{{asset("/assets/home/css/style-fac.css")}}">
    <link rel="stylesheet" href="{{asset("/assets/home/css/share_style.css")}}">
@endsection

@section('content')
    <div class="breadcrumb">
        <ul class="section">
            <li>您现在的位置：</li>
            <li><a href="" >首页</a> <span class="divider">></span></li>
            <li><a href="">找工作</a> <span class="divider">></span></li>
            <li class="active">联滔电子（昆山）有限公司</li>
        </ul>
    </div>
    <div class="fac_wrap wrap">
        <div class="section">
            <div class="fac_top clearfix">
                <div class="fac_imgshow fac_imgswiper" id="fac_imgshow">
                    <div class="view">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <a href="javascript:void(0);" >
                                        <img src="{{asset("/assets/home/images/job1.jpg")}}" alt="">
                                        <span class="fix_opt">共24张照片</span>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="javascript:void(0);" >
                                        <img src="{{asset("/assets/home/images/job2.jpg")}}" alt="">
                                        <span class="fix_opt">共24张照片</span>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="javascript:void(0);" >
                                        <img src="{{asset("/assets/home/images/job3.jpg")}}" alt="">
                                        <span class="fix_opt">共24张照片</span>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="javascript:void(0);" >
                                        <img src="{{asset("/assets/home/images/job1.jpg")}}" alt="">
                                        <span class="fix_opt">共24张照片</span>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="javascript:void(0);" >
                                        <img src="{{asset("/assets/home/images/job2.jpg")}}" alt="">
                                        <span class="fix_opt">共24张照片</span>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="javascript:void(0);" >
                                        <img src="{{asset("/assets/home/images/job3.jpg")}}" alt="">
                                        <span class="fix_opt">共24张照片</span>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="javascript:void(0);" >
                                        <img src="{{asset("/assets/home/images/job1.jpg")}}" alt="">
                                        <span class="fix_opt">共24张照片</span>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="javascript:void(0);" >
                                        <img src="{{asset("/assets/home/images/job2.jpg")}}" alt="">
                                        <span class="fix_opt">共24张照片</span>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="javascript:void(0);" >
                                        <img src="{{asset("/assets/home/images/job3.jpg")}}" alt="">
                                        <span class="fix_opt">共24张照片</span>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="javascript:void(0);" >
                                        <img src="{{asset("/assets/home/images/job1.jpg")}}" alt="">
                                        <span class="fix_opt">共24张照片</span>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="javascript:void(0);" >
                                        <img src="{{asset("/assets/home/images/job2.jpg")}}" alt="">
                                        <span class="fix_opt">共24张照片</span>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="javascript:void(0);" >
                                        <img src="{{asset("/assets/home/images/job3.jpg")}}" alt="">
                                        <span class="fix_opt">共24张照片</span>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="javascript:void(0);" >
                                        <img src="{{asset("/assets/home/images/job1.jpg")}}" alt="">
                                        <span class="fix_opt">共24张照片</span>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="javascript:void(0);" >
                                        <img src="{{asset("/assets/home/images/job2.jpg")}}" alt="">
                                        <span class="fix_opt">共24张照片</span>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="javascript:void(0);" >
                                        <img src="{{asset("/assets/home/images/job3.jpg")}}" alt="">
                                        <span class="fix_opt">共24张照片</span>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="javascript:void(0);" >
                                        <img src="{{asset("/assets/home/images/job1.jpg")}}" alt="">
                                        <span class="fix_opt">共24张照片</span>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="javascript:void(0);" >
                                        <img src="{{asset("/assets/home/images/job2.jpg")}}" alt="">
                                        <span class="fix_opt">共24张照片</span>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="javascript:void(0);" >
                                        <img src="{{asset("/assets/home/images/job3.jpg")}}" alt="">
                                        <span class="fix_opt">共24张照片</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="preview">
                        <a class="arrow-left ic_fac_arrowl" href="javascript:void(0);"></a>
                        <a class="arrow-right ic_fac_arrowr" href="javascript:void(0);"></a>
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide active-nav">
                                    <img src="{{asset("/assets/home/images/job1.jpg")}}" alt="">
                                </div>
                                <div class="swiper-slide active-nav">
                                    <img src="{{asset("/assets/home/images/job2.jpg")}}" alt="">
                                </div>
                                <div class="swiper-slide active-nav">
                                    <img src="{{asset("/assets/home/images/job3.jpg")}}" alt="">
                                </div>
                                <div class="swiper-slide active-nav">
                                    <img src="{{asset("/assets/home/images/job1.jpg")}}" alt="">
                                </div>
                                <div class="swiper-slide active-nav">
                                    <img src="{{asset("/assets/home/images/job2.jpg")}}" alt="">
                                </div>
                                <div class="swiper-slide active-nav">
                                    <img src="{{asset("/assets/home/images/job3.jpg")}}" alt="">
                                </div>
                                <div class="swiper-slide active-nav">
                                    <img src="{{asset("/assets/home/images/job1.jpg")}}" alt="">
                                </div>
                                <div class="swiper-slide active-nav">
                                    <img src="{{asset("/assets/home/images/job2.jpg")}}" alt="">
                                </div>
                                <div class="swiper-slide active-nav">
                                    <img src="{{asset("/assets/home/images/job3.jpg")}}" alt="">
                                </div>
                                <div class="swiper-slide active-nav">
                                    <img src="{{asset("/assets/home/images/job1.jpg")}}" alt="">
                                </div>
                                <div class="swiper-slide active-nav">
                                    <img src="{{asset("/assets/home/images/job2.jpg")}}" alt="">
                                </div>
                                <div class="swiper-slide active-nav">
                                    <img src="{{asset("/assets/home/images/job3.jpg")}}" alt="">
                                </div>
                                <div class="swiper-slide active-nav">
                                    <img src="{{asset("/assets/home/images/job1.jpg")}}" alt="">
                                </div>
                                <div class="swiper-slide active-nav">
                                    <img src="{{asset("/assets/home/images/job2.jpg")}}" alt="">
                                </div>
                                <div class="swiper-slide active-nav">
                                    <img src="{{asset("/assets/home/images/job3.jpg")}}" alt="">
                                </div>
                                <div class="swiper-slide active-nav">
                                    <img src="{{asset("/assets/home/images/job1.jpg")}}" alt="">
                                </div>
                                <div class="swiper-slide active-nav">
                                    <img src="{{asset("/assets/home/images/job2.jpg")}}" alt="">
                                </div>
                                <div class="swiper-slide active-nav">
                                    <img src="{{asset("/assets/home/images/job3.jpg")}}" alt="">
                                </div>
                                <div class="swiper-slide active-nav">
                                    <img src="{{asset("/assets/home/images/job1.jpg")}}" alt="">
                                </div>
                                <div class="swiper-slide active-nav">
                                    <img src="{{asset("/assets/home/images/job2.jpg")}}" alt="">
                                </div>
                                <div class="swiper-slide active-nav">
                                    <img src="{{asset("/assets/home/images/job3.jpg")}}" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="fac_top_info">
                    <div class="fac_top_acts">
                        <div class="bdsharebuttonbox btn_share bdshare-button-style0-16" data-bd-bind="1525860254053" id="btn_share">
                            <a href="#" class="bds_more " data-cmd="more">
                                <i class="ic ic_fac_share"></i>
                                <i class="ic ich ic_fac_share_hover"></i>
                                <em>分享</em>
                            </a>
                        </div>
                        <a href="javascript:collect_func();" class="btn_collect " id="collect" data-id="110" title="点击收藏">
                            <i class="ic ic_fac_collect"></i>
                            <i class="ic ich ic_fac_collect_hover"></i>收藏
                        </a>
                    </div>
                    <p class="names"><span class="tag_need">直招</span>昆山联滔21元/小时</p>
                    <p class="des prices"><span class="titles">综合薪资：</span>￥5500-6000元/月</p>
                    <p class="fac_tag"><em>名企</em><em>工作轻松</em><em>不穿无尘服</em><em>多帅哥美女</em><em>环境优美</em></p>
                    <p class="des">
                        <span class="titles">招聘人数：</span>800人
                        <span class="des_not"><i class="ic ic_fac_joined"></i>已有<em>1434人</em>报名</span><br>
                        <span class="titles">要　　求：</span>男：19-40岁<i class="line"></i>女：19-42岁<br>
                        <span class="titles">上班地址：</span>锦溪镇百胜路399号
                        <a href="javascript:largeMap('120.964145', '31.189555', '锦溪镇百胜路399号')" class="des_not">
                            <i class="ic ic_fac_address"></i>电子地图
                        </a>
                    </p>
                    <div class="fac_top_phone">
                        <span class="phones" id="service_phone"><i class="ic ic_fac_numtitle"></i>获取服务热线中...</span>
                        <a href="javascript:void(0);" id="btn_join_layer1" class="btn btn_b btn_round btn_orange btn_join_layer">我要报名</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="fac_acts section clearfix" id="fac_acts">
            <div class="col-50">
                <span class="tits ic ic_acts_1"></span>
                <div class="award_con">
                    <div class="award_first award_no">非常抱歉！目前暂无推荐奖金</div>
                    <ul class="award_list">
                    </ul>
                </div>
                <span class="fac_acts_btns">
                    <a href="javascript:void(0);" class="btn btn_green btn_join" id="btn_recom_layer">
                        <i class="ic ic_fac_recom"></i>推荐工友
                    </a>
                    <i class="btn_num">已推荐0人</i>
                </span>
            </div>
            <div class="col-50">
                <span class="tits ic ic_acts_2"></span>
                <div class="award_con">
                    <div class="award_first award_no">非常抱歉！目前暂无入职奖金</div>
                    <ul class="award_list">
                    </ul>
                </div>
                <span class="fac_acts_btns">
                    <a id="bmBtn" data-reveal-id="wybm" data-animation="fade" style="display:none;"></a>
                    <a href="javascript:checkUserInfo()" class="btn btn_blue btn_recom btn_join_layer" id="btn_join_layer">
                        <i class="ic ic_fac_join"></i>我要报名
                    </a><i class="btn_num">已入职1434人</i>
                </span>
                <span class="ic ic_acts_3"></span>
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
                            <tr class="t1">
                                <th>综合工资</th>
                                <td>
                                    <span class="prices">￥5500-6000元/月</span>
                                </td>
                            </tr>
                            <tr class="t1">
                                <th>小时工</th>
                                <td>
                                    <span class="prices">21元/小时</span>
                                </td>
                            </tr>
                            <tr class="t1">
                                <th>发薪日</th>
                                <td>每月10号</td>
                            </tr>
                            <tr class="">
                                <th>住宿</th>
                                <td>
                                    1、住宿50元/月，水电30元/月；<br />
                                    2、厂外住宿，坐厂车15分钟左右。
                                </td>
                            </tr>
                            <tr class="">
                                <th>备注</th>
                                <td>合同期暂定三个月<br/>暂无其他说明</td>
                            </tr>
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
                            <tr>
                                <th>年龄要求</th>
                                <td>
                                    男：19-40岁<i class="line"></i>女：19-42岁
                                </td>
                            </tr>
                            <tr>
                                <th>其他要求</th>
                                <td>
                                    1、少数民族需要提前报备确认；<br />
                                    2、熟悉26个英文字母；<br />
                                    3、纹身、烟疤需要提前确认；<br />
                                    4、色弱可以，色盲不收；<br />
                                    5、临时、消磁、过期身份证不接收；<br />
                                    6、体内有少量金属可以接收，金属牙（大牙处）不超过2颗可以接收，其他地方不是很明显的也可以；<br />
                                    7、正常离职1个月可以进，自离满3个月可以进，黑名单不可以进；<br />
                                    8、面试必须携带银行卡（工商、农业、交通、建设都可以）；<br />
                                    9、北京市，大连市，乌鲁木齐天山区、乌鲁木齐市沙依巴克区、乌鲁木齐经济开发区（头屯河区）、高新技术产业开发区（新市区）、水磨沟区户籍暂不接收；湖北户籍持一周内核酸检测结果和缴费记录可以接收；<br />
                                    10、19-22岁（98年全年）需要提供非寒暑假期间的三个月银行流水。
                                </td>
                            </tr>
                            <tr>
                                <th>工作内容</th>
                                <td>
                                    主要生产无线耳机，无线充电电子产品及手机马达。
                                </td>
                            </tr>
                            <tr>
                                <th>岗位说明</th>
                                <td>
                                    两班倒，大部分是流水线，坐班多，大部分不穿无尘衣。
                                </td>
                            </tr>
                            <tr>
                                <th>面试材料</th>
                                <td>
                                    手机、身份证原件。
                                </td>
                            </tr>
                            <tr>
                                <th>体检</th>
                                <td>
                                    15元/人
                                </td>
                            </tr>
                            <tr>
                                <th>面试时间</th>
                                <td>
                                    8:00-10:30、13:00-15:00
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="fac_main_question">
                    <div class="fac_title">
                        <span class="fr">
                            <em class="nums">（共4条）</em>
                            <a href="" target="_blank" class="btn btn_s btn_orange">我要提问</a>
                        </span>
                        <i class="ic ic_fac_t3"></i>
                        <h3>岗位问答</h3>
                        <span class="notes">该企业相关问题答案由工立方网和热心网友共同提供</span>
                    </div>
                    <ul class="fac_quelist">
                        <li class="fac_queitem">
                            <i class="ic ic_fac_ques1"></i>
                            <i class="ic ic_fac_ques2"></i>
                            <i class="ic ic_fac_ques3"></i>
                            <i class="ic ic_fac_ques4"></i>
                            <div class="items item_ask">
                                <span class="ic_type type1">问</span>
                                <div class="con">
                                    <p class="tit">上班需要做厂车吗？</p>
                                    <p class="des">2020-07-27 21:07:17  glf_358362</p>
                                </div>
                            </div>
                            <div class="items fac_que1">
                                <span class="ic_type type2">答</span>
                                <div class="con">
                                    <p>亲爱的工友，您好！上班需要坐厂车，大概十几分钟。如果还有其他问题，可以咨询客服：15638249711</p>
                                </div>
                            </div>
                        </li>
                        <li class="fac_queitem">
                            <i class="ic ic_fac_ques1"></i>
                            <i class="ic ic_fac_ques2"></i>
                            <i class="ic ic_fac_ques3"></i>
                            <i class="ic ic_fac_ques4"></i>
                            <div class="items item_ask">
                                <span class="ic_type type1">问</span>
                                <div class="con">
                                    <p class="tit">之前在江西立讯干过还能进联滔吗？</p>
                                    <p class="des">2020-07-26 13:08:53  匿名</p>
                                </div>
                            </div>
                            <div class="items fac_que1">
                                <span class="ic_type type2">答</span>
                                <div class="con">
                                    <p>亲爱的工友，您好！这个要根据厂里具体的政策，详细情况可咨询客服：15638249711</p>
                                </div>
                            </div>
                        </li>
                        <li class="fac_queitem">
                            <i class="ic ic_fac_ques1"></i>
                            <i class="ic ic_fac_ques2"></i>
                            <i class="ic ic_fac_ques3"></i>
                            <i class="ic ic_fac_ques4"></i>
                            <div class="items item_ask">
                                <span class="ic_type type1">问</span>
                                <div class="con">
                                    <p class="tit">现在招的是22我在嘉善这边，从哪报名呢</p>
                                    <p class="des">2020-07-25 17:20:58  星空下的爱＠_＠ 如此着迷</p>
                                </div>
                            </div>
                            <div class="items fac_que1">
                                <span class="ic_type type2">答</span>
                                <div class="con">
                                    <p>亲爱的工友，您好！报名可以直接找当地门店报名，如果没有门店可以线上报名，会有门店联系你。</p>
                                </div>
                            </div>
                        </li>
                        <li class="fac_queitem">
                            <i class="ic ic_fac_ques1"></i>
                            <i class="ic ic_fac_ques2"></i>
                            <i class="ic ic_fac_ques3"></i>
                            <i class="ic ic_fac_ques4"></i>
                            <div class="items item_ask">
                                <span class="ic_type type1">问</span>
                                <div class="con">
                                    <p class="tit">找满的  就不招了吗</p>
                                    <p class="des">2020-07-25 16:50:07  匿名</p>
                                </div>
                            </div>
                            <div class="items fac_que1">
                                <span class="ic_type type2">答</span>
                                <div class="con">
                                    <p>亲爱的工友，您好！停招的话暂时就不招了，您可以留意招聘信息，及时了解最新消息。</p>
                                </div>
                            </div>
                        </li>
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
                        <p class="name">联滔电子（昆山）有限公司</p>
                        <div class="clearfix">
                            <img src="{{asset("/assets/home/images/store.jpg")}}" class="imgs" alt="联滔电子（昆山）有限公司封面图">
                            <div class="con">
                                <p><span class="titles">企业规模：</span>2万人</p>
                                <p><span class="titles">所属行业：</span>制造业</p>
                                <p><span class="titles">平均薪资：</span><span class="price">5750元</span></p>
                            </div>
                        </div>
                        <p class="vals">
                            <p class="vals">昆山联滔主要从事手机、笔记本电脑等消费性电子连接线。公司产品外销至世界各地，客户包括APPLE、LENOVO、ACER、HP、MOTOROLA、SIEMENS等世界知名公司。</p>
                        </p>
                    </div>
                    <script type="text/javascript">
                        var longitude='120.964145';latitude='31.189555';address='锦溪镇百胜路399号';city='320500';
                    </script>
                    <div class="fac_maps">
                        <h4>工厂在哪？</h4>
                        <div id="fac_maps" style="height: 190px;"></div>
                        <div class="con">
                            <p><span class="titles">企业位置：</span>锦溪镇百胜路399号</p>
                            <p><span class="titles">乘车路线：</span>可从昆山客运南站乘坐130路公交至厂区。</p>
                            <p><span class="titles">接站地址：</span>昆山站（火车站）<br>昆山南站（高铁）<br>昆山客运南站（昆山客运中心站）</p>
                        </div>
                        <div class="fac_maps_join">
                            <h4>我怎么去？</h4>
                            <a href="" class="btn btn_s btn_blue btn_act btn_phone">门店就近报名</a>
                            <a href="javascript:void(0);" class="btn btn_s btn_blue btn_phone">电话报名：0371-55338888</a>
                        </div>
                    </div>
                </div>
                <div class="fac_hot fac_rlist">
                    <h3 class="titles">
                        <i class="ic ic_fac_hottitle"></i>
                    </h3>
                    <ul class="fac_hot_list">
                        <li>
                            <a href="" target="_blank">可成科技(宿迁)有限公司  （4500--5000元/月）</a>
                        </li>
                        <li>
                            <a href="" target="_blank">可胜科技（泰州）有限公司  （5000--6000元/月）</a>
                        </li>
                        <li>
                            <a href="" target="_blank">仁宝电子科技昆山有限公司  （5000--5500元/月）</a>
                        </li>
                        <li>
                            <a href="" target="_blank">联滔电子（昆山）有限公司  （5500--6000元/月）</a>
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
                        <img src="{{asset("/assets/home/images/shop1.jpg")}}" alt="山东歌尔声学股份有限公司">
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
        <!-- 推荐好友 -->
        <div class="layer_recom layers" id="tjgy">
            <form action="" class="form form-horizontal" id="recommend">
                <input type="hidden" name="type" value="1" /><!-- 入口类型 -->
                <input type="hidden" name="type_id" value="10011" /><!-- 公司ID -->
                <input type="hidden" name="type_name" value="联滔电子（昆山）有限公司" /><!-- 公司名称 -->
                <div class="form-item">
                    <label for="" class="form-label"></label>
                    <div class="form-field">
                        <p class="recom_note">提示：所推荐工友在一个月内有效</p>
                    </div>
                </div>
                <div class="form-item">
                    <label class="form-label" for="">朋友姓名：</label>
                    <div class="form-field">
                        <input type="text" placeholder="请填写真实姓名" class="form-text" name="name">
                    </div>
                </div>
                <div class="form-item">
                    <label class="form-label" for="">朋友性别：</label>
                    <div class="form-field form-field-rc">
                        <label class="form-label-rc">
                            <input type="radio" checked="checked" value="1" class="form-radio" name="sex"><span>男</span>
                        </label>
                        <label class="form-label-rc">
                            <input type="radio" value="2" class="form-radio" name="sex"><span>女</span>
                        </label>
                    </div>
                </div>
                <div class="form-item">
                    <label class="form-label" for="">朋友年龄：</label>
                    <div class="form-field">
                        <select name="age" class="form-select">
                            <option value="16">16岁</option>
                            <option value="17">17岁</option>
                            <option value="18">18岁</option>
                            <option value="19">19岁</option>
                            <option value="20">20岁</option>
                            <option value="21">21岁</option>
                            <option value="22">22岁</option>
                            <option value="23">23岁</option>
                            <option value="24">24岁</option>
                            <option value="25">25岁</option>
                            <option value="26">26岁</option>
                            <option value="27">27岁</option>
                            <option value="28">28岁</option>
                            <option value="29">29岁</option>
                            <option value="30">30岁</option>
                            <option value="31">31岁</option>
                            <option value="32">32岁</option>
                            <option value="33">33岁</option>
                            <option value="34">34岁</option>
                            <option value="35">35岁</option>
                            <option value="36">36岁</option>
                            <option value="37">37岁</option>
                            <option value="38">38岁</option>
                            <option value="39">39岁</option>
                            <option value="40">40岁</option>
                            <option value="41">41岁</option>
                            <option value="42">42岁</option>
                            <option value="43">43岁</option>
                            <option value="44">44岁</option>
                            <option value="45">45岁</option>
                            <option value="46">46岁</option>
                            <option value="47">47岁</option>
                            <option value="48">48岁</option>
                            <option value="49">49岁</option>
                            <option value="50">50岁</option>
                        </select>
                    </div>
                </div>
                <div class="form-item">
                    <label class="form-label" for="">朋友手机：</label>
                    <div class="form-field">
                        <input type="text" placeholder="请填写朋友手机号" class="form-text" name="mobile">
                    </div>
                </div>
                <div class="form-item form-item_address">
                    <label class="form-label" for="">朋友现在哪：</label>
                    <div class="form-field">
                        <select name="lo_p" class="form-select inline-ele region">
                            <option value="">请选择</option>
                            <option value="110000" data-id="北京">北京</option>
                            <option value="120000" data-id="天津">天津</option>
                            <option value="130000" data-id="河北省">河北省</option>
                            <option value="140000" data-id="山西省">山西省</option>
                            <option value="150000" data-id="内蒙古自治区">内蒙古自治区</option>
                            <option value="210000" data-id="辽宁省">辽宁省</option>
                            <option value="220000" data-id="吉林省">吉林省</option>
                            <option value="230000" data-id="黑龙江省">黑龙江省</option>
                            <option value="310000" data-id="上海">上海</option>
                            <option value="320000" data-id="江苏省">江苏省</option>
                            <option value="330000" data-id="浙江省">浙江省</option>
                            <option value="340000" data-id="安徽省">安徽省</option>
                            <option value="350000" data-id="福建省">福建省</option>
                            <option value="360000" data-id="江西省">江西省</option>
                            <option value="370000" data-id="山东省">山东省</option>
                            <option value="410000" data-id="河南省">河南省</option>
                            <option value="420000" data-id="湖北省">湖北省</option>
                            <option value="430000" data-id="湖南省">湖南省</option>
                            <option value="440000" data-id="广东省">广东省</option>
                            <option value="450000" data-id="广西">广西</option>
                            <option value="460000" data-id="海南省">海南省</option>
                            <option value="500000" data-id="重庆">重庆</option>
                            <option value="510000" data-id="四川省">四川省</option>
                            <option value="520000" data-id="贵州省">贵州省</option>
                            <option value="530000" data-id="云南省">云南省</option>
                            <option value="540000" data-id="西藏自治区">西藏自治区</option>
                            <option value="610000" data-id="陕西省">陕西省</option>
                            <option value="620000" data-id="甘肃省">甘肃省</option>
                            <option value="630000" data-id="青海省">青海省</option>
                            <option value="640000" data-id="宁夏回族自治区">宁夏回族自治区</option>
                            <option value="650000" data-id="新疆维吾尔自治区">新疆维吾尔自治区</option>
                            <option value="710000" data-id="台湾">台湾</option>
                            <option value="810000" data-id="香港特别行政区">香港特别行政区</option>
                            <option value="820000" data-id="澳门特别行政区">澳门特别行政区</option>
                        </select>
                        <select name="lo_c" class="form-select inline-ele region">
                            <option value="" selected disabled>请选择</option>
                        </select>
                        <select name="lo_a" class="form-select inline-ele region">
                            <option value="" selected disabled>请选择</option>
                        </select>
                        <select name="lo_s" class="form-select inline-ele region" style="display: none;" id="baoming_select_company" >
                            <option value="" selected disabled>请选择</option>
                        </select>
                    </div>
                </div>
                <div class="form-item">
                    <label class="form-label" for="">我的姓名：</label>
                    <div class="form-field">
                        <input type="text" placeholder="请填写真实姓名" class="form-text" name="tj_name">
                    </div>
                </div>
                <div class="form-item">
                    <label class="form-label" for="">我的电话：</label>
                    <div class="form-field">
                        <input type="text" placeholder="请填写您的手机号" class="form-text" name="tj_mobile">
                    </div>
                </div>
                <div class="form-item form-item_imark">
                    <label class="form-label" for="">验证码：</label>
                    <div class="form-field">
                        <input type="text" placeholder="请输入验证码" class="form-text" name="verify">
                        <img src="{{asset("/assets/home/images/recomSms_.html.png")}}" onclick="this.src=this.src"></div>
                </div>
                <div class="form-item">
                    <a href="javascript:recommend();" class="btn btn_b btn_orange">确定</a>
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


