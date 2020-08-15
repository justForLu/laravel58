<div class="head_tool wrap">
    <div class="section clearfix">
        <p class="phones fl">
            <i class="ic ic_top_num"></i>免费服务热线<em>0371-55338888</em>
        </p>
        <div class="fr">
            <div class="tol_links">
                <a href="javascript:void(0);" rel="nofollow">
                    <i class="ic ic_top_phone"></i>手机站
                </a>
                <div class="mark_con">
                    <span class="ic_up"><i></i></span>
                    <img src="{{asset("/assets/home/images/mobile.png")}}" alt="濮阳打工网移动版">
                    <p>扫码打开触屏版</p>
                </div>
            </div>
            <div class="tol_links">
                <a href="javascript:void(0);" rel="nofollow"><i class="ic ic_top_weixin"></i>微信</a>
                <div class="mark_con">
                    <span class="ic_up"><i></i></span>
                    <img src="{{asset("/assets/home/images/weixin.jpg")}}" alt="濮阳打工网公众号">
                    <p>关注濮工网公众号</p>
                </div>
            </div>
            <div class="tol_links tol_appdownload">
                <a href="javascript:void(0);" rel="nofollow">
                    <i class="ic ic_top_app"></i>APP下载
                </a>
                <div class="mark_con">
                    <span class="ic_up"><i></i></span>
                    <img src="{{asset("/assets/home/images/app-ewm.png")}}" alt="濮阳打工网APP">
                    <p>下载濮工网APP</p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="head wrap">
    <div class="section clearfix">
        <h1 class="logo">
            <a href="{{url("/home/index.html")}}" title="濮工网">
                <img src="{{asset("/assets/home/images/logo.png")}}" alt="濮工网打工网"/>
            </a>
        </h1>
        <div class="site_select">
            <div class="cur_site">
                <i class="ic ic_top_location"></i>
                <em id="cur_site">定位中...</em>
            </div>
        </div>
        <ul class="nav">
            <li>
                <a href="{{url("/home/index.html")}}" @if($menu == 'Index') class="cur" @endif>首页<i class="ic_up"></i></a>
            </li>
            <li>
                <a href="{{url("/home/recruit/index.html")}}" @if($menu == 'Recruit') class="cur" @endif>找工作<i class="ic_up"></i></a>
            </li>
            <li>
                <a href="{{url("/home/shop/index.html")}}" @if($menu == 'Shop') class="cur" @endif>找门店<i class="ic_up"></i></a>
            </li>
            <li>
                <a href="{{url("/home/news/index.html")}}" @if($menu == 'News') class="cur" @endif>资讯<i class="ic_up"></i></a>
            </li>
        </ul>
        @if(isset($userInfo) && $userInfo)
            <div class="head_user">
                <div class="users">
                    <img src="@if($userInfo->image) {{$userInfo->image}}  @else {{asset("/assets/home/images/default_user_img.png")}}  @endif" alt="" class="head_avt">工立方_0778<i class="ic_down"></i>
                </div>
                <ul>
                    <li><a href="{{url("/home/info")}}" rel="nofollow">个人中心</a></li>
                    <li><a href="{{url("/home/portrait")}}" rel="nofollow">修改头像</a></li>
                    <li><a href="{{url("/home/logout")}}" rel="nofollow">退出</a></li>
                </ul>
            </div>
        @else
            <div class="head_login">
                <a class="btns hover" href="{{url("/home/login.html")}}" target="_blank" rel="nofollow">登录</a>
                <a class="btns" href="{{url("/home/register.html")}}" target="_blank" rel="nofollow">注册</a>
            </div>
        @endif
    </div>
</div>

<script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.15&key=a9ef099582b8abffad85df7a65246f36&plugin=AMap.CitySearch"></script>
<script type="text/javascript">
    function showCityInfo() {
        //实例化城市查询类
        var citysearch = new AMap.CitySearch();
        //自动获取用户IP，返回当前城市
        citysearch.getLocalCity(function(status, result) {
            if (status === 'complete' && result.info === 'OK') {
                if (result && result.city && result.bounds) {
                    var cityinfo = result.city;
                    document.getElementById('cur_site').innerHTML = cityinfo;
                }
            } else {
                document.getElementById('info').innerHTML = result.info;
            }
        });
    }

    showCityInfo();
</script>


