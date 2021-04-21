@extends('home.layout.base')

@section('styles')
    <link rel="stylesheet" href="{{asset("/assets/home/css/join.css")}}">
@endsection

@section('content')
    <div class="wrap">
        <div>
            <img class="main" src="{{asset("/assets/home/images/join-banner.png")}}" style="width: 100%">
        </div>
    </div>
    <div class="join-section">
        <div class="join-form">
            <form action="{{url("/home/join/join_in")}}" method="post" class="J_ajaxForm">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                <div>
                    <input type="text" name="name" value="" placeholder="请输入您的姓名">
                </div>
                <div>
                    <input type="text" name="mobile" value="" placeholder="请输入您的手机号">
                </div>
                <div>
                    <input type="text" name="years" id="workyear" value="" placeholder="请输入您的从业年限">
                </div>
                <button type="submit" class="J_ajax_submit_btn">提交</button>
            </form>
        </div>
        <div class="youshi">
            <div class="title title-center">
                <div class="title-cn">我们的优势</div>
                <div class="title-en">ADVANTAGE</div>
            </div>
            <div class="youshi-box">
                <div class="item">
                    <div class="youshi-img">
                        <img src="{{asset('/assets/home/images/join-youshi1.png')}}" alt="">
                    </div>
                    <div class="youshi-word" style="background-color: #BDCFE4;">
                        <p>完善的劳务管理结算系统，员工工时、利润明细可见可查，每月月底准时返还上月利润，没有后顾之忧。</p>
                    </div>
                </div>
                <div class="item">
                    <div class="youshi-word">
                        <p>给予小时补贴，员工工资高，十五年无一例扣款发生，信誉担保，员工黏性强、忠诚度高。</p>
                    </div>
                    <div class="youshi-img">
                        <img src="{{asset('/assets/home/images/join-youshi2.png')}}" alt="">
                    </div>
                </div>
                <div class="item">
                    <div class="youshi-img">
                        <img src="{{asset('/assets/home/images/join-youshi3.png')}}" alt="">
                    </div>
                    <div class="youshi-word" style="background-color: #E7CFC4;">
                        <p>合作企业均有驻厂全程服务，24小时接送员工，帮离职员工转厂、返乡车辆安排等，保障员工在职，维护员工稳定。</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="fuchi">
            <div class="title title-center">
                <div class="title-cn">加盟5大扶持</div>
                <div class="title-en">JOINING SUPPORT</div>
            </div>
            <div class="fuchi-box">
                <div>
                    <div class="fuchi-img">
                        <img src="{{asset('/assets/home/images/join-fuchi.png')}}" alt="">
                    </div>
                    <div class="fuchi-word">
                        <div class="fuchi-title">
                            <p>专业的客服团队，实时在线，用心沟通，耐心解答，轻松解忧，助您快速发家致富</p>
                        </div>
                        <div class="fuchi-item">
                            <ul>
                                <li>
                                    <p>15年专业经验，定期组织培训，日送人量最高可达3000+</p>
                                </li>
                                <li>
                                    <p>协助选址、提供装修方案</p>
                                </li>
                                <li>
                                    <p>网站平台资源免费共享，总部统一宣传推广</p>
                                </li>
                                <li>
                                    <p>开设专属后台账号，客户资源保密</p>
                                </li>
                                <li>
                                    <p>不定期组织工地实地考察</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="yuanjing">
            <div class="yuanjing-box">
                <div class="yuanjing-word">
                    <div class="title title-left">
                        <div class="title-cn">加盟合作愿景</div>
                        <div class="title-en">COOPERATION</div>
                    </div>
                    <div class="small-title">互联+时代取胜新法</div>
                    <div class="content">
                        <p>随着中国经济的发展与变革，国内劳务市场已然发生巨变。工人找工作难，已转变为工厂用工荒，劳务中介也从收取工人费用，变为免费招工，拼价格、拼服务。单打独斗躺着赚钱的时代已经一去不复返，在劳务市场竞争白热化的今天，必须靠品牌、体量、服务才能立于不败之地！</p>
                    </div>
                </div>
                <div class="yuanjing-img">
                    <img src="{{asset('/assets/home/images/join-yuanjing.png')}}" alt="">
                </div>
            </div>
        </div>
        <div class="tiaojian">
            <div class="title title-right">
                <div class="title-cn">加盟条件</div>
                <div class="title-en">CONDITION</div>
            </div>
            <div class="tiaojian-box">
                <div class="tiaojian-img">
                    <img src="{{asset('/assets/home/images/join-tiaojian.png')}}" alt="">
                </div>
                <div class="tiaojian-word">
                    <ul>
                        <li><span>1</span><p>有两年以上的同行业相关经验</p></li>
                        <li><span>2</span><p>在乡镇或县城开有招工门店/你是一家人力资源公司/你是一家人才市场/你是一家职业培训机构</p></li>
                        <li><span>3</span><p>你是一个有梦想的创业者，诚信，博爱，有担当，愿意去帮助更多的人</p></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="liucheng">
            <div>
                <div class="title title-center">
                    <div class="title-cn">加盟流程</div>
                    <div class="title-en">JOIN PROCESS</div>
                </div>
                <div class="liucheng-box">
                    <div class="liucheng-img">
                        <img src="{{asset('/assets/home/images/join-liucheng.png')}}" alt="">
                    </div>
                    <div class="buzhou-dec">
                        <div class="item">
                            <p class="buzhou-title">第一步</p>
                            <p class="buzhou-dec">提交资料或者联系电话咨询，预约面见详情</p>
                        </div>
                        <div class="item">
                            <p class="buzhou-title">第二步</p>
                            <p class="buzhou-dec">面见详谈，拟定商议合同事项以及其他相关事项</p>
                        </div>
                        <div class="item">
                            <p class="buzhou-title">第三步</p>
                            <p class="buzhou-dec">拟定合同后，面见公司企业法务处理交接相关事宜等</p>
                        </div>
                        <div class="item">
                            <p class="buzhou-title">第四步</p>
                            <p class="buzhou-dec">审阅拟定合同，熟悉相关法务，了解公司运营</p>
                        </div>
                        <div class="item">
                            <p class="buzhou-title">第五步</p>
                            <p class="buzhou-dec">签订合同，合作愉快，携手共进，一起发展未来</p>
                        </div>
                    </div>
                </div>
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


