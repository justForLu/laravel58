@extends('home.layout.base')

@section('styles')
    <link rel="stylesheet" href="{{asset("/assets/home/css/join.css")}}">
@endsection

@section('content')
    <div class="wrap">
        <div>
            <img class="main" src="{{asset("/assets/home/images/join-banner.png")}}">
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
        </div>
        <div class="fuchi"></div>
        <div class="yuanjing"></div>
        <div class="tiaojian"></div>
        <div class="liucheng"></div>
    </div>
@endsection

@section('scripts')
    <script src="{{asset("/assets/home/js/swiper.js")}}"></script>
    <script src="{{asset("/assets/home/js/lazyload.js")}}"></script>
    <script src="{{asset("/assets/home/js/layer.js")}}"></script>
    <script src="{{asset("/assets/home/js/join.js")}}"></script>
@endsection


