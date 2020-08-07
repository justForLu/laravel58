@extends('home.layout.base')

@section('styles')
    <link rel="stylesheet" href="{{asset("/assets/home/css/style-index.css")}}">
@endsection

@section('content')
    <div class="banner">
        <div class="slide">
            <ul class="pics">
                <li style="background:url({{asset("/assets/home/images/banner1.jpg")}}) center top no-repeat;">
                    <a href="" target="_blank" class="slide_a" title="吴江大智"></a>
                </li>
                <li style="background:url({{asset("/assets/home/images/banner2.png")}}) center top no-repeat;">
                    <a href="" target="_blank" class="slide_a" title="滁州立讯"></a>
                </li>
                <li style="background:url({{asset("/assets/home/images/banner3.png")}}) center top no-repeat;">
                    <a href="" target="_blank" class="slide_a" title="工价高"></a>
                </li>
                <li style="background:url({{asset("/assets/home/images/banner4.png")}}) center top no-repeat;">
                    <a href="" target="_blank" class="slide_a" title="电子厂门口的陷阱"></a>
                </li>
            </ul>
            <div class="section slide_nav">
                <div class="num">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </div>
        </div>
    </div>

    <div class="section">
        <ul class="ind_quick">
            <li>
                <a href="">
                    <em>找工作</em>知名企业任您挑<br>100%优质的真实岗位等你入职
                    <span class="quick_ico ico1"></span><i>挑岗位</i>
                </a>
            </li>
            <li>
                <a href="">
                    <em>门店服务</em>服务就在家门口<br>全国800余家门店，时刻准备为您服务
                    <span class="quick_ico ico2"></span><i>去咨询</i>
                </a>
            </li>
            <li>
                <a href="" id="btn_join_layer">
                    <em>报名有奖</em>报名入职有大奖<br>在线报名还能领取现金大奖
                    <span class="quick_ico ico3"></span><i>我要报名</i>
                </a>
            </li>
            <li><a href="" id="btn_recom_layer">
                    <em>推荐有奖</em>推荐好友入职有大奖<br>单笔最高奖2000元，累计奖金无上限
                    <span class="quick_ico ico4"></span><i>我来推荐</i>
                </a>
            </li>
        </ul>

        <div class="ii_list">
            <div class="ii_head">
                <div class="ii_key">
                    <a href="" target="_blank">更多招聘 ></a>
                </div>
                <h2 class="ii_tit"><em>今日</em>热招</h2>
            </div>
            <ul class="ii_cont">
                <li>
                    <div class="ii_pic">
                        <a href="" target="_blank">
                            <img src="{{asset("/assets/home/images/factory1.jpg")}}" alt="长沙知名大型电子厂22元/小时"/>
                            <i class="ic_hot ic_ind_fachot"></i>
                        </a>
                    </div>
                    <div class="ii_con">
                        <a href="" target="_blank" class="name">长沙知名大型电子厂22元/小时</a>
                        <p>招聘岗位：长期工、小时工<br>
                            招聘要求：男女不限<i class="line"></i>18-48岁 <br>
                            综合薪资：<span class="price">5500-6500元/月</span>
                        </p>
                    </div>
                </li>
                <li>
                    <div class="ii_pic">
                        <a href="" target="_blank">
                            <img src="{{asset("/assets/home/images/factory2.jpg")}}" alt="昆山联滔21元/小时"/>
                            <i class="ic_hot ic_ind_fachot"></i>
                        </a>
                    </div>
                    <div class="ii_con">
                        <a href="" target="_blank" class="name">昆山联滔21元/小时</a>
                        <p>招聘岗位：长期工、普工<br>
                            招聘要求： 男19-40岁 <i class="line"></i>女19-42岁<br>
                            综合薪资：<span class="price">5500-6000元/月</span>
                        </p>
                    </div>
                </li>
                <li>
                    <div class="ii_pic">
                        <a href=""  target="_blank">
                            <img src="{{asset("/assets/home/images/factory3.png")}}" alt="昆山仁宝18元/小时"/>
                            <i class="ic_hot ic_ind_fachot"></i>
                        </a>
                    </div>
                    <div class="ii_con">
                        <a href="" target="_blank" class="name">昆山仁宝18元/小时</a>
                        <p>招聘岗位：小时工<br>
                            招聘要求：男女不限<i class="line"></i>18-45岁 <br>
                            综合薪资：<span class="price">4000-5000元/月</span>
                        </p>
                    </div>
                </li>
                <li>
                    <div class="ii_pic">
                        <a href="" target="_blank">
                            <img src="{{asset("/assets/home/images/factory4.jpg")}}" alt="宿迁可成18元/小时"/>
                            <i class="ic_hot ic_ind_fachot"></i>
                        </a>
                    </div>
                    <div class="ii_con">
                        <a href="" target="_blank" class="name">宿迁可成18元/小时</a>
                        <p>招聘岗位：长期工、小时工<br>
                            招聘要求：男女不限<i class="line"></i>18岁以上 <br>
                            综合薪资：<span class="price">4500-5000元/月</span>
                        </p>
                    </div>
                </li>
            </ul>
        </div>

        <div class="ii_list">
            <div class="ii_head">
                <div class="ii_key">
                    <div class="ii_key">
                        <a href="" target="_blank">更多企业 ></a>
                    </div>
                </div>
                <h2 class="ii_tit"><em>推荐</em>企业</h2>
            </div>
            <ul class="ii_cont">
                <li>
                    <div class="ii_pic">
                        <a href="" target="_blank">
                            <img src="{{asset("/assets/home/images/factory1.jpg")}}" alt="长沙知名大型电子厂22元/小时"/></a>
                    </div>
                    <div class="ii_con">
                        <a href="" class="name" target="_blank">长沙知名大型电子厂22元/小时</a>
                        <p>招聘岗位：长期工、小时工<br>
                            招聘要求：男女不限<i class="line"></i>18-48岁 <br>
                            综合薪资：<span class="price">5500-6500元/月</span>
                        </p>
                    </div>
                </li>
                <li>
                    <div class="ii_pic">
                        <a href=""  target="_blank">
                            <img src="{{asset("/assets/home/images/factory2.jpg")}}" alt="昆山联滔21元/小时"/>
                        </a>
                    </div>
                    <div class="ii_con">
                        <a href="" class="name" target="_blank">昆山联滔21元/小时</a>
                        <p>招聘岗位：长期工、普工<br>
                            招聘要求： 男19-40岁 <i class="line"></i>女19-42岁<br>
                            综合薪资：<span class="price">5500-6000元/月</span>
                        </p>
                    </div>
                </li>
                <li>
                    <div class="ii_pic">
                        <a href=""  target="_blank">
                            <img src="{{asset("/assets/home/images/factory3.png")}}" alt="昆山仁宝18元/小时"/></a>
                    </div>
                    <div class="ii_con">
                        <a href="" class="name" target="_blank">昆山仁宝18元/小时</a>
                        <p>招聘岗位：小时工<br>
                            招聘要求：男女不限<i class="line"></i>18-45岁 <br>
                            综合薪资：<span class="price">4000-5000元/月</span>
                        </p>
                    </div>
                </li>
                <li>
                    <div class="ii_pic">
                        <a href="" target="_blank">
                            <img src="{{asset("/assets/home/images/factory4.jpg")}}" alt="宿迁可成18元/小时"/></a>
                    </div>
                    <div class="ii_con">
                        <a href="" class="name" target="_blank">宿迁可成18元/小时</a>
                        <p>招聘岗位：长期工、小时工<br>
                            招聘要求：男女不限<i class="line"></i>18岁以上 <br>
                            综合薪资：<span class="price">4500-5000元/月</span>
                        </p>
                    </div>
                </li>
            </ul>
        </div>

        <div class="ii_list ii_store">
            <div class="ii_head">
                <div class="ii_key">
                    <a href="" target="_blank">更多门店 ></a>
                </div>
                <h2 class="ii_tit">
                    <em>门店</em>服务
                </h2>
            </div>
            <ul class="ii_cont">
                <li class="t5">
                    <a href="" target="_blank">
                        <div class="ii_pic">
                            <img src="{{asset("/assets/home/images/shop1.jpg")}}" alt="工立方网宁阳县就业服务站"/>
                        </div>
                        <div class="ii_con">
                            <span class="name">宁阳县就业服务站</span>
                            <p>
                                <i class="ic ic_ind_address"></i>山东省泰安市宁阳县关王街南路2号
                            </p>
                        </div>
                    </a>
                </li>
                <li class="t5">
                    <a href="" target="_blank">
                        <div class="ii_pic">
                            <img src="{{asset("/assets/home/images/shop2.jpg")}}" alt="工立方网肥城市就业服务站"/>
                        </div>
                        <div class="ii_con">
                            <span class="name">肥城市就业服务站</span>
                            <p>
                                <i class="ic ic_ind_address"></i>肥城市龙山路新检察院东邻建管局家属院沿街楼
                            </p>
                        </div>
                    </a>
                </li>
                <li class="t5">
                    <a href="" target="_blank">
                        <div class="ii_pic">
                            <img src="{{asset("/assets/home/images/shop3.jpg")}}" alt="工立方网岱岳区就业服务站"/>
                        </div>
                        <div class="ii_con">
                            <span class="name">岱岳区就业服务站</span>
                            <p>
                                <i class="ic ic_ind_address"></i> 山东省泰安市泮河大街英雄山中学老校西88米路北
                            </p>
                        </div>
                    </a>
                </li>
                <li class="t5">
                    <a href="" target="_blank">
                        <div class="ii_pic">
                            <img src="{{asset("/assets/home/images/shop4.jpg")}}" alt="工立方网东平县就业服务站"/>
                        </div>
                        <div class="ii_con">
                            <span class="name">东平县就业服务站</span>
                            <p>
                                <i class="ic ic_ind_address"></i>山东省泰安县东平县东原路与稻香街交叉口向北100米仁仁乐超市旁边。
                            </p>
                        </div>
                    </a>
                </li>
                <li class="t5">
                    <a href="" target="_blank">
                        <div class="ii_pic">
                            <img src="{{asset("/assets/home/images/shop5.jpg")}}" alt="工立方网常乐集镇就业服务站"/>
                        </div>
                        <div class="ii_con">
                            <span class="name">常乐集镇就业服务站</span>
                            <p>
                                <i class="ic ic_ind_address"></i>山东省菏泽市曹县常乐集乡常乐集农村信用社西100米路南
                            </p>
                        </div>
                    </a>
                </li>
            </ul>
        </div>

        <!-- ariticle -->
        <div class="index_item">
            <div class="ii_head">
                <h2 class="ii_tit"><em>新闻</em>资讯</h2>
            </div>
            <div class="ind_dggl" id="dgggl">
                <div class="dggl_left">
                    <div class="dggl_top">
                        <a href="" target="_blank">
                            <img src="{{asset("/assets/home/images/news1.jpg")}}" alt="一月6000的长沙知名大型电子厂真的工资那么高吗？"/>
                        </a>
                        <div class="con">
                            <a href="" class="" target="_blank">一月6000的长沙知名大型电子厂真的工资那么高吗？</a>
                            <p class=""></p>
                            <span class="times">2020-07-28 17:20:40</span>
                        </div>
                    </div>
                    <ul class="dggl_mid">
                        <li>
                            <a href="" class="">
                                <img src="{{asset("/assets/home/images/news1.jpg")}}" alt="劳务和中介有什么区别？找工作为什么不收费?"/>
                            </a>
                            <div class="con">
                                <a class="" href="" target="_blank">劳务和中介有什么区别？找工作为什么不收费?</a>
                                <span class="times">2020-07-28 14:19:05</span>
                            </div>
                        </li>
                        <li>
                            <a href="" class="">
                                <img src="{{asset("/assets/home/images/news1.jpg")}}" alt="昆山仁宝电子厂工作累不累？"/>
                            </a>
                            <div class="con">
                                <a class="" href="" target="_blank">昆山仁宝电子厂工作累不累？</a>
                                <span class="times">2020-07-28 14:15:25</span>
                            </div>
                        </li>
                        <li>
                            <a href="" class="">
                                <img src="{{asset("/assets/home/images/news1.jpg")}}" alt="进厂必读：劳务圈常见套路大揭秘"/>
                            </a>
                            <div class="con">
                                <a class="" href="" target="_blank">进厂必读：劳务圈常见套路大揭秘</a>
                                <span class="times">2020-07-28 09:58:20</span>
                            </div>
                        </li>
                        <li>
                            <a href="" class="">
                                <img src="{{asset("/assets/home/images/news1.jpg")}}" alt="南京华宝工资待遇怎么样？干活累不累？"/>
                            </a>
                            <div class="con">
                                <a class="" href="" target="_blank">南京华宝工资待遇怎么样？干活累不累？</a>
                                <span class="times">2020-07-28 09:40:10</span>
                            </div>
                        </li>
                        <li>
                            <a href="" class="">
                                <img src="{{asset("/assets/home/images/news1.jpg")}}" alt="南京英华达的吃住条件怎么样？"/>
                            </a>
                            <div class="con">
                                <a class="" href="" target="_blank">南京英华达的吃住条件怎么样？</a>
                                <span class="times">2020-07-27 14:54:33</span>
                            </div>
                        </li>
                        <li>
                            <a href="" class="">
                                <img src="{{asset("/assets/home/images/news1.jpg")}}" alt="穿无尘服上班难受不？"/>
                            </a>
                            <div class="con">
                                <a class="" href="" target="_blank">穿无尘服上班难受不？</a>
                                <span class="times">2020-07-27 14:32:45</span>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="dggl_right">
                    <div class="news_video">
                        <div id="news_video" class="news_video_con"></div>
                        <p>
                            <span class="visit_num"><i class="ic ic_ind_playn"></i> 1.5万观看</span>村村美第二届助学扶贫
                        </p>
                    </div>
                    <div class="list_news">
                        <h3 class="ic ic_ind_stit">生活百态</h3>
                        <ul class="">
                            <li>
                                <i class="ic_dot"></i>
                                <a href="" target="_blank">农村结婚现在这么难，在电子厂打工还能找到对象吗？</a>
                            </li>
                            <li>
                                <i class="ic_dot"></i>
                                <a href="" target="_blank">电子厂招来工人不靠谱？倒不如说是一些工厂不靠谱</a>
                            </li>
                            <li>
                                <i class="ic_dot"></i>
                                <a href="" target="_blank">电子厂现在想要招年轻工人，必须要满足这些条件</a>
                            </li>
                            <li>
                                <i class="ic_dot"></i>
                                <a href="" target="_blank">第一次进电子厂都需要知道哪些东西？</a>
                            </li>
                            <li>
                                <i class="ic_dot"></i>
                                <a href="" target="_blank">面包车上摆摊每年能赚几十万？新手摆摊卖什么最赚钱？</a>
                            </li>
                            <li>
                                <i class="ic_dot"></i>
                                <a href="" target="_blank">大学刚毕业做什么能挣6000元？有人去电子厂吗？</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script src="{{asset("/assets/home/js/index.js")}}"></script>
    <script src="{{asset("/assets/home/js/tvp.player_v2_jq.js")}}"></script>
@endsection


