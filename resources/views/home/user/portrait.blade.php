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


    <style>
        .av_btn{width:100%; display:block; background:#f8f8f8; line-height:40px;border-radius:50px; text-align:center;cursor:pointer;}
        .av_btn:hover{ background:#ddd; color:#000}
    </style>
    <div class="user_main">
        <div class="section">
            <div class="s_l">
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
            <div class="s_r user_avt">
                <div class="uc_title">
                    <i class="line"></i>
                    <h3>头像设置</h3>
                </div>
                <div class="c_border">
                    <div class="avt_sel">
                        <div class="avt_dis">
                            <img src="{{asset("/assets/home/images/default_user_img.png")}}" alt="" class="cover">
                            <a href="javascript:void(0)" class="">
                                <div id="cover"></div>
                            </a>
                        </div>
                        <p class="con">选一张您喜欢的照片做头像吧 ( 建议图片尺寸不小于200×200 ; 支持jpg、jpeg、gif、png、bmp格式的图片，大小不超过2M )。</p>
                    </div>
                    <div class="avt_show">
                        <div class="avt_f">
                            <img src="{{asset("/assets/home/images/default_user_img.png")}}" alt="" class="cover">
                            <a href="javascript:void(0);"  id="saveImgBtn" class="btn_m btn_round btn btn_orange">保存</a>
                            <a href="javascript:void(0);" class="btn_m btn_round btn btn_ignore"  onclick="location.reload()">取消</a>
                        </div>
                        <div class="con">
                            <p>头像预览</p>
                            <div class="avt_s s1">
                                <span class="img_vt">
                                    <img src="{{asset("/assets/home/images/default_user_img.png")}}" alt="" class="cover">
                                </span>
                                180*180像素
                            </div>
                            <div class="avt_s s2">
                                <span class="img_vt">
                                    <img src="{{asset("/assets/home/images/default_user_img.png")}}" alt="" class="cover">
                                </span>
                                100*100像素
                            </div>
                            <div class="avt_s s3">
                                <span class="img_vt">
                                    <img src="{{asset("/assets/home/images/default_user_img.png")}}" alt="" class="cover">
                                </span>
                                50*50像素
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <input type="hidden" name="cover" />
    <div id="some_file_queue" style="display:none;"></div>


    <link href="{{asset("/assets/plugins/webuploader-0.1.5/css/webuploader.css")}}" rel="stylesheet" type="text/css">
    <style>
        .webuploader-pick{width: 160px;}
    </style>
    <script type="text/javascript" src="{{asset("/assets/plugins/webuploader-0.1.5/dist/webuploader.min.js")}}"></script>
    <script>
        var host = "http://www.baidu.com/";
        function createWebuploader(){
            //初始化webuploader
            var uploader = WebUploader.create({
                pick: {
                    id: '#cover',
                    innerHTML: '<div class="upbtn">上传头像</div>'
                },
                fileVal:'fileupload',
                swf: '/Public/Admin/webuploader-0.1.5/Uploader.swf',
                server: "/User/upload.html",//上传的URL
                auto: true,
                formData:{ 'dir' : 'user' },
                accept: {
                    title: '图片文件',
                    extensions: 'jpg,jpeg,png,bmp',
                    mimeTypes:'image/jpeg,image/bmp'
                }
            });
            uploader.on('uploadSuccess',function(file, response){
                var data = response;
                if(data.status == 0){
                    layer.alert(data.msg, {title:'温馨提示'});
                }else{
                    $("input[name='cover']").val(data.data);
                    $(".cover").attr('src', host+data.data);
                }
                uploader.destroy();
                createWebuploader();
            });
        }
        $("#saveImgBtn").click(function(){
            var cover = $("input[name='cover']").val();
            if(cover == ''){
                layer.alert('没有上传图片', {title:'温馨提示'});
                return false;
            }
            var loadA = layer.load(2);	//弹出加载框
            $.post("/User/cover.html", {cover:cover}, function(data){
                layer.close(loadA);
                //console.log(data);
                layer.alert(data['msg'], {title:'温馨提示'});
                if(data.status == 1){
                    location.reload();
                }
            }, 'json');
        });

        $(document).ready(function(){
            createWebuploader();
        });
    </script>
@endsection

@section('scripts')
    <script src="{{asset("/assets/home/js/user.js")}}"></script>
@endsection


