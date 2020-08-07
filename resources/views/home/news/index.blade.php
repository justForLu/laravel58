@extends('home.layout.base')

@section('styles')
    <link rel="stylesheet" href="{{asset("/assets/home/css/style-news.css")}}">
@endsection

@section('content')
    <div class="wrap ne_nav">
        <div class="section clearfix">
            <dl>
                <dt>
                    <i class="ic ic_n_type1"></i>
                    <a href="" >资讯</a>
                </dt>
                <dd>
                    <a href="" >打工攻略</a>
                </dd>
                <dd>
                    <a href="" >身在职场</a>
                </dd>
                <dd>
                    <a href="" >生活百态</a>
                </dd>
                <dd>
                    <a href="" >新闻动态</a>
                </dd>
            </dl>
            <dl>
                <dt>
                    <i class="ic ic_n_type2"></i>
                    <a  href="">专题</a>
                </dt>
                <dd>
                    <a href="" rel="external nofollow">七月七婚恋</a>
                </dd>
                <dd>
                    <a href="" >现场直击</a>
                </dd>
                <dd>
                    <a href="" >热门活动</a>
                </dd>
            </dl>
            <dl>
                <dt>
                    <i class="ic ic_n_type3"></i>
                    <a href="">视频</a>
                </dt>
                <dd>
                    <a href="" >搞笑</a>
                </dd>
                <dd>
                    <a href="">社会</a>
                </dd>
                <dd>
                    <a href="" >推荐</a>
                </dd>
            </dl>
        </div>
    </div>

    <div class="wrap">
        <div class="section clearfix ne_i_top">
            <div class="ne_i_swiper">
                <div class=" swiper-container" id="ne_i_swiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <a href="">
                                <img src="{{asset("/assets/home/images/news-img1.png")}}">
                                <p>去电子厂打工加班多不多？是不是夜班比较多？</p>
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <a href="">
                                <img src="{{asset("/assets/home/images/news-img2.jpg")}}">
                                <p>去电子厂打工的女孩都在什么部门上班？</p>
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <a href="">
                                <img src="{{asset("/assets/home/images/news-img3.jpg")}}">
                                <p>电子厂月底发工资都会少是为什么？</p>
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <a href="">
                                <img src="{{asset("/assets/home/images/news-img3.png")}}">
                                <p>进电子厂打工面试都需要做些什么准备？</p>
                            </a>
                        </div>
                    </div>
                    <div class="pagination ne_pagination"></div>
                </div>
                <a class="arrow_ctr ic ic_n_swpl" href="#"></a>
                <a class="arrow_ctr ic ic_n_swpr" href="#"></a>
            </div>
            <ul class="ne_i_hot">
                <li>
                    <h3><a href="">电子厂的陷阱骗局都有哪些？如何进行防范呢？</a></h3>
                    <p>​刚出来打工的人总是抱着一腔热血，想要在这个社会上大展拳脚，混出一番事业来，殊不知还没有踏入电子厂的...</p>
                </li>
                <li>
                    <h3><a href="">抖音上什么电子厂挑战失败提桶跑路是什么梗？</a></h3>
                    <p>​最近爱刷抖音的小伙伴应该关注到了，经常有一些帅哥发出视频，手里拎着水桶，装着自己的个人物品，标题为...</p>
                </li>
                <li>
                    <h3><a href="">没有文化能进电子厂打工吗？为什么很多厂不收学历高的？</a></h3>
                    <p>​电子厂流水线上的工人，一般分为两种，一种是常年在外打工，另一种是初中高中没上完又不知道自己要干啥，...</p>
                </li>
            </ul>
            <ul class="clearfix ne_i_recom">
                <li>
                    <a href="">
                        <img src="{{asset("/assets/home/images/news-img5.jpg")}}" alt="电子厂大量招收假期工是为什么？">
                        <p>电子厂大量招收假期工是为什么？</p>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="{{asset("/assets/home/images/news-img6.jpg")}}" alt="电子厂没干够合同期离职还有工资吗？">
                        <p>电子厂没干够合同期离职还有工资吗？</p>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="{{asset("/assets/home/images/news-img7.jpg")}}" alt="成都捷普电子厂小时工怎么样？">
                        <p>成都捷普电子厂小时工怎么样？</p>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="{{asset("/assets/home/images/news-img8.jpg")}}" alt="电子厂签合同需要注意什么？签了就不能走了吗？">
                        <p>电子厂签合同需要注意什么？签了就不能走了吗？</p>
                    </a>
                </li>
                <li>
                    <a href="" >
                        <img src="{{asset("/assets/home/images/news-img9.jpg")}}" alt="没有文化可以进电子厂吗？对文凭要求高不高？">
                        <p>没有文化可以进电子厂吗？对文凭要求高不高？</p>
                    </a>
                </li>
            </ul>
        </div>
        <div class="section ne_i_stp">
            <div class="ne_i_tit">
                <h2>资讯</h2>
                <div class="types" style="white-space: nowrap;">
                    <a href="">打工攻略</a>
                    <a href="">身在职场</a>
                    <a href="">生活百态</a>
                    <a href="">新闻动态</a>
                </div>
            </div>
            <div class="ne_i_xmain clearfix">
                <ul class="neix_l neix_img">
                    <li class="first">
                        <a href="">
                            <img width="340" src="{{asset("/assets/home/images/news-img9.jpg")}}" alt="电子厂工资都是怎么算的？一个月基本上能拿多少钱？">
                            <p>电子厂工资都是怎么算的？一个月基本上能拿多少钱？</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="{{asset("/assets/home/images/news-img11.png")}}" alt="学生暑假工都有哪些骗局？暑假去电子厂打工靠谱吗？">
                            <p>学生暑假工都有哪些骗局？暑假去电子厂打工靠谱吗？</p>
                        </a>
                    </li>
                    <li>
                        <a href="" >
                            <img src="{{asset("/assets/home/images/news-img12.jpg")}}" alt="为什么年轻人都不愿进厂打工了？">
                            <p>为什么年轻人都不愿进厂打工了？</p>
                        </a>
                    </li>
                </ul>
                <div class="neix_c">
                    <ul class="neix_txt first">
                        <li class="tops">
                            <a href="">一月6000的长沙知名大型电子厂真的工资那么高吗？</a>
                        </li>
                        <li>
                            <a href=""><i class="ic_dot"></i>昆山仁宝电子厂工作累不累？</a>
                        </li>
                        <li>
                            <a href=""><i class="ic_dot"></i>南京华宝工资待遇怎么样？干活累不累？</a>
                        </li>
                        <li>
                            <a href=""><i class="ic_dot"></i>无锡绿点电子厂一个月挣多少钱？</a>
                        </li>
                        <li>
                            <a href=""><i class="ic_dot"></i>成都捷普电子厂怎么样？值得去吗？</a>
                        </li>
                        <li>
                            <a href=""><i class="ic_dot"></i>吴江大智的待遇和环境怎么样？值得去吗？</a>
                        </li>
                    </ul>
                    <ul class="neix_txt first">
                        <li class="tops">
                            <a href="">劳务和中介有什么区别？找工作为什么不收费?</a>
                        </li>
                        <li>
                            <a href=""><i class="ic_dot"></i>进厂必读：劳务圈常见套路大揭秘</a>
                        </li>
                        <li>
                            <a href=""><i class="ic_dot"></i>南京英华达的吃住条件怎么样？</a>
                        </li>
                        <li>
                            <a href=""><i class="ic_dot"></i>穿无尘服上班难受不？</a>
                        </li>
                        <li>
                            <a href=""><i class="ic_dot"></i>临时工小时工有什么区别？在电子厂里都一样吗？</a>
                        </li>
                        <li>
                            <a href=""><i class="ic_dot"></i>电子厂哪里不累？流水线好还是品检好?</a>
                        </li>
                    </ul>
                </div>
                <div class="neix_r">
                    <h3><em>新闻动态</em><i class="t_line"></i></h3>
                    <ul class="neix_img clearfix">
                        <li>
                            <a href="">
                                <img src="{{asset("/assets/home/images/news-img11.png")}}" alt="昆山联滔一个月挣多少钱？值得去吗？">
                                <p>昆山联滔一个月挣多少钱？值得去吗？</p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="{{asset("/assets/home/images/news-img12.jpg")}}" alt="工立方抖音直播开播啦！">
                                <p>工立方抖音直播开播啦！</p>
                            </a>
                        </li>
                    </ul>
                    <h3><em>生活百态</em><i class="t_line"></i></h3>
                    <ul class="neix_txt">
                        <li>
                            <a href=""><i class="ic_dot"></i>农村结婚现在这么难，在电子厂打工还能找到对象吗？</a>
                        </li>
                        <li>
                            <a href=""><i class="ic_dot"></i>电子厂招来工人不靠谱？倒不如说是一些工厂不靠谱</a>
                        </li>
                        <li>
                            <a href=""><i class="ic_dot"></i>电子厂现在想要招年轻工人，必须要满足这些条件</a>
                        </li>
                        <li>
                            <a href=""><i class="ic_dot"></i>第一次进电子厂都需要知道哪些东西？</a>
                        </li>
                        <li>
                            <a href=""><i class="ic_dot"></i>面包车上摆摊每年能赚几十万？新手摆摊卖什么最赚钱？</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="ne_i_tit">
                <h2>专题</h2>
                <div class="types" style="white-space: nowrap;">
                    <a href="">七月七婚恋</a>
                    <a href="">现场直击</a>
                    <a href="">热门活动</a>
                </div>
            </div>
            <ul class="ne_i_zlist clearfix">
                <li>
                    <a href="">
                        <img src="{{asset("/assets/home/images/news-img9.jpg")}}" alt="要你爽，狂撒钱-工立方百万福利等你拿">
                        <p>要你爽，狂撒钱-工立方百万...</p>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="{{asset("/assets/home/images/news-img8.jpg")}}" alt="“助学扶贫 放飞梦想”村村美第二届助学金发放仪式圆满成功">
                        <p>“助学扶贫 放飞梦想”村村...</p>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="{{asset("/assets/home/images/news-img7.jpg")}}" alt="东泰集团·工立方打工网品牌招商加盟说明书">
                        <p>东泰集团·工立方打工网品牌...</p>
                    </a>
                </li><li>
                    <a href="">
                        <img src="{{asset("/assets/home/images/news-img6.jpg")}}" alt="2018东泰集团工立方打工网年终盛典">
                        <p>2018东泰集团工立方打工...</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
@endsection

@section('scripts')
    <script src="{{asset("/assets/home/js/news.js")}}"></script>
@endsection


