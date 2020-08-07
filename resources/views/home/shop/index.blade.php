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
                    <form id="search_form" action="/Store/index.html" method="get">
                        <script>
                            var su_serch = function () {
                                $('#search_form').submit();
                            }
                        </script>
                        <input type="text" placeholder="请输入搜索关键字" name="keyword" value=""><a href="javascript:su_serch();"
                                                                                             class="btn btn_orange btn_b">搜　索</a>
                    </form>
                </div>
            </div>
            <dl class="lists first">
                <dt class="titles">地区选择：</dt>
                <dd>
                    <a href="/Store/" class="eq_all active" rel="nofollow"><span>不限</span></a><a
                            href="/Store/province-410000.html"><span>河南省</span></a><a href="/Store/province-130000.html"><span>河北省</span></a><a
                            href="/Store/province-140000.html"><span>山西省</span></a><a href="/Store/province-150000.html"><span>内蒙古自治区</span></a><a
                            href="/Store/province-210000.html"><span>辽宁省</span></a><a href="/Store/province-220000.html"><span>吉林省</span></a><a
                            href="/Store/province-230000.html"><span>黑龙江省</span></a><a href="/Store/province-320000.html"><span>江苏省</span></a><a
                            href="/Store/province-340000.html"><span>安徽省</span></a><a href="/Store/province-360000.html"><span>江西省</span></a><a
                            href="/Store/province-370000.html"><span>山东省</span></a><a href="/Store/province-420000.html"><span>湖北省</span></a><a
                            href="/Store/province-430000.html"><span>湖南省</span></a><a href="/Store/province-500000.html"><span>重庆</span></a><a
                            href="/Store/province-510000.html"><span>四川省</span></a><a href="/Store/province-520000.html"><span>贵州省</span></a><a
                            href="/Store/province-530000.html"><span>云南省</span></a><a href="/Store/province-610000.html"><span>陕西省</span></a><a
                            href="/Store/province-620000.html"><span>甘肃省</span></a><a href="/Store/province-640000.html"><span>宁夏回族自治区</span></a>
                </dd>
            </dl>
            <!-- 根据站点获得一个默认城市列表 -->
            <dl class="lists">
                <dt class="titles">城市选择：</dt>
                <dd>
                    <a href="/Store/province-.html" class="eq_all active" rel="nofollow"><span>不限</span></a><a
                            href="/Store/province-410000-city-410100.html"><span>郑州市</span></a><a
                            href="/Store/province-410000-city-410200.html"><span>开封市</span></a><a
                            href="/Store/province-410000-city-410300.html"><span>洛阳市</span></a><a
                            href="/Store/province-410000-city-410400.html"><span>平顶山市</span></a><a
                            href="/Store/province-410000-city-410500.html"><span>安阳市</span></a><a
                            href="/Store/province-410000-city-410600.html"><span>鹤壁市</span></a><a
                            href="/Store/province-410000-city-410700.html"><span>新乡市</span></a><a
                            href="/Store/province-410000-city-410800.html"><span>焦作市</span></a><a
                            href="/Store/province-410000-city-410881.html"><span>济源市</span></a><a
                            href="/Store/province-410000-city-410900.html"><span>濮阳市</span></a><a
                            href="/Store/province-410000-city-411000.html"><span>许昌市</span></a><a
                            href="/Store/province-410000-city-411100.html"><span>漯河市</span></a><a
                            href="/Store/province-410000-city-411200.html"><span>三门峡市</span></a><a
                            href="/Store/province-410000-city-411300.html"><span>南阳市</span></a><a
                            href="/Store/province-410000-city-411400.html"><span>商丘市</span></a><a
                            href="/Store/province-410000-city-411500.html"><span>信阳市</span></a><a
                            href="/Store/province-410000-city-411600.html"><span>周口市</span></a><a
                            href="/Store/province-410000-city-411700.html"><span>驻马店市</span></a></dd>
            </dl>
        </div>
        <div class="fac_main section clearfix">
            <div class="s_l fac_list_main">
                <div class="fac_list_tab">
                    <ul id="fac_list_tab">
                        <li class="active"><a href="javascript:void(0);">门店列表</a></li>
                    </ul>
                    <span class="nums">共为您找到<em>455</em>条信息</span>
                </div>
                <ul class="store_list">
                    <li class="first">
                        <a href="/Store/1060.html" target="_blank" class="imgs"><img
                                    src="http://img.gonglf.com/store/2290406c4485e8b702cfff09b36c6c45.jpg@270h_370w_1e|0-0-370-270a"
                                    alt="工立方肇东市就业服务站" class="imgs"></a>
                        <div class="cons">
                            <div class="names">
                                <a href="/Store/1060.html" target="_blank" class="to_store">门店详情 ></a>
                                <h4><a href="/Store/1060.html" target="_blank">工立方肇东市就业服务站</a></h4>
                            </div>
                            <p class="des">
                                <span class="titles">招聘岗位：</span><em class="nums">8</em>个<br><span
                                        class="titles">招聘企业：</span><span class="tp">仁宝电子科技（昆山）有限公司,联滔电子（昆山）有限公司,长沙知名大型电子厂,商丘金振源科技有限公司</span><br>
                                <span class="titles">门店地址：</span>黑龙江省绥化市肇东市，肇东火车站一道街北 </p>
                        </div>
                    </li>
                    <li>
                        <a href="/Store/48.html" target="_blank" class="imgs"><img
                                    src="http://img.gonglf.com/store/2016/10/58004bab40017.jpg@270h_370w_1e|0-0-370-270a"
                                    alt="工立方尉氏县就业服务站" class="imgs"></a>
                        <div class="cons">
                            <div class="names">
                                <a href="/Store/48.html" target="_blank" class="to_store">门店详情 ></a>
                                <h4><a href="/Store/48.html" target="_blank">工立方尉氏县就业服务站</a></h4>
                            </div>
                            <p class="des">
                                <span class="titles">招聘岗位：</span><em class="nums">16</em>个<br><span
                                        class="titles">招聘企业：</span><span class="tp">骏升科技（扬州）有限公司,昆山圣美,纬创资通(昆山)有限公司,华宝（南京）科技有限公司,瑞声科技(常州)有限公司</span><br>
                                <span class="titles">门店地址：</span>尉氏县汽车北站红绿灯北50路西 </p>
                        </div>
                    </li>
                    <li>
                        <a href="/Store/945.html" target="_blank" class="imgs"><img
                                    src="http://img.gonglf.com/store/5e05500fef8da7d400c09c617475c0e0.jpg@270h_370w_1e|0-0-370-270a"
                                    alt="工立方大营镇就业服务站" class="imgs"></a>
                        <div class="cons">
                            <div class="names">
                                <a href="/Store/945.html" target="_blank" class="to_store">门店详情 ></a>
                                <h4><a href="/Store/945.html" target="_blank">工立方大营镇就业服务站</a></h4>
                            </div>
                            <p class="des">
                                <span class="titles">招聘岗位：</span><em class="nums">7</em>个<br><span
                                        class="titles">招聘企业：</span><span class="tp">重庆翊宝智慧电子装置有限公司,可成科技(宿迁)有限公司,滁州电子有限公司,仁宝电子科技昆山有限公司</span><br>
                                <span class="titles">门店地址：</span>尉氏大营乡黄家村 </p>
                        </div>
                    </li>
                    <li>
                        <a href="/Store/965.html" target="_blank" class="imgs"><img
                                    src="http://img.gonglf.com/store/43e90f571469a7d6c7c982745d6ec4c5.jpg@270h_370w_1e|0-0-370-270a"
                                    alt="工立方朱曲镇就业服务站" class="imgs"></a>
                        <div class="cons">
                            <div class="names">
                                <a href="/Store/965.html" target="_blank" class="to_store">门店详情 ></a>
                                <h4><a href="/Store/965.html" target="_blank">工立方朱曲镇就业服务站</a></h4>
                            </div>
                            <p class="des">
                                <span class="titles">招聘岗位：</span><em class="nums">331</em>个<br><span
                                        class="titles">招聘企业：</span><span class="tp">昆山圣美,富士康(成都)通讯科技有限公司,群光电子(苏州)有限公司,捷普科技(成都)有限公司,世硕电子（昆山）有限公司</span><br>
                                <span class="titles">门店地址：</span>朱曲镇西桥往西160米 </p>
                        </div>
                    </li>
                    <li>
                        <a href="/Store/823.html" target="_blank" class="imgs"><img
                                    src="http://img.gonglf.com/store/f778763162d9c88d1bbbc036bb020cbf.jpg@270h_370w_1e|0-0-370-270a"
                                    alt="工立方蔡庄镇就业服务站" class="imgs"></a>
                        <div class="cons">
                            <div class="names">
                                <a href="/Store/823.html" target="_blank" class="to_store">门店详情 ></a>
                                <h4><a href="/Store/823.html" target="_blank">工立方蔡庄镇就业服务站</a></h4>
                            </div>
                            <p class="des">
                                <span class="titles">招聘岗位：</span><em class="nums">11</em>个<br><span
                                        class="titles">招聘企业：</span><span class="tp">重庆翊宝智慧电子装置有限公司,滁州电子有限公司,联滔电子（昆山）有限公司,仁宝电子科技昆山有限公司,英华达（南京）科技有限公司</span><br>
                                <span class="titles">门店地址：</span>尉氏县蔡庄镇一中东临 </p>
                        </div>
                    </li>
                    <li>
                        <a href="/Store/771.html" target="_blank" class="imgs"><img
                                    src="http://img.gonglf.com/store/4b65c7edcb26476c0f7bc355714b87a8.jpg@270h_370w_1e|0-0-370-270a"
                                    alt="工立方庄头乡就业服务站" class="imgs"></a>
                        <div class="cons">
                            <div class="names">
                                <a href="/Store/771.html" target="_blank" class="to_store">门店详情 ></a>
                                <h4><a href="/Store/771.html" target="_blank">工立方庄头乡就业服务站</a></h4>
                            </div>
                            <p class="des">
                                <span class="titles">招聘岗位：</span><em class="nums">8</em>个<br><span
                                        class="titles">招聘企业：</span><span class="tp">瑞声科技(常州)有限公司,可成科技(宿迁)有限公司,可胜科技（泰州）有限公司,捷普电子(无锡)有限公司</span><br>
                                <span class="titles">门店地址：</span>尉氏县庄头镇陈家村县道017路边 </p>
                        </div>
                    </li>
                    <li>
                        <a href="/Store/930.html" target="_blank" class="imgs"><img
                                    src="http://img.gonglf.com/store/8d2a04f235ee27e62cb499ad73a2e6d2.jpg@270h_370w_1e|0-0-370-270a"
                                    alt="工立方红庙镇就业服务站" class="imgs"></a>
                        <div class="cons">
                            <div class="names">
                                <a href="/Store/930.html" target="_blank" class="to_store">门店详情 ></a>
                                <h4><a href="/Store/930.html" target="_blank">工立方红庙镇就业服务站</a></h4>
                            </div>
                            <p class="des">
                                <span class="titles">招聘岗位：</span><em class="nums">7</em>个<br><span
                                        class="titles">招聘企业：</span><span class="tp">湖南伍子醉食品有限公司,可成科技(宿迁)有限公司,瑞声科技(常州)有限公司,长沙知名大型电子厂</span><br>
                                <span class="titles">门店地址：</span>开封市兰考县红庙镇红绿灯西50米路北 </p>
                        </div>
                    </li>
                    <li>
                        <a href="/Store/42.html" target="_blank" class="imgs"><img
                                    src="http://img.gonglf.com/store/c6fbc99a6ce091e37723c1f88626032b.jpg@270h_370w_1e|0-0-370-270a"
                                    alt="工立方兰考县就业服务站" class="imgs"></a>
                        <div class="cons">
                            <div class="names">
                                <a href="/Store/42.html" target="_blank" class="to_store">门店详情 ></a>
                                <h4><a href="/Store/42.html" target="_blank">工立方兰考县就业服务站</a></h4>
                            </div>
                            <p class="des">
                                <span class="titles">招聘岗位：</span><em class="nums">14</em>个<br><span
                                        class="titles">招聘企业：</span><span class="tp">骏升科技（扬州）有限公司,世硕电子（昆山）有限公司,纬创资通(昆山)有限公司,华宝（南京）科技有限公司,瑞声科技(常州)有限公司</span><br>
                                <span class="titles">门店地址：</span>兰考县汽车站进站口正对面 </p>
                        </div>
                    </li>
                </ul>
                <!-- <div class="pagenation"><span class="disable prev"><i class="ic ic_page_l"></i>上一页</span><span class="active">1</span><a href="#">2</a><a href="#">3</a><a href="#">4</a><span class="pg_dot">...</span><a href="#">49</a><a href="#">50</a><a href="#" class="next">下一页<i class="ic ic_page_r"></i></a></div> -->
                <div class="pagenation"><a rel="nofollow"   </a><span class="active">1</a></span><a rel="nofollow"
                                                                                                    href="/Store/index/p/2.html">2</a></a>
                    <a rel="nofollow" href="/Store/index/p/3.html">3</a></a><a rel="nofollow"
                                                                               href="/Store/index/p/4.html">4</a></a><a
                            rel="nofollow" href="/Store/index/p/5.html">5</a></a><a rel="nofollow"
                                                                                    href="/Store/index/p/6.html">6</a></a><a
                            rel="nofollow" href="/Store/index/p/7.html">7</a></a><a rel="nofollow"
                                                                                    href="/Store/index/p/8.html">8</a> </a>
                    <a rel="nofollow" href="/Store/index/p/2.html">下一页<i class="ic ic_page_r"></i></a> </a><a rel="nofollow"
                                                                                                              href="/Store/index/p/57.html">末页</a></a>
                </div>
            </div>
            <div class="s_r">
                <div class="fac_hot fac_rlist">
                    <h3 class="titles">
                        <i class="ic ic_fac_hottitle"></i>
                    </h3>
                    <ul class="fac_hot_list">
                        <li><a href="/Company/232.html" target="_blank">长沙知名大型电子厂 （5500--6500元/月）</a></li>
                        <li><a href="/Company/110.html" target="_blank">联滔电子（昆山）有限公司 （5500--6000元/月）</a></li>
                        <li><a href="/Company/105.html" target="_blank">华宝（南京）科技有限公司 （5000--6000元/月）</a></li>
                        <li><a href="/Company/139.html" target="_blank">淳华科技（昆山）有限公司 （4500--5500元/月）</a></li>
                        <li><a href="/Company/234.html" target="_blank">仁宝电子科技（昆山）有限公司 （4000--5000元/月）</a></li>
                    </ul>
                </div><!-- 热门招聘_20171020 -->
                <div class="fac_rank fac_rlist">
                    <div class="ner_title"><i class="ic_line ic_ner_t"></i>
                        <h3>报名排行榜</h3></div>
                    <ul id="fac_rank">
                        <li class="tops"><a href="/Company/209.html" target="_blank" class="hover"><img
                                        src="http://img.gonglf.com/company/6b2534b497e51c5248cc0d3fe44fd84b.jpg@77h_95w_1e|0-0-95-77a"
                                        alt="">
                                <div class="cons"><p><span class="eqs">1</span>天津市金桥焊材集团有限公司</p><span
                                            class="nums">已报名3035人</span></div>
                            </a></li>
                        <li class="tops"><a href="/Company/238.html" target="_blank"><img
                                        src="http://img.gonglf.com/company/e9e955ab3b7e0a503c7e5831eaf43db7.jpg@77h_95w_1e|0-0-95-77a"
                                        alt="">
                                <div class="cons"><p><span class="eqs">2</span>江西吉安立讯</p><span class="nums">已报名2886人</span>
                                </div>
                            </a></li>
                        <li class="tops"><a href="/Company/138.html" target="_blank"><img
                                        src="http://img.gonglf.com/company/6f43c4fb76b758343daf5ffbabfc150e.jpg@77h_95w_1e|0-0-95-77a"
                                        alt="">
                                <div class="cons"><p><span class="eqs">3</span>可成科技(宿迁)有限公司</p><span
                                            class="nums">已报名2644人</span></div>
                            </a></li>
                        <li><a href="/Company/232.html" target="_blank"><img
                                        src="http://img.gonglf.com/company/24a7ee3201b10fbebad641baef34225b.jpeg@77h_95w_1e|0-0-95-77a"
                                        alt="">
                                <div class="cons"><p><span class="eqs">4</span>长沙知名大型电子厂</p><span class="nums">已报名2126人</span>
                                </div>
                            </a></li>
                        <li><a href="/Company/105.html" target="_blank"><img
                                        src="http://img.gonglf.com/company/05d98808b3bf2e755919ac228587161d.png@77h_95w_1e|0-0-95-77a"
                                        alt="">
                                <div class="cons"><p><span class="eqs">5</span>华宝（南京）科技有限公司</p><span
                                            class="nums">已报名2066人</span></div>
                            </a></li>
                        <li><a href="/Company/102.html" target="_blank"><img
                                        src="http://img.gonglf.com/company/f89e6896a97b147e870d7b675fc73503.jpg@77h_95w_1e|0-0-95-77a"
                                        alt="">
                                <div class="cons"><p><span class="eqs">6</span>可胜科技（泰州）有限公司</p><span
                                            class="nums">已报名1677人</span></div>
                            </a></li>
                        <li><a href="/Company/240.html" target="_blank"><img
                                        src="http://img.gonglf.com/company/bb19a7ffa2e349acc52d1d63c3fb58a5.jpg@77h_95w_1e|0-0-95-77a"
                                        alt="">
                                <div class="cons"><p><span class="eqs">7</span>温州金龙控股集团</p><span class="nums">已报名1542人</span>
                                </div>
                            </a></li>
                        <li><a href="/Company/204.html" target="_blank"><img
                                        src="http://img.gonglf.com/company/7e9504c85bbf145bf1662a69ae910f24.jpg@77h_95w_1e|0-0-95-77a"
                                        alt="">
                                <div class="cons"><p><span class="eqs">8</span>山东歌尔声学股份有限公司</p><span
                                            class="nums">已报名1474人</span></div>
                            </a></li>
                        <li><a href="/Company/110.html" target="_blank"><img
                                        src="http://img.gonglf.com/company/5bb1a27ec760e9fbc5685321ec5ae312.jpg@77h_95w_1e|0-0-95-77a"
                                        alt="">
                                <div class="cons"><p><span class="eqs">9</span>联滔电子（昆山）有限公司</p><span
                                            class="nums">已报名1450人</span></div>
                            </a></li>
                        <li><a href="/Company/124.html" target="_blank"><img
                                        src="http://img.gonglf.com/company/35ffe582b8af141fd6b8ec9b71d39adc.jpg@77h_95w_1e|0-0-95-77a"
                                        alt="">
                                <div class="cons"><p><span class="eqs">10</span>滁州电子有限公司</p><span class="nums">已报名1407人</span>
                                </div>
                            </a></li>
                    </ul>
                </div><!-- 报名排行榜_20171020 -->
                <div class="fac_vhistory fac_rlist">
                    <div class="ner_title"><i class="ic_line ic_ner_t"></i>
                        <h3>最近浏览职位</h3></div>
                    <ul id="fac_vhistory">
                        <li class="first"><a href="/Company/124.html" target="_blank">
                                <img src="http://img.gonglf.com/company/35ffe582b8af141fd6b8ec9b71d39adc.jpg@77h_95w_1e|0-0-95-77a"
                                     alt="滁州电子24元/小时">
                                <div class="cons">
                                    <p>滁州电子24元/小时</p>
                                    <p class="prices">￥5500-6500元/月</p>
                                </div>
                            </a>
                        </li>
                        <li><a href="/Company/232.html" target="_blank">
                                <img src="http://img.gonglf.com/company/24a7ee3201b10fbebad641baef34225b.jpeg@77h_95w_1e|0-0-95-77a"
                                     alt="长沙知名大型电子厂22元/小时">
                                <div class="cons">
                                    <p>长沙知名大型电子厂22元/小时</p>
                                    <p class="prices">￥5500-6500元/月</p>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div><!-- 最近浏览职位_20171020 -->
            </div>
        </div>
        <div class="fac_recom section">
            <div class="fac_title"><i class="line"></i>
                <h3>大家都想去</h3></div>
            <ul class="fac_recom_list">
                <li>
                    <a href="/Company/104.html" class="imgs" target="_blank"><img
                                src="http://img.gonglf.com/company/7d47cf60cf92c8fcc0947f0486a5bea9.jpg@270h_370w_1e|0-0-370-270a"
                                alt="常州瑞声"></a>
                    <div class="con">
                        <a href="/Company/104.html" target="_blank" class="name">常州瑞声</a>
                        <p class="des">
                            男女不限<i class="line"></i> 18-40岁
                        </p>
                        <p class="price">￥5500-6500元/月</p>
                    </div>
                </li>
                <li>
                    <a href="/Company/124.html" class="imgs" target="_blank"><img
                                src="http://img.gonglf.com/company/d92626bb6fb481709fb4fdbe43977d22.jpg@270h_370w_1e|0-0-370-270a"
                                alt="立讯精密工业（滁州）有限公司"></a>
                    <div class="con">
                        <a href="/Company/124.html" target="_blank" class="name">立讯精密工业（滁州）有限公司</a>
                        <p class="des">
                            男:16-40岁&nbsp;女:16-45岁
                        </p>
                        <p class="price">￥6000-7000元/月</p>
                    </div>
                </li>
                <li>
                    <a href="/Company/139.html" class="imgs" target="_blank"><img
                                src="http://img.gonglf.com/company/b708fe32b6e76bbd261762dbf3ff8b22.jpg@270h_370w_1e|0-0-370-270a"
                                alt="昆山淳华"></a>
                    <div class="con">
                        <a href="/Company/139.html" target="_blank" class="name">昆山淳华</a>
                        <p class="des">
                            男女不限<i class="line"></i> 16-40岁
                        </p>
                        <p class="price">￥4000-5000元/月</p>
                    </div>
                </li>
                <li>
                    <a href="/Company/105.html" class="imgs" target="_blank"><img
                                src="http://img.gonglf.com/company/05d98808b3bf2e755919ac228587161d.png@270h_370w_1e|0-0-370-270a"
                                alt="华宝（南京）科技有限公司"></a>
                    <div class="con">
                        <a href="/Company/105.html" target="_blank" class="name">华宝（南京）科技有限公司</a>
                        <p class="des">
                            男:18-40岁&nbsp;女:18-45岁
                        </p>
                        <p class="price">￥7000-7500元/月</p>
                    </div>
                </li>
                <li>
                    <a href="/Company/204.html" class="imgs" target="_blank"><img
                                src="http://img.gonglf.com/company/7e9504c85bbf145bf1662a69ae910f24.jpg@270h_370w_1e|0-0-370-270a"
                                alt="山东歌尔声学股份有限公司"></a>
                    <div class="con">
                        <a href="/Company/204.html" target="_blank" class="name">山东歌尔声学股份有限公司</a>
                        <p class="des">
                            男女不限<i class="line"></i> 16-42岁
                        </p>
                        <p class="price">￥4500-5500元/月</p>
                    </div>
                </li>
            </ul>
        </div>    <!-- 选择附近的门店报名 c.k 20171025-->
        <div class="store_recom section">
            <div class="fac_title"><i class="line"></i>
                <h3>选择附近的门店报名</h3></div>
            <ul class="store_recom_list">
                <li>
                    <a href="/Store/48.html">
                        <div class="imgs">
                            <img src="http://img.gonglf.com/store/2016/10/58004bab40017.jpg@270h_370w_1e|0-0-370-270a"
                                 src="工立方尉氏县就业服务站">
                        </div>
                        <div class="con">
                            <span class="name">工立方尉氏县就业服务站</span>
                            <p><i class="ic ic_ind_address"></i>尉氏县汽车北站红绿灯北50路西</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="/Store/945.html">
                        <div class="imgs">
                            <img src="http://img.gonglf.com/store/5e05500fef8da7d400c09c617475c0e0.jpg@270h_370w_1e|0-0-370-270a"
                                 src="工立方大营镇就业服务站">
                        </div>
                        <div class="con">
                            <span class="name">工立方大营镇就业服务站</span>
                            <p><i class="ic ic_ind_address"></i>尉氏大营乡黄家村</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="/Store/771.html">
                        <div class="imgs">
                            <img src="http://img.gonglf.com/store/4b65c7edcb26476c0f7bc355714b87a8.jpg@270h_370w_1e|0-0-370-270a"
                                 src="工立方庄头乡就业服务站">
                        </div>
                        <div class="con">
                            <span class="name">工立方庄头乡就业服务站</span>
                            <p><i class="ic ic_ind_address"></i>尉氏县庄头镇陈家村县道017路边</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="/Store/823.html">
                        <div class="imgs">
                            <img src="http://img.gonglf.com/store/f778763162d9c88d1bbbc036bb020cbf.jpg@270h_370w_1e|0-0-370-270a"
                                 src="工立方蔡庄镇就业服务站">
                        </div>
                        <div class="con">
                            <span class="name">工立方蔡庄镇就业服务站</span>
                            <p><i class="ic ic_ind_address"></i>尉氏县蔡庄镇一中东临</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="/Store/965.html">
                        <div class="imgs">
                            <img src="http://img.gonglf.com/store/43e90f571469a7d6c7c982745d6ec4c5.jpg@270h_370w_1e|0-0-370-270a"
                                 src="工立方朱曲镇就业服务站">
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
    <script src="{{asset("/assets/home/js/push.js")}}"></script>
@endsection


