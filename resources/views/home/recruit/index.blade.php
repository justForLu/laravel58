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
                    <a href="" class="eq_all active" rel="nofollow"><span>不限</span></a>
                    <a href="javascript:search_url(3, {salary_zonghe_min:2, salary_zonghe_max:3000});"><span>3000元以下</span></a>
                    <a href="javascript:search_url(3, {salary_zonghe_min:3000, salary_zonghe_max:4000});"><span>3000元-4000元</span></a>
                    <a href="javascript:search_url(3, {salary_zonghe_min:4000, salary_zonghe_max:5000});"><span>4000元-5000元</span></a>
                    <a href="javascript:search_url(3, {salary_zonghe_min:5000, salary_zonghe_max:6000});"><span>5000元-6000元</span></a>
                    <a href="javascript:search_url(3, {salary_zonghe_min:6000, salary_zonghe_max:30000});"><span>6000元以上  </span></a>
                </dd>
            </dl>
            <dl class="lists">
                <dt class="titles">职位：</dt>
                <dd>
                    <a href="" class="eq_all active" rel="nofollow"><span>不限</span></a>
                    <a href="javascript:search_url(4, &#39;储备干部&#39;);"><span>储备干部</span></a>
                    <a href="javascript:search_url(4, &#39;长期工&#39;);"><span>长期工</span></a>
                    <a href="javascript:search_url(4, &#39;小时工&#39;);"><span>小时工</span></a>
                    <a href="javascript:search_url(4, &#39;安全乘务员&#39;);"><span>安全乘务员</span></a>
                    <a href="javascript:search_url(4, &#39;派出所辅警&#39;);"><span>派出所辅警</span></a>
                    <a href="javascript:search_url(4, &#39;叉车工&#39;);"><span>叉车工</span></a>
                    <a href="javascript:search_url(4, &#39;普工&#39;);"><span>普工</span></a>
                    <a href="javascript:search_url(4, &#39;客服&#39;);"><span>客服</span></a>
                    <a href="javascript:search_url(4, &#39;司机&#39;);"><span>司机</span></a>
                    <a href="javascript:search_url(4, &#39;技工&#39;);"><span>技工</span></a>
                    <a href="javascript:search_url(4, &#39;销售&#39;);"><span>销售</span></a>
                    <a href="javascript:search_url(4, &#39;其他&#39;);"><span>其他</span></a>
                </dd>
            </dl>
            <dl class="lists">
                <dt class="titles">福利：</dt>
                <dd>
                    <a href="" class="eq_all active" rel="nofollow"><span>不限</span></a>
                    <a href="javascript:search_url(5, &#39;名企&#39;);"><span>名企</span></a>
                    <a href="javascript:search_url(5, &#39;帅哥美女多&#39;);"><span>帅哥美女多</span></a>
                    <a href="javascript:search_url(5, &#39;工作轻松&#39;);"><span>工作轻松</span></a>
                    <a href="javascript:search_url(5, &#39;不穿无尘服&#39;);"><span>不穿无尘服</span></a>
                    <a href="javascript:search_url(5, &#39;年终奖&#39;);"><span>年终奖</span></a>
                    <a href="javascript:search_url(5, &#39;多帅哥美女&#39;);"><span>多帅哥美女</span></a>
                    <a href="javascript:search_url(5, &#39;坐着上班&#39;);"><span>坐着上班</span></a>
                    <a href="javascript:search_url(5, &#39;夜班津贴&#39;);"><span>夜班津贴</span></a>
                    <a href="javascript:search_url(5, &#39;包吃包住&#39;);"><span>包吃包住</span></a>
                    <a href="javascript:search_url(5, &#39;空调宿舍&#39;);"><span>空调宿舍</span></a>
                    <a href="javascript:search_url(5, &#39;吃住在厂&#39;);"><span>吃住在厂</span></a>
                    <a href="javascript:search_url(5, &#39;加班多&#39;);"><span>加班多</span></a>
                    <a href="javascript:search_url(5, &#39;绩效奖金&#39;);"><span>绩效奖金</span></a>
                    <a href="javascript:search_url(5, &#39;WIFI覆盖&#39;);"><span>WIFI覆盖</span></a>
                    <a href="javascript:search_url(5, &#39;五险一金&#39;);"><span>五险一金</span></a>
                    <a href="javascript:search_url(5, &#39;附近热闹&#39;);"><span>附近热闹</span></a>
                    <a href="javascript:search_url(5, &#39;环境优美&#39;);"><span>环境优美</span></a>
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
                    <span class="nums">共为您找到<em>225</em>条信息</span>
                </div>
                <ul class="fac_list">
                    <li class="first">
                        <a href="" target="_blank" class="imgs">
                            <img src="{{asset("/assets/home/images/shop1.jpg")}}" alt="长沙知名大型电子厂22元/小时" class="imgs">
                        </a>
                        <div class="cons">
                            <div class="names">
                                <span class="prices"><em>5500-6500</em>元/月</span>
                                <h4><a href="" target="_blank">长沙知名大型电子厂22元/小时</a></h4>
                            </div>
                            <p class="des">
                                <a href="javascript:largeMap(&#39;113.415911&#39;, &#39;28.224532&#39;, &#39;长沙市浏阳市&#39;)" class="to_map">
                                    <i class="ic ic_fac_lmap"></i>电子地图
                                </a>
                                <span class="titles">招聘人数：</span>500人 <span class="titles title2">企业规模：</span>2000人<br>
                                <span class="titles">招聘岗位：</span><span class="tp">长期工</span><span class="tp">小时工</span><br>
                                <span class="titles">招聘要求：</span>男女不限<i class="line"></i>18-48岁
                            </p>
                            <p class="fac_tag">
                                <a href="" target="_blank" class="to_fac btn btn_blue btn_m btn_round">查看</a>
                                <em>工作轻松</em><em>空调宿舍</em>
                            </p>
                        </div>
                    </li>
                    <li>
                        <a href="" target="_blank" class="imgs">
                            <img src="{{asset("/assets/home/images/shop2.jpg")}}" alt="滁州电子22元/小时" class="imgs">
                        </a>
                        <div class="cons">
                            <div class="names">
                                <span class="prices"><em>5000-5500</em>元/月</span>
                                <h4><a href="" target="_blank">滁州电子22元/小时</a></h4>
                            </div>
                            <p class="des">
                                <a href="javascript:largeMap(&#39;118.379187&#39;, &#39;32.387349&#39;, &#39;安徽省滁州市琅琊区永阳路8号&#39;)" class="to_map">
                                    <i class="ic ic_fac_lmap"></i>电子地图
                                </a>
                                <span class="titles">招聘人数：</span>800人 <span class="titles title2">企业规模：</span>20000人<br>
                                <span class="titles">招聘岗位：</span><span class="tp">长期工</span><span class="tp">普工</span><br>
                                <span class="titles">招聘要求：</span>男:18-42岁<i class="line"></i>女:18-45岁
                            </p>
                            <p class="fac_tag">
                                <a href="" target="_blank" class="to_fac btn btn_blue btn_m btn_round">查看</a>
                                <em>帅哥美女多</em><em>坐着上班</em><em>空调宿舍</em><em>吃住在厂</em>
                            </p>
                        </div>
                    </li>
                    <li>
                        <a href="" target="_blank" class="imgs">
                            <img src="{{asset("/assets/home/images/shop3.jpg")}}" alt="昆山联滔22元/小时" class="imgs">
                        </a>
                        <div class="cons">
                            <div class="names">
                                <span class="prices"><em>5500-6000</em>元/月</span>
                                <h4><a href="http://www.gonglf.com/Company/110.html" target="_blank">昆山联滔22元/小时</a></h4>
                            </div>
                            <p class="des">
                                <a href="javascript:largeMap(&#39;120.964145&#39;, &#39;31.189555&#39;, &#39;锦溪镇百胜路399号&#39;)" class="to_map">
                                    <i class="ic ic_fac_lmap"></i>电子地图
                                </a>
                                <span class="titles">招聘人数：</span>800人 <span class="titles title2">企业规模：</span>20000人<br>
                                <span class="titles">招聘岗位：</span><span class="tp">长期工</span><span class="tp">普工</span><br>
                                <span class="titles">招聘要求：</span>男:18-40岁<i class="line"></i>女:18-42岁
                            </p>
                            <p class="fac_tag">
                                <a href="" target="_blank" class="to_fac btn btn_blue btn_m btn_round">查看</a>
                                <em>工作轻松</em><em>不穿无尘服</em><em>多帅哥美女</em><em>环境优美</em>
                            </p>
                        </div>
                    </li>
                    <li>
                        <a href="" target="_blank" class="imgs">
                            <img src="{{asset("/assets/home/images/shop4.jpg")}}" alt="南京华宝21元/小时" class="imgs">
                        </a>
                        <div class="cons">
                            <div class="names">
                                <span class="prices"><em>5000-6000</em>元/月</span>
                                <h4><a href="" target="_blank">南京华宝21元/小时</a></h4>
                            </div>
                            <p class="des">
                                <a href="javascript:largeMap(&#39;118.816084&#39;, &#39;31.89309&#39;, &#39;江苏省南京市江宁区苏源大道68&#39;)" class="to_map">
                                    <i class="ic ic_fac_lmap"></i>电子地图
                                </a>
                                <span class="titles">招聘人数：</span>1000人 <span class="titles title2">企业规模：</span>15000人<br>
                                <span class="titles">招聘岗位：</span><span class="tp">长期工</span><span class="tp">小时工</span><br>
                                <span class="titles">招聘要求：</span>男:18-40岁<i class="line"></i>女:18-45岁
                            </p>
                            <p class="fac_tag">
                                <a href="" target="_blank" class="to_fac btn btn_blue btn_m btn_round">查看</a>
                                <em>工作轻松</em><em>空调宿舍</em><em>环境优美</em>
                            </p>
                        </div>
                    </li>
                    <li>
                        <a href="" target="_blank" class="imgs">
                            <img src="{{asset("/assets/home/images/shop5.jpg")}}" alt="昆山淳华20元/小时" class="imgs">
                        </a>
                        <div class="cons">
                            <div class="names">
                                <span class="prices"><em>4500-5500</em>元/月</span>
                                <h4><a href="" target="_blank">昆山淳华20元/小时</a></h4>
                            </div>
                            <p class="des">
                                <a href="javascript:largeMap(&#39;120.975385&#39;, &#39;31.430006&#39;, &#39;昆山市汉浦路1399号&#39;)" class="to_map">
                                    <i class="ic ic_fac_lmap"></i>电子地图
                                </a>
                                <span class="titles">招聘人数：</span>500人 <span class="titles title2">企业规模：</span>16000人<br>
                                <span class="titles">招聘岗位：</span><span class="tp">长期工</span><span class="tp">小时工</span><br>
                                <span class="titles">招聘要求：</span>男:16-42岁<i class="line"></i>女:16-45岁
                            </p>
                            <p class="fac_tag">
                                <a href="" target="_blank" class="to_fac btn btn_blue btn_m btn_round">查看</a>
                                <em>帅哥美女多</em><em>工作轻松</em><em>环境优美</em>
                            </p>
                        </div>
                    </li>
                    <li>
                        <a href="" target="_blank" class="imgs">
                            <img src="{{asset("/assets/home/images/shop1.jpg")}}" alt="昆山仁宝18元/小时" class="imgs">
                        </a>
                        <div class="cons">
                            <div class="names">
                                <span class="prices"><em>4000-5000</em>元/月</span>
                                <h4><a href="" target="_blank">昆山仁宝18元/小时</a></h4>
                            </div>
                            <p class="des">
                                <a href="javascript:largeMap(&#39;120.990842&#39;, &#39;31.359444&#39;, &#39;江苏省昆山市经济技术开发区出口加工区第一大道58号&#39;)" class="to_map">
                                    <i class="ic ic_fac_lmap"></i>电子地图
                                </a>
                                <span class="titles">招聘人数：</span>1000人 <span class="titles title2">企业规模：</span>15000人<br>
                                <span class="titles">招聘岗位：</span><span class="tp">小时工</span><br>
                                <span class="titles">招聘要求：</span>男女不限<i class="line"></i>18-45岁
                            </p>
                            <p class="fac_tag">
                                <a href="" target="_blank" class="to_fac btn btn_blue btn_m btn_round">查看</a>
                                <em>工作轻松</em><em>空调宿舍</em><em>环境优美</em>
                            </p>
                        </div>
                    </li>
                    <li>
                        <a href="" target="_blank" class="imgs">
                            <img src="{{asset("/assets/home/images/shop2.jpg")}}" alt="宿迁可成22元/小时" class="imgs">
                        </a>
                        <div class="cons">
                            <div class="names">
                                <span class="prices"><em>4500-5000</em>元/月</span>
                                <h4><a href="" target="_blank">宿迁可成22元/小时</a></h4>
                            </div>
                            <p class="des">
                                <a href="javascript:largeMap(&#39;118.202417&#39;, &#39;33.945008&#39;, &#39;苏宿工业园区&#39;)" class="to_map">
                                    <i class="ic ic_fac_lmap"></i>电子地图
                                </a>
                                <span class="titles">招聘人数：</span>1500人 <span class="titles title2">企业规模：</span>32000人<br>
                                <span class="titles">招聘岗位：</span><span class="tp">长期工</span><span class="tp">小时工</span><br>
                                <span class="titles">招聘要求：</span>男女不限<i class="line"></i>18岁以上
                            </p>
                            <p class="fac_tag">
                                <a href="" target="_blank" class="to_fac btn btn_blue btn_m btn_round">查看</a>
                                <em>帅哥美女多</em><em>工作轻松</em><em>不穿无尘服</em><em>空调宿舍</em>
                            </p>
                        </div>
                    </li>
                    <li>
                        <a href="" target="_blank" class="imgs">
                            <img src="{{asset("/assets/home/images/shop3.jpg")}}" alt="南京英华达17元/小时" class="imgs">
                        </a>
                        <div class="cons">
                            <div class="names">
                                <span class="prices"><em>4000-5000</em>元/月</span>
                                <h4><a href="" target="_blank">南京英华达17元/小时</a></h4>
                            </div>
                            <p class="des">
                                <a href="javascript:largeMap(&#39;118.797822&#39;, &#39;31.90831&#39;, &#39;南京市江宁区将军大道133号&#39;)" class="to_map">
                                    <i class="ic ic_fac_lmap"></i>电子地图
                                </a>
                                <span class="titles">招聘人数：</span>800人 <span class="titles title2">企业规模：</span>13000人<br>
                                <span class="titles">招聘岗位：</span><span class="tp">长期工</span><span class="tp">小时工</span><br>
                                <span class="titles">招聘要求：</span>男:23-40岁<i class="line"></i>女:23-45岁
                            </p>
                            <p class="fac_tag">
                                <a href="" target="_blank" class="to_fac btn btn_blue btn_m btn_round">查看</a>
                                <em>工作轻松</em><em>不穿无尘服</em><em>多帅哥美女</em><em>包吃包住</em><em>环境优美</em>
                            </p>
                        </div>
                    </li>
                </ul>
                <div class="pagenation">
                    <a rel="nofollow"><span class="active">1</span></a>
                    <a rel="nofollow" rel="nofollow" href="">3</a>
                    <a rel="nofollow" rel="nofollow" href="">5</a>
                    <a rel="nofollow" rel="nofollow" href="">7</a>
                    <a rel="nofollow" href="">8</a>
                    <a rel="nofollow" href="">下一页<i class="ic ic_page_r"></i></a>
                    <a rel="nofollow" href="">末页</a>
                </div>
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
        $("#fac_rank>li>a").hover(function(){
            $("#fac_rank>li>a").removeClass();
            $(this).addClass('hover');
        })
    </script>

@endsection

