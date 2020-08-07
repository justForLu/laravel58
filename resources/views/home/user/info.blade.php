@extends('home.layout.base')

@section('styles')
    <link rel="stylesheet" href="{{asset("/assets/home/css/user.css")}}">
@endsection

@section('content')
    <div class="user_top wrap">
        <div class="section">
            <div class="user_top_avt">
                <div class="imgs">
                    <img src="{{asset("/assets/home/images/default_user_img.png")}}" alt="">
                    <a href="" class="to_avt">
                        <i class="ic ic_avt_ico"></i>
                    </a>
                </div>
                <p>欢迎你，亲爱的 <em>工立方_0778</em>！</p>
            </div>
            <div class="user_top_num">
                <a href="" class="nums">
                    消息<em>0</em>
                </a>
                <a href="" class="nums">
                    我的推荐<em>0</em>
                </a>
                <a href="" class="nums">
                    我的收藏<em>0</em>
                </a>
            </div>
        </div>
    </div>


    <div class="section user_main">
        <div class="s_l">
            <div class="user_left c_border">
                <div class="user_left c_border">
                    <ul class="user_left_nav">
                        <li class="active"><a href=""><i class="ic iconfont">&#xe652;</i>消息中心</a></li>
                        <li><a href=""><i class="ic iconfont">&#xe650;</i>我的资料</a></li>
                        <li><a href=""><i class="ic iconfont">&#xe669;</i>提现资料</a></li>
                        <li><a href=""><i class="ic iconfont">&#xe669;</i>工资明细</a></li>
                        <li><a href=""><i class="ic iconfont">&#xe674;</i>我的收藏</a></li>
                        <li><a href=""><i class="ic iconfont">&#xe651;</i>头像设置</a></li>
                        <li><a href=""><i class="ic iconfont">&#xe63c;</i>帐号管理</a></li>
                    </ul>
                    <div class="user_lapp">
                        <img src="{{asset("/assets/home/images/weixin.jpg")}}" alt="">
                        扫描二维码，即可订阅岗位，<br>数万岗位随手可得
                    </div>
                </div>
            </div>
        </div>
        <div class="s_r">
            <div class="uc_title">
                <i class="line"></i>
                <h3>我的资料</h3>
                <span class="more">完善资料，让我们更加了解你</span>
            </div>
            <div class="c_border">
                <form action="" method="POST" id='form' class="form form-horizontal uc_form">
                    <div class="form-item t_org">
                        <label class="form-label" for=""></label>
                        <div class="form-field">提示：资料完善后禁止修改，请谨慎填写！</div>
                    </div>
                    <div class="form-item">
                        <label class="form-label" for="">手机号：</label>
                        <div class="form-field">
                            <input type="text" class="form-text" name="has_mobile" value="1" style="display:none;">
                            <input type="text" class="form-text" value="15924140778" disabled>
                        </div>
                    </div>
                    <div class="form-item">
                        <label class="form-label" for="">姓名：</label>
                        <div class="form-field">
                            <input type="text" name="name" id="name" class="form-text" placeholder="请填写真实姓名" value="">
                        </div>
                    </div>
                    <div class="form-item">
                        <label class="form-label" for="">身份证号：</label>
                        <div class="form-field">
                            <input type="text" name="card_num"  class="form-text" id="card_num" placeholder="请填写您的身份证号" value=""/>
                            <span style="color:#f00;font-size:12px;width:120px;" id="card_num_tip"></span>
                        </div>
                    </div>
                    <div class="form-item">
                        <label class="form-label" for="">性别：</label>
                        <div class="form-field form-field-rc">
                            <label class="form-label-rc"><input name="sex" value="1" type="radio" class="form-radio"  /><span>男</span></label>
                            <label class="form-label-rc"><input name="sex" value="2" type="radio" class="form-radio"  /><span>女</span></label>
                        </div>
                    </div>
                    <div class="form-item">
                        <label class="form-label" for="">年龄：</label>
                        <div class="form-field">
                            <select name="age" class="hj_select form-select inline-ele">
                                <option value="16" >16岁</option>
                                <option value="17" >17岁</option>
                                <option value="18" >18岁</option>
                                <option value="19" >19岁</option>
                                <option value="20" >20岁</option>
                                <option value="21" >21岁</option>
                                <option value="22" >22岁</option>
                                <option value="23" >23岁</option>
                                <option value="24" >24岁</option>
                                <option value="25" >25岁</option>
                                <option value="26" >26岁</option>
                                <option value="27" >27岁</option>
                                <option value="28" >28岁</option>
                                <option value="29" >29岁</option>
                                <option value="30" >30岁</option>
                                <option value="31" >31岁</option>
                                <option value="32" >32岁</option>
                                <option value="33" >33岁</option>
                                <option value="34" >34岁</option>
                                <option value="35" >35岁</option>
                                <option value="36" >36岁</option>
                                <option value="37" >37岁</option>
                                <option value="38" >38岁</option>
                                <option value="39" >39岁</option>
                                <option value="40" >40岁</option>
                                <option value="41" >41岁</option>
                                <option value="42" >42岁</option>
                                <option value="43" >43岁</option>
                                <option value="44" >44岁</option>
                                <option value="45" >45岁</option>
                                <option value="46" >46岁</option>
                                <option value="47" >47岁</option>
                                <option value="48" >48岁</option>
                                <option value="49" >49岁</option>
                                <option value="50" >50岁</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-item">
                        <label class="form-label" for="">户籍：</label>
                        <div class="form-field">
                            <select name="province" id="province" class="hj_select form-select inline-ele">
                                <option value="">省份</option>
                                <option value="110000">北京</option>
                                <option value="120000">天津</option>
                                <option value="130000">河北省</option>
                                <option value="140000">山西省</option>
                                <option value="150000">内蒙古自治区</option>
                                <option value="210000">辽宁省</option>
                                <option value="220000">吉林省</option>
                                <option value="230000">黑龙江省</option>
                                <option value="310000">上海</option>
                                <option value="320000">江苏省</option>
                                <option value="330000">浙江省</option>
                                <option value="340000">安徽省</option>
                                <option value="350000">福建省</option>
                                <option value="360000">江西省</option>
                                <option value="370000">山东省</option>
                                <option value="410000">河南省</option>
                                <option value="420000">湖北省</option>
                                <option value="430000">湖南省</option>
                                <option value="440000">广东省</option>
                                <option value="450000">广西</option>
                                <option value="460000">海南省</option>
                                <option value="500000">重庆</option>
                                <option value="510000">四川省</option>
                                <option value="520000">贵州省</option>
                                <option value="530000">云南省</option>
                                <option value="540000">西藏自治区</option>
                                <option value="610000">陕西省</option>
                                <option value="620000">甘肃省</option>
                                <option value="630000">青海省</option>
                                <option value="640000">宁夏回族自治区</option>
                                <option value="650000">新疆维吾尔自治区</option>
                                <option value="710000">台湾</option>
                                <option value="810000">香港特别行政区</option>
                                <option value="820000">澳门特别行政区</option>
                            </select>
                            <select name="city" id='city' class="hj_select form-select inline-ele">
                                <option value="0">城市</option>
                            </select>
                            <select name="area" id='area' class="hj_select form-select inline-ele">
                                <option value="0">区/县</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-action  action-left">
                        <a href="javascript:saveInfo()" class="btn btn_b btn_orange btn_round">保存</a>
                    </div>
                </form>
            </div>
        </div>
    </div>


@endsection

@section('scripts')
    <script src="{{asset("/assets/home/js/user.js")}}"></script>
@endsection


