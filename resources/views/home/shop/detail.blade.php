@extends('home.layout.base')

@section('styles')
    <link rel="stylesheet" href="{{asset("/assets/home/css/style-fac.css")}}">
@endsection

@section('content')
    <div class="breadcrumb">
        <ul class="section">
            <li>您现在的位置：</li>
            <li><a href="/">首页</a> <span class="divider">&gt;</span></li>
            <li><a href="/Store">找门店</a> <span class="divider">&gt;</span></li><li class="active">工立方尉氏县就业服务站</li>
        </ul>
    </div><div class="fac_wrap wrap">
        <div class="section">
            <div class="fac_top clearfix">

                <div class="fac_imgshow fac_imgswiper" id="fac_imgshow">
                    <div class="view">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <a href="javascript:void(0);" ><img src="http://img.gonglf.com/store/3262a7ac96a3283241e9e51b39849bd3.jpg@!img_480_320" alt=""><span class="fix_opt">共4张照片</span></a>
                                </div><div class="swiper-slide">
                                    <a href="javascript:void(0);" ><img src="http://img.gonglf.com/store/2016/10/58004bab40017.jpg@!img_480_320" alt=""><span class="fix_opt">共4张照片</span></a>
                                </div><div class="swiper-slide">
                                    <a href="javascript:void(0);" ><img src="http://img.gonglf.com/store/4cf7ac96f447860f8826c3fa89c777fe.jpg@!img_480_320" alt=""><span class="fix_opt">共4张照片</span></a>
                                </div><div class="swiper-slide">
                                    <a href="javascript:void(0);" ><img src="http://img.gonglf.com/store/773cbb83c3fef0119f80c693a7f47562.jpg@!img_480_320" alt=""><span class="fix_opt">共4张照片</span></a>
                                </div>						</div>
                        </div>
                    </div>
                    <div class="preview">
                        <a class="arrow-left ic_fac_arrowl" href="javascript:void(0);"></a>
                        <a class="arrow-right ic_fac_arrowr" href="javascript:void(0);"></a>
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide active-nav">
                                    <img src="http://img.gonglf.com/store/3262a7ac96a3283241e9e51b39849bd3.jpg@77h_95w_1e|0-0-95-77a" alt="">
                                </div><div class="swiper-slide ">
                                    <img src="http://img.gonglf.com/store/2016/10/58004bab40017.jpg@77h_95w_1e|0-0-95-77a" alt="">
                                </div><div class="swiper-slide ">
                                    <img src="http://img.gonglf.com/store/4cf7ac96f447860f8826c3fa89c777fe.jpg@77h_95w_1e|0-0-95-77a" alt="">
                                </div><div class="swiper-slide ">
                                    <img src="http://img.gonglf.com/store/773cbb83c3fef0119f80c693a7f47562.jpg@77h_95w_1e|0-0-95-77a" alt="">
                                </div>						</div>
                        </div>
                    </div>
                </div>
                <div class="fac_top_info sto_top_info">
                    <div class="fac_top_acts">
                        <div class="bdsharebuttonbox btn_share bdshare-button-style0-16" data-bd-bind="1525860254053" id="btn_share"><a href="#" class="bds_more " data-cmd="more">
                                <i class="ic ic_fac_share"></i><i class="ic ich ic_fac_share_hover"></i><em>分享</em></a>
                        </div><a href="javascript:collect_func();" class="btn_collect " id="collect" data-id="48" title="点击收藏"><i class="ic ic_fac_collect"></i><i class="ic ich ic_fac_collect_hover"></i>收藏</a>
                    </div>
                    <p class="names">工立方尉氏县就业服务站</p>

                    <p class="des"><span class="titles">招聘岗位：</span>普工（长期工） <br><span class="titles">招聘人数：</span>667人 <span class="des_not"><i class="ic ic_fac_joined"></i>已有<em>230人</em>报名</span><br><span class="titles">服务宗旨：</span>一切以客户为核心<br><span class="titles">门店地址：</span>尉氏县汽车北站红绿灯北50路西<a href="javascript:largeMap('114.211675', '34.425119', '尉氏县汽车北站红绿灯北50路西')" class="des_not"><i class="ic ic_fac_address"></i>电子地图</a></p>

                    <div class="fac_top_phone sto_top_phone">
                        <span class="phones"><i class="ic ic_sto_tphone"></i>0371-27912558&nbsp;&nbsp;&nbsp;15993332511</span><span class="fac_acts_btns"><a href="javascript:void(0);" class="btn btn_blue btn_recom btn_join_layer" id="btn_join_layer"><i class="ic ic_fac_join"></i>我要报名</a></span><span class="fac_acts_btns"><a href="javascript:void(0);" class="btn btn_green btn_join" id="btn_recom_layer"><i class="ic ic_fac_recom"></i>推荐工友</a></span>
                    </div>
                    <p class="sto_top_note">郑重声明：本站所有发布招聘信息都经过工立方官方核实，100%真实有效，请大家放心报名！</p>
                </div>
            </div>
        </div>

        <div class="fac_main section clearfix">
            <div class="s_l">
                <div class="sto_main">
                    <div class="fac_list_tab">
                        <ul id="sto_contab">
                            <li ><a href="javascript:void(0);">招聘企业</a></li>
                            <li class="active"><a href="javascript:void(0);">本地招聘</a></li>
                            <li><a href="javascript:void(0);">就业顾问</a></li>
                            <li><a href="javascript:void(0);">门店服务</a></li>
                        </ul>
                        <span class="nums"></span>
                    </div>
                    <div class="sto_main_con" style="display: none;">
                        <ul class="fac_list">
                            <li class="first">
                                <a href="/Company/101.html" target="_blank" class="imgs"><img src="http://img.gonglf.com/company/3228cca8ce1c028ab93207faf6de33d6.jpg@270h_370w_1e|0-0-370-270a" alt="苏州华硕正式工" class="imgs"></a>
                                <div class="cons">
                                    <div class="names">
                                        <span class="prices"><em>3500-4000</em>元/月</span>
                                        <h4><a href="/Company/101.html" target="_blank">苏州华硕正式工</a></h4>
                                    </div>
                                    <p class="des">
                                        <a href="javascript:largeMap('120.583299', '31.292923', '苏州高新区金枫路233号')" target="_blank" class="to_map"><i class="ic ic_fac_lmap"></i>电子地图</a>
                                        <span class="titles">招聘人数：</span>1000人            <span class="titles title2">企业规模：</span>80000人<br>
                                        <span class="titles">招聘岗位：</span><span class="tp">长期工</span><span class="tp">普工</span><br>
                                        <span class="titles">招聘要求：</span>16-40岁<i class="line"></i>性别不限									</p>
                                    <p class="fac_tag"><a href="/Company/101.html" target="_blank" class="to_fac btn btn_blue btn_m btn_round">查看</a><em>名企</em><em>不穿无尘服</em><em>多帅哥美女</em></p>
                                </div>
                            </li><li >
                                <a href="/Company/102.html" target="_blank" class="imgs"><img src="http://img.gonglf.com/company/f89e6896a97b147e870d7b675fc73503.jpg@270h_370w_1e|0-0-370-270a" alt="泰州可胜22元/小时" class="imgs"></a>
                                <div class="cons">
                                    <div class="names">
                                        <span class="prices"><em>5000-6000</em>元/月</span>
                                        <h4><a href="/Company/102.html" target="_blank">泰州可胜22元/小时</a></h4>
                                    </div>
                                    <p class="des">
                                        <a href="javascript:largeMap('119.874428', '32.419355', '江苏泰州经济开发区祥泰路1号')" target="_blank" class="to_map"><i class="ic ic_fac_lmap"></i>电子地图</a>
                                        <span class="titles">招聘人数：</span>1500人            <span class="titles title2">企业规模：</span>23000人<br>
                                        <span class="titles">招聘岗位：</span><span class="tp">长期工</span><span class="tp">小时工</span><br>
                                        <span class="titles">招聘要求：</span>18-45岁<i class="line"></i>性别不限									</p>
                                    <p class="fac_tag"><a href="/Company/102.html" target="_blank" class="to_fac btn btn_blue btn_m btn_round">查看</a><em>名企</em><em>不穿无尘服</em><em>年终奖</em><em>空调宿舍</em></p>
                                </div>
                            </li><li >
                                <a href="/Company/104.html" target="_blank" class="imgs"><img src="http://img.gonglf.com/company/7d47cf60cf92c8fcc0947f0486a5bea9.jpg@270h_370w_1e|0-0-370-270a" alt="常州瑞声20元/小时" class="imgs"></a>
                                <div class="cons">
                                    <div class="names">
                                        <span class="prices"><em>4000-5000</em>元/月</span>
                                        <h4><a href="/Company/104.html" target="_blank">常州瑞声20元/小时</a></h4>
                                    </div>
                                    <p class="des">
                                        <a href="javascript:largeMap('119.975838', '31.63994', '江苏省常州市武进区新常漕路3号瑞声科技园')" target="_blank" class="to_map"><i class="ic ic_fac_lmap"></i>电子地图</a>
                                        <span class="titles">招聘人数：</span>800人            <span class="titles title2">企业规模：</span>48000人<br>
                                        <span class="titles">招聘岗位：</span><span class="tp">小时工</span><span class="tp">普工</span><br>
                                        <span class="titles">招聘要求：</span>								男:18-38岁								女:18-40岁									</p>
                                    <p class="fac_tag"><a href="/Company/104.html" target="_blank" class="to_fac btn btn_blue btn_m btn_round">查看</a><em>名企</em><em>帅哥美女多</em><em>工作轻松</em><em>包吃包住</em></p>
                                </div>
                            </li><li >
                                <a href="/Company/105.html" target="_blank" class="imgs"><img src="http://img.gonglf.com/company/05d98808b3bf2e755919ac228587161d.png@270h_370w_1e|0-0-370-270a" alt="南京华宝21元/小时" class="imgs"></a>
                                <div class="cons">
                                    <div class="names">
                                        <span class="prices"><em>5000-6000</em>元/月</span>
                                        <h4><a href="/Company/105.html" target="_blank">南京华宝21元/小时</a></h4>
                                    </div>
                                    <p class="des">
                                        <a href="javascript:largeMap('118.816084', '31.89309', '江苏省南京市江宁区苏源大道68')" target="_blank" class="to_map"><i class="ic ic_fac_lmap"></i>电子地图</a>
                                        <span class="titles">招聘人数：</span>1000人            <span class="titles title2">企业规模：</span>15000人<br>
                                        <span class="titles">招聘岗位：</span><span class="tp">长期工</span><span class="tp">小时工</span><br>
                                        <span class="titles">招聘要求：</span>								男:18-40岁								女:18-45岁									</p>
                                    <p class="fac_tag"><a href="/Company/105.html" target="_blank" class="to_fac btn btn_blue btn_m btn_round">查看</a><em>名企</em><em>工作轻松</em><em>空调宿舍</em><em>环境优美</em></p>
                                </div>
                            </li><li >
                                <a href="/Company/106.html" target="_blank" class="imgs"><img src="http://img.gonglf.com/company/879a07c016ef4f83added496277cd716.jpg@270h_370w_1e|0-0-370-270a" alt="昆山纬创20元/小时" class="imgs"></a>
                                <div class="cons">
                                    <div class="names">
                                        <span class="prices"><em>4500-5000</em>元/月</span>
                                        <h4><a href="/Company/106.html" target="_blank">昆山纬创20元/小时</a></h4>
                                    </div>
                                    <p class="des">
                                        <a href="javascript:largeMap('120.966876', '31.363823', '玉山城南出口加工区第一大道168号')" target="_blank" class="to_map"><i class="ic ic_fac_lmap"></i>电子地图</a>
                                        <span class="titles">招聘人数：</span>1000人            <span class="titles title2">企业规模：</span>30000人<br>
                                        <span class="titles">招聘岗位：</span><span class="tp">长期工</span><span class="tp">小时工</span><span class="tp">普工</span><br>
                                        <span class="titles">招聘要求：</span>18-45岁<i class="line"></i>性别不限									</p>
                                    <p class="fac_tag"><a href="/Company/106.html" target="_blank" class="to_fac btn btn_blue btn_m btn_round">查看</a><em>名企</em><em>工作轻松</em><em>年终奖</em><em>多帅哥美女</em></p>
                                </div>
                            </li><li >
                                <a href="/Company/109.html" target="_blank" class="imgs"><img src="http://img.gonglf.com/company/5343e90c3329c49296fe4cb21e94ee20.jpg@270h_370w_1e|0-0-370-270a" alt="昆山圣美16元/小时" class="imgs"></a>
                                <div class="cons">
                                    <div class="names">
                                        <span class="prices"><em>3500-4500</em>元/月</span>
                                        <h4><a href="/Company/109.html" target="_blank">昆山圣美16元/小时</a></h4>
                                    </div>
                                    <p class="des">
                                        <a href="javascript:largeMap('121.014549', '31.458359', '城北黄浦江路或黄埔江北路609号')" target="_blank" class="to_map"><i class="ic ic_fac_lmap"></i>电子地图</a>
                                        <span class="titles">招聘人数：</span>200人            <span class="titles title2">企业规模：</span>8000人<br>
                                        <span class="titles">招聘岗位：</span><span class="tp">储备干部</span><span class="tp">长期工</span><span class="tp">普工</span><br>
                                        <span class="titles">招聘要求：</span>18-40岁<i class="line"></i>性别不限									</p>
                                    <p class="fac_tag"><a href="/Company/109.html" target="_blank" class="to_fac btn btn_blue btn_m btn_round">查看</a><em>名企</em><em>工作轻松</em><em>多帅哥美女</em><em>环境优美</em></p>
                                </div>
                            </li><li >
                                <a href="/Company/111.html" target="_blank" class="imgs"><img src="http://img.gonglf.com/company/71553ddae03363acae40a7fcac3f8fe0.jpg@270h_370w_1e|0-0-370-270a" alt="扬州骏升正式工" class="imgs"></a>
                                <div class="cons">
                                    <div class="names">
                                        <span class="prices"><em>4500-5500</em>元/月</span>
                                        <h4><a href="/Company/111.html" target="_blank">扬州骏升正式工</a></h4>
                                    </div>
                                    <p class="des">
                                        <a href="javascript:largeMap('119.411711', '33.111663', '宝应县氾水工业集中区骏升路1号')" target="_blank" class="to_map"><i class="ic ic_fac_lmap"></i>电子地图</a>
                                        <span class="titles">招聘人数：</span>500人            <span class="titles title2">企业规模：</span>900人<br>
                                        <span class="titles">招聘岗位：</span><span class="tp">长期工</span><span class="tp">普工</span><br>
                                        <span class="titles">招聘要求：</span>16-46岁<i class="line"></i>性别不限									</p>
                                    <p class="fac_tag"><a href="/Company/111.html" target="_blank" class="to_fac btn btn_blue btn_m btn_round">查看</a><em>名企</em><em>帅哥美女多</em><em>吃住在厂</em></p>
                                </div>
                            </li>					</ul>
                    </div>
                    <div class="sto_main_con" style="display: block;">
                        <ul class="store_local">
                            <li class="fac_queitem ic_type type2">暂无本地招聘信息</li>					</ul>
                    </div>
                    <div class="sto_main_con">
                        <ul class="store_adv_list clearfix">
                        </ul>
                    </div>
                    <div class="sto_main_con" >
                        <ul class="store_service">
                            <li>
                                <i class="ic ic_sto_t1"></i>
                                <div class="con">
                                    <h4>就业指导</h4>
                                    <p>为您宣传讲解就业问题，根据您的情况精准挑选合适的工厂，帮您找到满意的工作为止。</p>
                                </div>
                            </li>
                            <li>
                                <i class="ic ic_sto_t2"></i>
                                <div class="con">
                                    <h4>随时入职</h4>
                                    <p>咨询、报名进厂打工不收取您任何费用，选择满意工厂后，随时从老家一趟车直送您到厂门口。</p>
                                </div>
                            </li>
                            <li>
                                <i class="ic ic_sto_t3"></i>
                                <div class="con">
                                    <h4>跟踪服务</h4>
                                    <p>工立方在每一家企业都安排有驻厂老师，24小时随时到下车地点接您，并安排临时住宿。驻厂老师全程陪同您面试、入职、办理手续，并随您同吃同住，及时解决您工作、生活中遇到的任何问题。</p>
                                </div>
                            </li>
                            <li>
                                <i class="ic ic_sto_t4"></i>
                                <div class="con">
                                    <h4>无忧保障</h4>
                                    <p>本店会第一时间为您解答关于就业、婚恋等疑问，并为您提供优质相亲平台七月七婚恋网，有工作有对象，解决您的后顾之忧！</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="fac_main_question">
                    <div class="fac_title"><span class="fr"><em class="nums">（共4条）</em><a href="/Question/tiwen/type_id/48/type/2.html" target="_blank" class="btn btn_s btn_orange">我要提问</a></span><i class="ic ic_fac_t3"></i><h3>岗位问答</h3><span class="notes">该企业相关问题答案由工立方网和热心网友共同提供</span></div>
                    <ul class="fac_quelist">
                        <li class="fac_queitem">
                            <i class="ic ic_fac_ques1"></i>
                            <i class="ic ic_fac_ques2"></i>
                            <i class="ic ic_fac_ques3"></i>
                            <i class="ic ic_fac_ques4"></i>
                            <div class="items item_ask">
                                <span class="ic_type type1">问</span>
                                <div class="con">
                                    <p class="tit">尉氏有什么地方要人吗</p>
                                    <p class="des">2019-07-26 13:15:52  匿名</p>
                                </div>
                            </div>
                            <div class="items fac_que1">
                                <span class="ic_type type2">答</span>
                                <div class="con">
                                    你好，尉氏没有在招的工厂，想去打工可以去尉氏工立方门店报名。									</div>
                            </div>						</li><li class="fac_queitem">
                            <i class="ic ic_fac_ques1"></i>
                            <i class="ic ic_fac_ques2"></i>
                            <i class="ic ic_fac_ques3"></i>
                            <i class="ic ic_fac_ques4"></i>
                            <div class="items ">
                                <span class="ic_type type1">问</span>
                                <div class="con">
                                    <p class="tit">app报名烟台富士康了。还要去门店吗？</p>
                                    <p class="des">2018-03-05 11:44:09  glf_287147</p>
                                </div>
                            </div>
                        </li><li class="fac_queitem">
                            <i class="ic ic_fac_ques1"></i>
                            <i class="ic ic_fac_ques2"></i>
                            <i class="ic ic_fac_ques3"></i>
                            <i class="ic ic_fac_ques4"></i>
                            <div class="items item_ask">
                                <span class="ic_type type1">问</span>
                                <div class="con">
                                    <p class="tit">我手臂上有个伤疤，可以进哪个厂？</p>
                                    <p class="des">2017-05-31 11:40:59  匿名</p>
                                </div>
                            </div>
                            <div class="items fac_que1">
                                <span class="ic_type type2">答</span>
                                <div class="con">
                                    只要不明显哪个厂都可以进的，具体可以去门店咨询一下。									</div>
                            </div>						</li><li class="fac_queitem">
                            <i class="ic ic_fac_ques1"></i>
                            <i class="ic ic_fac_ques2"></i>
                            <i class="ic ic_fac_ques3"></i>
                            <i class="ic ic_fac_ques4"></i>
                            <div class="items item_ask">
                                <span class="ic_type type1">问</span>
                                <div class="con">
                                    <p class="tit">能拿到多少工资？</p>
                                    <p class="des">2017-05-31 11:13:22  匿名</p>
                                </div>
                            </div>
                            <div class="items fac_que1">
                                <span class="ic_type type2">答</span>
                                <div class="con">
                                    一般都是4000左右，看你个人能力了。									</div>
                            </div>						</li>				</ul>
                    <a href="/Question/48-2.html" target="_blank" class="fac_quelist_more">查看全部回答>></a>
                </div>		</div>
            <div class="s_r">

                <div class="fac_info fac_rlist">
                    <div class="ner_title"><i class="ic_line ic_ner_t"></i><h3>联系门店</h3></div>
                    <div class="fac_maps">
                        <div id="fac_maps" style="height: 190px;"></div>
                        <div class="con">
                            <p><span class="titles">门店地址：</span>尉氏县汽车北站红绿灯北50路西</p>
                            <p><span class="titles">报名电话：</span>0371-27912558<br>15993332511</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="fac_recom section">
            <div class="fac_title"><i class="line"></i><h3>大家都想去</h3></div>
            <ul class="fac_recom_list">
                <li>
                    <a href="/Company/104.html" class="imgs" target="_blank"><img src="http://img.gonglf.com/company/7d47cf60cf92c8fcc0947f0486a5bea9.jpg@270h_370w_1e|0-0-370-270a" alt="常州瑞声"></a>
                    <div class="con">
                        <a href="/Company/104.html" target="_blank" class="name">常州瑞声</a>
                        <p class="des">
                            男女不限<i class="line"></i> 18-40岁
                        </p>
                        <p class="price">￥5500-6500元/月</p>
                    </div>
                </li><li>
                    <a href="/Company/124.html" class="imgs" target="_blank"><img src="http://img.gonglf.com/company/d92626bb6fb481709fb4fdbe43977d22.jpg@270h_370w_1e|0-0-370-270a" alt="立讯精密工业（滁州）有限公司"></a>
                    <div class="con">
                        <a href="/Company/124.html" target="_blank" class="name">立讯精密工业（滁州）有限公司</a>
                        <p class="des">
                            男:16-40岁&nbsp;女:16-45岁
                        </p>
                        <p class="price">￥6000-7000元/月</p>
                    </div>
                </li><li>
                    <a href="/Company/139.html" class="imgs" target="_blank"><img src="http://img.gonglf.com/company/b708fe32b6e76bbd261762dbf3ff8b22.jpg@270h_370w_1e|0-0-370-270a" alt="昆山淳华"></a>
                    <div class="con">
                        <a href="/Company/139.html" target="_blank" class="name">昆山淳华</a>
                        <p class="des">
                            男女不限<i class="line"></i> 16-40岁
                        </p>
                        <p class="price">￥4000-5000元/月</p>
                    </div>
                </li><li>
                    <a href="/Company/105.html" class="imgs" target="_blank"><img src="http://img.gonglf.com/company/05d98808b3bf2e755919ac228587161d.png@270h_370w_1e|0-0-370-270a" alt="华宝（南京）科技有限公司"></a>
                    <div class="con">
                        <a href="/Company/105.html" target="_blank" class="name">华宝（南京）科技有限公司</a>
                        <p class="des">
                            男:18-40岁&nbsp;女:18-45岁
                        </p>
                        <p class="price">￥7000-7500元/月</p>
                    </div>
                </li><li>
                    <a href="/Company/204.html" class="imgs" target="_blank"><img src="http://img.gonglf.com/company/7e9504c85bbf145bf1662a69ae910f24.jpg@270h_370w_1e|0-0-370-270a" alt="山东歌尔声学股份有限公司"></a>
                    <div class="con">
                        <a href="/Company/204.html" target="_blank" class="name">山东歌尔声学股份有限公司</a>
                        <p class="des">
                            男女不限<i class="line"></i> 16-42岁
                        </p>
                        <p class="price">￥4500-5500元/月</p>
                    </div>
                </li>	</ul>
        </div></div>

    <div style="height:0;overflow:hidden;">
        <div class="layer_join layers" id="layer_join">
            <p class="to_login"><a href="/Login/index.html">我是会员>></a></p>

            <form action="" class="form form-horizontal" id="signup">
                <input type="hidden" name="type" value="2" /><!-- 门店入口类型 -->
                <input type="hidden" name="type_id" value="20012" /><!-- 门店ID -->
                <input type="hidden" name="type_name" value="工立方尉氏县就业服务站" /><!-- 门店名称 -->
                <div class="form-item">
                    <label class="form-label" for="">报名门店：</label>
                    <div><input type="hidden" name="store_old" value="工立方尉氏县就业服务站"></div>
                    <div class="form-field form-field_txt">工立方尉氏县就业服务站</div>
                </div>
                <div class="form-item">
                    <label class="form-label" for="">姓名：</label>
                    <div class="form-field"><input type="text" placeholder="请输入您的姓名" class="form-text" id="" name="user_name"></div>
                </div>
                <div class="form-item">
                    <label class="form-label" for="">电话：</label>
                    <div class="form-field"><input type="text" placeholder="请输入您的联系电话" class="form-text" id="inputMobile" name="mobile"></div>
                </div>

                <div class="form-item">
                    <a href="javascript:signup()" class="btn btn_b btn_orange">确定</a>
                </div>
            </form>
        </div>
        <div class="layer_recom layers" id="layer_recom" >
            <form action="" class="form form-horizontal" id="recommend">
                <input type="hidden" name="type" value="2" /><!-- 入口类型 -->
                <input type="hidden" name="type_id" value="20012" /><!-- 公司ID -->
                <input type="hidden" name="type_name" value="工立方尉氏县就业服务站" /><!-- 公司名称 -->
                <div class="form-item">
                    <label for="" class="form-label"></label>
                    <div class="form-field"><p class="recom_note">提示：所推荐工友在一个月内有效</p></div>
                </div>
                <div class="form-item">
                    <label class="form-label" for="">朋友姓名：</label>
                    <div class="form-field"><input type="text" placeholder="请填写真实姓名" class="form-text" name="name"></div>
                </div>
                <div class="form-item">
                    <label class="form-label" for="">朋友性别：</label>
                    <div class="form-field form-field-rc">
                        <label class="form-label-rc"><input type="radio" checked="checked" value="1" class="form-radio" name="sex"><span>男</span></label>
                        <label class="form-label-rc"><input type="radio" value="2" class="form-radio" name="sex"><span>女</span></label>
                    </div>
                </div>
                <div class="form-item">
                    <label class="form-label" for="">朋友年龄：</label>
                    <div class="form-field"><select name="age" class="form-select">
                            <option value="16">16岁</option><option value="17">17岁</option><option value="18">18岁</option><option value="19">19岁</option><option value="20">20岁</option><option value="21">21岁</option><option value="22">22岁</option><option value="23">23岁</option><option value="24">24岁</option><option value="25">25岁</option><option value="26">26岁</option><option value="27">27岁</option><option value="28">28岁</option><option value="29">29岁</option><option value="30">30岁</option><option value="31">31岁</option><option value="32">32岁</option><option value="33">33岁</option><option value="34">34岁</option><option value="35">35岁</option><option value="36">36岁</option><option value="37">37岁</option><option value="38">38岁</option><option value="39">39岁</option><option value="40">40岁</option><option value="41">41岁</option><option value="42">42岁</option><option value="43">43岁</option><option value="44">44岁</option><option value="45">45岁</option><option value="46">46岁</option><option value="47">47岁</option><option value="48">48岁</option><option value="49">49岁</option><option value="50">50岁</option>				</select>
                    </div>
                </div>
                <div class="form-item">
                    <label class="form-label" for="">朋友手机：</label>
                    <div class="form-field"><input type="text" placeholder="请填写朋友手机" class="form-text" name="mobile"></div>
                </div>
                <div class="form-item form-item_address">
                    <label class="form-label" for="">朋友现在哪：</label>
                    <div class="form-field">
                        <select name="lo_p" class="form-select inline-ele region">
                            <option value="">请选择</option>
                            <option value="110000" data-id="北京">北京</option><option value="120000" data-id="天津">天津</option><option value="130000" data-id="河北省">河北省</option><option value="140000" data-id="山西省">山西省</option><option value="150000" data-id="内蒙古自治区">内蒙古自治区</option><option value="210000" data-id="辽宁省">辽宁省</option><option value="220000" data-id="吉林省">吉林省</option><option value="230000" data-id="黑龙江省">黑龙江省</option><option value="310000" data-id="上海">上海</option><option value="320000" data-id="江苏省">江苏省</option><option value="330000" data-id="浙江省">浙江省</option><option value="340000" data-id="安徽省">安徽省</option><option value="350000" data-id="福建省">福建省</option><option value="360000" data-id="江西省">江西省</option><option value="370000" data-id="山东省">山东省</option><option value="410000" data-id="河南省">河南省</option><option value="420000" data-id="湖北省">湖北省</option><option value="430000" data-id="湖南省">湖南省</option><option value="440000" data-id="广东省">广东省</option><option value="450000" data-id="广西">广西</option><option value="460000" data-id="海南省">海南省</option><option value="500000" data-id="重庆">重庆</option><option value="510000" data-id="四川省">四川省</option><option value="520000" data-id="贵州省">贵州省</option><option value="530000" data-id="云南省">云南省</option><option value="540000" data-id="西藏自治区">西藏自治区</option><option value="610000" data-id="陕西省">陕西省</option><option value="620000" data-id="甘肃省">甘肃省</option><option value="630000" data-id="青海省">青海省</option><option value="640000" data-id="宁夏回族自治区">宁夏回族自治区</option><option value="650000" data-id="新疆维吾尔自治区">新疆维吾尔自治区</option><option value="710000" data-id="台湾">台湾</option><option value="810000" data-id="香港特别行政区">香港特别行政区</option><option value="820000" data-id="澳门特别行政区">澳门特别行政区</option>					</select>
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
                    <div class="form-field"><input type="text" placeholder="请填写真实姓名" class="form-text" name="tj_name"></div>
                </div>
                <div class="form-item">
                    <label class="form-label" for="">我的电话：</label>
                    <div class="form-field"><input type="text" placeholder="请填写您的手机号" class="form-text" name="tj_mobile"></div>
                </div>			<div class="form-item form-item_imark">
                    <label class="form-label" for="">验证码：</label>
                    <div class="form-field"><input type="text" placeholder="请输入验证码" class="form-text" name="verify"><img src="/Public/verify/length/4/fontSize/16/imageW/128/imageH/43/flag/recomSms_.html"  onclick="this.src=this.src"></div>
                </div>
                <div class="form-item">
                    <a href="javascript:recommend();" class="btn btn_b btn_orange">确定</a>
                </div>
            </form>
        </div>
        <div class="layer_join layers" id="layer_hanjia">
            <form action="" class="form form-horizontal" style="margin-top: 60px;">
                <div class="form-item">
                    <label class="form-label" for="">姓名：</label>
                    <div class="form-field"><input type="text" placeholder="请输入您的姓名" class="form-text" id="" name=""></div>
                </div>
                <div class="form-item">
                    <label class="form-label" for="">手机号：</label>
                    <div class="form-field"><input type="text" placeholder="请输入您的手机号" class="form-text"  name=""></div>
                </div>
                <div class="form-item">
                    <label class="form-label" for="">所在学校：</label>
                    <div class="form-field"><input type="text" placeholder="请输入您所在的学校" class="form-text" id="" name=""></div>
                </div>
                <div class="form-item form-item_imark">
                    <label class="form-label" for="">验证码：</label>
                    <div class="form-field"><input type="text" placeholder="请输入验证码" class="form-text" id="" name=""><img src="http://www.gonglf.com/Public/verify/length/4/fontSize/16/imageW/128/imageH/43/flag/signupSms_.html" alt=""></div>
                </div>
                <div class="form-item form-item_nmark">
                    <label class="form-label" for="">短信验证码：</label>
                    <div class="form-field"><input type="text" placeholder="输入验证码" class="form-text" id="" name=""><a href="javascript:void(0);" class="btn btn_orange">获取验证码</a></div>
                </div>
                <div class="form-item">
                    <label class="form-label" for="">意向城市：</label>
                    <div class="form-field">
                        <select name="" id="" class="form-select ">
                            <option value="0" selected disabled>请选择</option>
                            <option value="1">常州</option>
                            <option value="2">滁州</option>
                            <option value="3">东莞</option>
                            <option value="1">昆山</option>
                            <option value="2">南京</option>
                            <option value="3">宿迁</option>
                            <option value="1">泰州</option>
                            <option value="2">烟台</option>
                            <option value="3">扬州</option>
                        </select>

                    </div>
                </div>
                <div class="form-item">
                    <a href="javascript:void(0);" class="btn btn_b btn_orange">确定</a>
                </div>
            </form>
        </div>
    </div>
@endsection

@section('scripts')
    <script src="{{asset("/assets/home/js/fac.js")}}"></script>
    <script src="{{asset("/assets/home/js/push.js")}}"></script>
@endsection


