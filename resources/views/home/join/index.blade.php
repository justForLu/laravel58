@extends('home.layout.base')

@section('styles')
    <link rel="stylesheet" href="{{asset("/assets/home/css/join.css")}}">
    <style type="text/css">
        .form-control {
            border: none;
            width: 310px;
        }
    </style>
@endsection

@section('content')
    <div class="wrap">
        <div class="banner">
            <img class="main" src="{{asset("/assets/home/images/banner.jpg")}}">
            <h2 class="title ani-view fade-in-down fadeInDown animate">东泰集团&nbsp;·&nbsp;工立方打工网</h2>
            <img class="instru zoomIn" src="{{asset("/assets/home/images/btitle.png")}}">
            <div class="service">
                <img class="ani-view fade-in-down fadeInDown" src="{{asset("/assets/home/images/ban1.png")}}">
                <img class="ani-view fade-in-down fadeInDown" src="{{asset("/assets/home/images/ban2.png")}}">
                <img class="ani-view fade-in-down fadeInDown" src="{{asset("/assets/home/images/ban3.png")}}">
                <img class="ani-view fade-in-down fadeInDown" src="{{asset("/assets/home/images/ban4.png")}}">
            </div>
            <p class="ani-view fade-in-down fadeInDown">随着中国经济的发展与变革，国内劳务市场已然发生巨变。工人找工作难，已转变为工厂用工荒，劳务中介也从收取工人费用，变为免费招工，拼价格、拼服务。单打独斗躺着赚钱的时代已经一去不复返，在劳务市场竞争白热化的今天，必须靠品牌、体量、服务才能立于不败之地！</p>
        </div>
    </div>

    <div class="wrap ani-view st1 st1_con">
        <div class="section">
            <div class="vs">
                <div class="left fade-in-left2">
                    传统劳务现状
                </div>
                <div class="middle">
                    <img src="{{asset("/assets/home/images/s1_vs.png")}}">
                </div>
                <div class="right fade-in-right2">
                    工立方六大优势
                </div>
            </div>
            <div class="vs-item vs-item1">
                <div class="left fade-in-left2">
                    <h2>员工工资无保障</h2>
                    <p>做多手单，对员工承诺无法兑现，员工离职后拿不到工资是常事，严重影响自身信誉和后续招工。</p>
                </div>
                <div class="middle">
                    <img src="{{asset("/assets/home/images/s1_link.png")}}" alt="">
                </div>
                <div class="right fade-in-right2">
                    <h2>员工工资有保障</h2>
                    <p>工立方给予小时补贴，员工工资高，十五年无一例扣款发生，信誉担保，员工黏性强、忠诚度高。</p>
                </div>
            </div>
            <div class="vs-item vs-item2">
                <div class="left fade-in-left2">
                    <h2>门店利润无保障</h2>
                    <p>规模小，难做一手单，被层层盘剥，到手利润所剩无几；上家不诚信，眼见到手的辛苦钱被拖欠、克扣。</p>
                </div>
                <div class="middle">
                    <img src="{{asset("/assets/home/images/s1_link.png")}}" alt="">
                </div>
                <div class="right fade-in-right2">
                    <h2>利润清晰有保障</h2>
                    <p>完善的劳务管理结算系统，员工工时、利润明细可见可查，每月月底准时返还上月利润，没有后顾之忧。</p>
                </div>
            </div>
            <div class="vs-item vs-item3">
                <div class="left fade-in-left2">
                    <h2>员工离职率高</h2>
                    <p>员工进厂后，上家劳务公司服务跟不上，员工遇到问题驻厂老师要么推诿，要么态度极差，使员工不稳定，流失率高。</p>
                </div>
                <div class="middle">
                    <img src="{{asset("/assets/home/images/s1_link.png")}}" alt="">
                </div>
                <div class="right fade-in-right2">
                    <h2>员工在职率高</h2>
                    <p>合作企业均有驻厂全程服务，24小时接送员工，帮离职员工转厂、返乡车辆安排等，保障员工在职，维护员工稳定。</p>
                </div>
            </div>
            <div class="vs-item vs-item4">
                <div class="left fade-in-left2">
                    <h2>驻厂老师乱挖人</h2>
                    <p>驻厂老师待遇低，人员素质参差不齐，心思不在服务，整日惦记业务，经常倒单、挖人。</p>
                </div>
                <div class="middle">
                    <img src="{{asset("/assets/home/images/s1_link.png")}}" alt="">
                </div>
                <div class="right fade-in-right2">
                    <h2>绝对避免乱挖人</h2>
                    <p>所有驻厂老师经过严格的系统培训，薪资待遇高出市场2倍以上，专心做服务，杜绝做业务。</p>
                </div>
            </div>
            <div class="vs-item vs-item5">
                <div class="left fade-in-left2">
                    <h2>运营成本过高</h2>
                    <p>招聘员工难度大，输送员工不放心，每天奔波在乡下与工厂之间，耗费精力并且车费、食宿等开支庞大。</p>
                </div>
                <div class="middle">
                    <img src="{{asset("/assets/home/images/s1_link.png")}}" alt="">
                </div>
                <div class="right fade-in-right2">
                    <h2>低成本高效率</h2>
                    <p>统一门店形象，统一宣传方案，只需在当地做好宣传工作，业务流程缩减70%，省时，省力，省心，赚钱！</p>
                </div>
            </div>
            <div class="vs-item vs-item6">
                <div class="left fade-in-left2">
                    <h2>恶性竞争不挣钱</h2>
                    <p>利润空间本就不高，同行之间恶性竞争，为了多招人，争着补贴员工，一年做到头不赚钱。</p>
                </div>
                <div class="middle">
                    <img src="{{asset("/assets/home/images/s1_link.png")}}" alt="">
                </div>
                <div class="right fade-in-right2">
                    <h2>一手资源利润高</h2>
                    <p>加盟店只做一手单，不存在中间人分利润，利润空间高，不惧怕同行竞争，当地一家独大。</p>
                </div>
            </div>
        </div>
    </div>

    <div class="wrap st2">
        <div class="section">
            <h2 class="stp_tit ani-view fade-in-down">选择实力与品牌，工立方做你的后盾</h2>
            <p class="notes ani-view fade-in-down">工立方打工网成立于2005年，是东泰集团重金打造的一款为农村朋友外出务工服务的求职平台，现已在全国20余省开设600余家县级实体服务门店，覆盖人口逾6亿。公司与上百家国际名企直接合作，只做一手单！</p>
            <div class="st2_swp ani-view fade-in-down">
                <div class="swiper-container " id="st2_swp">
                    <div class="swiper-wrapper" style="width: 7200px; height: 345px; transform: translate3d(-2400px, 0px, 0px); transition-duration: 0.3s;">
                        <div class="swiper-slide swiper-slide-duplicate" style="width: 1200px; height: 345px;">
                            <div class="clearfix">
                                <img src="{{asset("/assets/home/images/sp_41.jpg")}}" alt="">
                                <img src="{{asset("/assets/home/images/sp_42.jpg")}}" alt="">
                                <img src="{{asset("/assets/home/images/sp_43.jpg")}}" alt="">
                            </div>
                            <p>完善的培训体系，了解工厂、学会运营，有效宣传，加速奔跑！</p>
                        </div>
                        <div class="swiper-slide" style="width: 1200px; height: 345px;">
                            <div class="clearfix">
                                <img src="{{asset("/assets/home/images/sp_11.jpg")}}" alt="">
                                <img src="{{asset("/assets/home/images/sp_12.jpg")}}" alt="">
                                <img src="{{asset("/assets/home/images/sp_13.jpg")}}" alt="">
                            </div>
                            <p>顶尖的研发团队，铸就强大的平台与先进的软件，处处先人一步。</p>
                        </div>
                        <div class="swiper-slide swiper-slide-visible swiper-slide-active" style="width: 1200px; height: 345px;">
                            <div class="clearfix">
                                <img src="{{asset("/assets/home/images/sp_21.jpg")}}" alt="">
                                <img src="{{asset("/assets/home/images/sp_22.jpg")}}" alt="">
                                <img src="{{asset("/assets/home/images/sp_23.jpg")}}" alt="">
                            </div>
                            <p>专业的客服团队，实时在线，用心沟通，耐心解答，轻松解忧。</p>
                        </div>
                        <div class="swiper-slide" style="width: 1200px; height: 345px;">
                            <div class="clearfix">
                                <img src="{{asset("/assets/home/images/sp_31.jpg")}}" alt="">
                                <img src="{{asset("/assets/home/images/sp_32.jpg")}}" alt="">
                                <img src="{{asset("/assets/home/images/sp_33.jpg")}}" alt="">
                            </div>
                            <p>强大的驻厂团队，充足的接送车辆，一天24小时，时刻准备着！</p>
                        </div>
                        <div class="swiper-slide" style="width: 1200px; height: 345px;">
                            <div class="clearfix">
                                <img src="{{asset("/assets/home/images/sp_41.jpg")}}" alt="">
                                <img src="{{asset("/assets/home/images/sp_42.jpg")}}" alt="">
                                <img src="{{asset("/assets/home/images/sp_43.jpg")}}" alt="">
                            </div>
                            <p>完善的培训体系，了解工厂、学会运营，有效宣传，加速奔跑！</p>
                        </div>
                        <div class="swiper-slide swiper-slide-duplicate" style="width: 1200px; height: 345px;">
                            <div class="clearfix">
                                <img src="{{asset("/assets/home/images/sp_11.jpg")}}" alt="">
                                <img src="{{asset("/assets/home/images/sp_12.jpg")}}" alt="">
                                <img src="{{asset("/assets/home/images/sp_13.jpg")}}" alt="">
                            </div>
                            <p>顶尖的研发团队，铸就强大的平台与先进的软件，处处先人一步。</p>
                        </div></div>

                </div>
                <a href="javascript:void(0);" class="btn_arrow arrow-left">
                    <img src="{{asset("/assets/home/images/sp_l.png")}}" alt="">
                </a>
                <a href="javascript:void(0);" class="btn_arrow arrow-right">
                    <img src="{{asset("/assets/home/images/sp_r.png")}}" alt="">
                </a>
                <div class="pagination">
                    <span class="swiper-pagination-switch"></span>
                    <span class="swiper-pagination-switch swiper-visible-switch swiper-active-switch"></span>
                    <span class="swiper-pagination-switch"></span>
                    <span class="swiper-pagination-switch"></span>
                </div>
            </div>
        </div>
    </div>
    <div class="wrap st3">
        <div class="section">
            <h2 class="stp_tit ani-view fade-in-down">工立方部分合作企业一览</h2>
            <ul class="st3_faclist ani-view clearfix" id="st3_faclist">
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_01.jpg")}}" alt="">
                    <p>富士康集团</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_02.jpg")}}" alt="">
                    <p>英华达电子</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_03.jpg")}}" alt="">
                    <p>华宝电子</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_04.jpg")}}" alt="">
                    <p>仁宝电脑</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_05.jpg")}}" alt="">
                    <p>纬创资通</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_06.jpg")}}" alt="">
                    <p>可成集团</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_07.jpg")}}" alt="">
                    <p>世硕科技</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_08.jpg")}}" alt="">
                    <p>瑞声科技</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_09.jpg")}}" alt="">
                    <p>中达电子</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_10.jpg")}}" alt="">
                    <p>光宝电子</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_11.jpg")}}" alt="">
                    <p>淳华科技</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_12.jpg")}}" alt="">
                    <p>嘉联益</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_13.jpg")}}" alt="">
                    <p>联滔电子</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_14.jpg")}}" alt="">
                    <p>三爱司</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_15.jpg")}}" alt="">
                    <p>纬视晶</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_16.jpg")}}" alt="">
                    <p>立讯科技</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_17.jpg")}}" alt="">
                    <p>韩华电子</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_18.jpg")}}" alt="">
                    <p>苹果</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_19.jpg")}}" alt="">
                    <p>三星</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_20.jpg")}}" alt="">
                    <p>达方电子</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_21.jpg")}}" alt="">
                    <p>华硕</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_22.jpg")}}" alt="">
                    <p>歌尔声学</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_23.jpg")}}" alt="">
                    <p>松下电子</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_24.jpg")}}" alt="">
                    <p>维信集团</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_25.jpg")}}" alt="">
                    <p>伟创力</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_26.jpg")}}" alt="">
                    <p>友达光电</p>
                </li>
                <li>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s3_27.jpg")}}" alt="">
                    <p>骏升科技</p>
                </li>
            </ul>
            <ul class="st3_rylist clearfix" id="st3_rylist">
                <li>
                    <a href="javascript:void(0);">
                        <div class="imgs">
                            <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s31.jpg")}}" alt="">
                        </div>
                        <p>南京华宝人资处长冯彦文向工立方授牌</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                        <div class="imgs">
                            <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s32.jpg")}}" alt="">
                        </div>
                        <p>可成集团高级人事经理林志斌向工立方授牌</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                        <div class="imgs">
                            <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s33.jpg")}}" alt="">
                        </div>
                        <p>昆山纬创招募课长周晓莉女士向工立方授牌</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                        <div class="imgs">
                            <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s34.jpg")}}" alt="">
                        </div>
                        <p>常州瑞声科技人资经理陈宇向工立方授牌</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="wrap st4">
        <div class="section ">
            <h2 class="stp_tit ani-view fade-in-down">互联网+时代  大数据铸就精准价值</h2>
            <div class="st4_con">
                <i class="ic_jt ic_tp"></i>
                <i class="ic_jt ic_rt"></i>
                <ul class="st4_ul ani-view" id="st4_ul">
                    <li data-height="356">
                        <div class="it_con val1">
                            <p class="it_val"><em id="counter-value1">0</em>+人</p>
                            <img src="{{asset("/assets/home/images/st4_light.png")}}" alt="">
                        </div>
                        <p class="names">APP<br>会员注册量</p>
                    </li>
                    <li data-height="476">
                        <div class="it_con val2">
                            <p class="it_val"><em id="counter-value2">0</em>+次</p>
                            <img src="{{asset("/assets/home/images/st4_light.png")}}" alt="">
                        </div>
                        <p class="names">APP<br>会员下载量累计</p>
                    </li>
                    <li data-height="282">
                        <div class="it_con val3">
                            <p class="it_val"><em id="counter-value3">0</em>+人</p>
                            <img src="{{asset("/assets/home/images/st4_light.png")}}" alt="">
                        </div>
                        <p class="names">日均在线<br>活跃用户</p>
                    </li>
                    <li data-height="106">
                        <div class="it_con val4">
                            <p class="it_val"><em id="counter-value4">0</em>家</p>
                            <img src="{{asset("/assets/home/images/st4_light2.png")}}" alt="">
                        </div>
                        <p class="names">合作大型<br>知名企业</p>
                    </li>
                    <li data-height="323">
                        <div class="it_con val5">
                            <p class="it_val"><em id="counter-value5">0</em>+人次</p>
                            <img src="{{asset("/assets/home/images/st4_light.png")}}" alt="">
                        </div>
                        <p class="names">年输送员工<br></p>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="wrap st5">
        <div class="section">
            <h2 class="ani-view fade-in-down">有实力，更有社会影响力</h2>
            <ul>
                <li class="ani-view fade-in-down">
                    <div class="layer"></div>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s51.jpg")}}">
                    <div>工立方全国百名贫困大学生爱心助学活动</div>
                </li>
                <li class="ani-view fade-in-down" style="animation-delay: .2s;">
                    <div class="layer"></div>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s52.jpg")}}">
                    <div>工立方入驻中国·中原人力资源服务产业园</div>
                </li>
                <li class="ani-view fade-in-down" style="animation-delay: .4s;">
                    <div class="layer"></div>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s53.jpg")}}">
                    <div>受邀参加国务院在宁夏固原举办的扶贫现场会</div>
                </li>
                <li class="ani-view fade-in-down" style="animation-delay: .6s;">
                    <div class="layer"></div>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s54.jpg")}}">
                    <div>河南省法制频道对工立方打工网跟踪报道</div>
                </li>
                <li class="ani-view fade-in-down" style="animation-delay: .8s;">
                    <div class="layer"></div>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s55.jpg")}}">
                    <div>工立方被授予河南省扶贫开发协会副会长单位</div>
                </li>
                <li class="ani-view fade-in-down" style="animation-delay: 1s;">
                    <div class="layer"></div>
                    <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/s56.jpg")}}">
                    <div>受邀参加国务院在广西上林举办的扶贫现场会</div>
                </li>
            </ul>
            <p class="ani-view fade-in-down">论规模、实力、服务、渠道、政府关系与社会影响力，工立方打工网都稳稳位于国内劳务行业金字塔顶端！</p>
            <p class="ani-view fade-in-down">选择工立方，相信品牌的力量！</p>
        </div>
    </div>

    <div class="wrap st6">
        <div class="section st6_con ani-view" id="st6">
            <h2 class="ani-view fade-in-down">八大扶持保障  助你快速发家</h2>
            <div class="num0 ani-view rotate-in">
                <img src="{{asset("/assets/home/images/s69.png")}}">
            </div>
            <div class="num-left">
                <div class="num num1">
                    <div class="num-txt ani-view fade-in-right">
                        <em>NO.1</em>
                        <span>15年专业经验，定期组织培训，日送人量最高可达3000+</span>
                    </div>
                    <div class="line"></div>
                </div>
                <div class="num num3">
                    <div class="num-txt ani-view fade-in-right">
                        <em>NO.3</em>
                        <span>网站平台资源免费共享，总部统一宣传推广</span>
                    </div>
                    <div class="line"></div>
                </div>
                <div class="num num5">
                    <div class="num-txt ani-view fade-in-right">
                        <em>NO.5</em>
                        <span>提供近百家大型企业送工管道</span>
                    </div>
                    <div class="line"></div>
                </div>
                <div class="num num7">
                    <div class="num-txt ani-view fade-in-right">
                        <em>NO.7</em>
                        <span>总部提供客服、驻厂全程服务，让每位用户都成为回头客</span>
                    </div>
                    <div class="line"></div>
                </div>
            </div>
            <div class="num-right">
                <div class="num num2">
                    <div class="num-txt ani-view fade-in-left">
                        <em>NO.2</em>
                        <span>协助选址、提供装修方案</span>
                    </div>
                    <div class="line"></div>
                </div>
                <div class="num num4">
                    <div class="num-txt ani-view fade-in-left">
                        <em>NO.4</em>
                        <span>开设专属后台账号，客户资源保密</span>
                    </div>
                    <div class="line"></div>
                </div>
                <div class="num num6">
                    <div class="num-txt ani-view fade-in-left">
                        <em>NO.6</em>
                        <span>不定期组织工厂实地考察</span>
                    </div>
                    <div class="line"></div>
                </div>
                <div class="num num8">
                    <div class="num-txt ani-view fade-in-left">
                        <em>NO.8</em>
                        <span>政府、企业各项业务公关支持</span>
                    </div>
                    <div class="line"></div>
                </div>
            </div>
        </div>
    </div>

    <div class="wrap st7 ani-view">
        <div class="section">
            <h2 class="ani-view fade-in-down">加盟条件</h2>
            <div class="txt ani-view fade-in-down">
                <p class="title animate"><em>必备条件：</em>有两年以上的同行业相关经验</p>
                <h2>辅助条件：有以下其中1条即可</h2>
                <ul>
                    <li>
                        <span>1</span>
                        在乡镇或县城开有招工门店；
                    </li>
                    <li>
                        <span>2</span>
                        你是一家人力资源公司；
                    </li>
                    <li>
                        <span>3</span>
                        你是一家人才市场；
                    </li>
                    <li>
                        <span>4</span>
                        你是一家职业培训机构；
                    </li>
                    <li>
                        <span>5</span>
                        你是一个有梦想的创业者，诚信，博爱，有担当，愿意去帮助更多的人；
                    </li>
                </ul>
                <p class="bottom">工立方打工网期待你的加入，一起帮助更多的人，一起打造良好、健康的劳务市场，一起把事业做到新的高峰！</p>
            </div>
            <img class="img2 ani-view fade-in-right lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/st9_8.png")}}" alt="">
        </div>
    </div>

    <div class="wrap st8 ani-view">
        <div class="section">
            <h2 class="stp_tit ani-view fade-in-down">加盟流程</h2>
            <ul class="st8_list clearfix" id="st8_list">
                <li>
                    <div class="con">
                        <i class="ic_bg"></i>
                        <div class="cons">
                            <div class="txt">
                                <em>1</em><span>相互了解<br>筛选对象</span>
                            </div>
                        </div>
                    </div>
                    <i class="ic_right"></i>
                </li>
                <li>
                    <div class="con">
                        <i class="ic_bg"></i>
                        <div class="cons">
                            <div class="txt">
                                <em>2</em><span>总部考察<br>签订协议</span>
                            </div>
                        </div>
                    </div>
                    <i class="ic_right"></i>
                </li>
                <li>
                    <div class="con">
                        <i class="ic_bg"></i>
                        <div class="cons">
                            <div class="txt">
                                <em>3</em><span>统一标准装修<br>制定宣传方案</span>
                            </div>
                        </div>
                    </div>
                    <i class="ic_right"></i>
                </li>
                <li>
                    <div class="con">
                        <i class="ic_bg"></i>
                        <div class="cons">
                            <div class="txt">
                                <em>4</em><span>开通线上后台<br>并培训至熟练<br>使用</span>
                            </div>
                        </div>
                    </div>
                    <i class="ic_right"></i>
                </li>
                <li>
                    <div class="con">
                        <i class="ic_bg"></i>
                        <div class="cons">
                            <div class="txt">
                                <em>5</em><span>正常输送每月<br>按时结算费用</span>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="zhaoshang-foot">
        <div class="section">
            <div class="left">
                <h2>Attention<em>关注微信</em></h2>
                <img class="lazy" src="{{asset("/assets/home/images/load.gif")}}" data-original="{{asset("/assets/home/images/code.jpg")}}">
                <p>扫一扫关注工立方官方微信</p>
                <p>更多信息尽在掌握</p>
            </div>
            <div class="middle">
                <h2>Activity<em>快速预约加盟</em></h2>
                <form action="{{url("/home/join/join_in")}}" method="post" class="J_ajaxForm">
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <div>
                        <span>类型 ：</span>
                        {{\App\Enums\JoinTypeEnum::enumSelect(\App\Enums\JoinTypeEnum::SHOP,false,'type')}}
                    </div>
                    <div>
                        <span>姓名 ：</span>
                        <input type="text" name="name" value="">
                    </div>
                    <div>
                        <span>地址 ：</span>
                        <input type="text" name="address" value="">
                    </div>
                    <div>
                        <span>电话 ：</span>
                        <input type="text" name="mobile" value="">
                    </div>
                    <div>
                        <span>邮箱 ：</span>
                        <input type="text" name="email" value="">
                    </div>
                    <div>
                        <span class="last">从业经验 ：</span>
                        <input type="text" name="years" id="workyear" value="">
                        <i>年</i>
                    </div>
                    <button type="submit" class="J_ajax_submit_btn">马上预约 &gt;</button>
                </form>
            </div>
            <div class="right">
                <h2>Contact<em>联系我们</em></h2>
                <img src="{{asset("/assets/home/images/tel.png")}}" alt="">
                <p class="tel">0371-55338888</p>
                <p class="tel">16637128500 <span>韩总</span></p>
                <p class="add">地址：郑州市郑东新区东风南路绿地之窗云峰B座2716</p>
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script src="{{asset("/assets/home/js/swiper.js")}}"></script>
    <script src="{{asset("/assets/home/js/lazyload.js")}}"></script>
    <script src="{{asset("/assets/home/js/layer.js")}}"></script>
    <script src="{{asset("/assets/home/js/join.js")}}"></script>
@endsection


