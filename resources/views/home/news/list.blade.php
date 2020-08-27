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
                @if($category)
                    @foreach($category as $cat)
                        <dd>
                            <a href="{{url("/home/news/list.html?category_id=".$cat['id'])}}" @if($cat['id'] == $category_id) class="active" @endif >{{$cat['name']}}</a>
                        </dd>
                    @endforeach
                @endif
            </dl>
        </div>
    </div>

    <div class="breadcrumb">
        <ul class="section">
            <li>您现在的位置：</li>
            <li><a href="{{url("/home/index.html")}}">首页</a> <span class="divider">&gt;</span></li>
            <li><a href="{{url("/home/news/index.html")}}">资讯</a> <span class="divider">&gt;</span></li><li class="active">{{$category_name}}</li>
        </ul>
    </div>

    <div class="wrap wrap_news">
        <div class="section clearfix">
            <div class="ne_fl">

                <div class="ne_xlist_main">
                    <ul class="ne_xlist">
                        @if($list)
                            @foreach($list as $data)
                                <li>
                                    <a href="{{url("/home/news/detail/".$data->id.".html")}}" class="imgs">
                                        <img src="{{$data->image}}" alt="{{$data->title}}"></a>
                                    <div class="cons">
                                        <h3><a href="{{url("/home/news/detail/".$data->id.".html")}}">{{$data->title}}</a></h3>
                                        <p></p>
                                        <span class="times"><i class="ic ic_ne_time"></i>{{$data->create_time}}</span>
                                    </div>
                                </li>
                            @endforeach
                        @endif
                    </ul>
                    @include('home.public.pages')
                </div>

            </div>
            <div class="ne_fr">
                <div class="ne_rhot ne_rmain">
                    <div class="ner_title"><i class="ic_line ic_ner_t"></i><h3>热门文章</h3></div>
                    <ul class="ne_rhot_list clearfix">
                        @if($news_2)
                            @foreach($news_2 as $news2)
                                <li>
                                    <a href="{{url("/home/news/detail/".$news2['id'].".html")}}" title="{{$news2['title']}}">
                                        <img src="{{$news2['image']}}" alt="{{$news2['title']}}">
                                        <p>{{$news2['title']}}</p>
                                    </a>
                                </li>
                            @endforeach
                        @endif
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
                @if($recruit)
                    @foreach($recruit as $v)
                        <li>
                            <a href="{{url("/home/recruit/detail/".$v['id'].'.html')}}" class="imgs" target="_blank">
                                <img src="{{$v['factory']['image']}}" alt="{{$v['factory']['name']}}">
                            </a>
                            <div class="con">
                                <a href="{{url("/home/recruit/detail/".$v['id'].".html")}}" target="_blank" class="name">{{$v['factory']['name']}}</a>
                                <p class="des">
                                    @if($v['edu_ask']) {{$v['edu_ask']}}<i class="line"></i> @endif
                                    @if($v['sex_ask']) {{$v['sex_ask']}}<i class="line"></i> @endif
                                    @if($v['age_ask']) {{$v['age_ask']}} @endif
                                </p>
                                <p class="price">￥{{$v['salary_up']}}-{{$v['salary_down']}}元/月</p>
                            </div>
                        </li>
                    @endforeach
                @endif
            </ul>
        </div>
    </div>
@endsection

@section('scripts')
    <script src="{{asset("/assets/home/js/news.js")}}"></script>
@endsection


