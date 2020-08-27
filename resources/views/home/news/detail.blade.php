@extends('home.layout.base')

@section('styles')
    <link rel="stylesheet" href="{{asset("/assets/home/css/style-news.css")}}">
@endsection

@section('content')
    <div class="breadcrumb">
        <ul class="section">
            <li>您现在的位置：</li>
            <li><a href="{{url("/home/index.html")}}">首页</a> <span class="divider">&gt;</span></li>
            <li><a href="{{url("/home/news/index.html")}}">资讯</a> <span class="divider">&gt;</span></li>
            <li><a href="{{url("/home/news/list.html?category_id=".$category_id)}}">{{$category_name}}</a> <span class="divider">&gt;</span></li>
            <li class="active">资讯详情</li>
        </ul>
    </div>
    <div class="wrap wrap_news">
        <div class="section clearfix">
            <div class="ne_fl">
                <div class="ne_pg_main">
                    <div class="ne_pg">
                        <div class="ne_pg_title">
                            <h2>{{$data->title}}</h2>
                            <p><span>浏览次数：{{$data->read}}次</span><span>发布时间：{{$data->create_time}}</span><span>编辑：{{$data->author}}</span></p>
                        </div>
                        <div class="ne_pg_con">
                            <?php echo $data->content ?>
                        </div>
                    </div>
                </div>
                <div class="ne_pg_recom ne_recom">
                    <div class="fac_title">
                        <i class="line"></i>
                        <h3>相关文章推荐</h3>
                    </div>
                    <div class="ne_pg_recom_main">
                        <ul class="neix_txt">
                            @if($news_1)
                                @foreach($news_1 as $news1)
                                    <li>
                                        <a href="{{url("/home/news/detail/".$news1['id'].".html")}}">
                                            <span class="times">{{$news1['date']}}</span>
                                            <i class="ic_dot"></i>{{$news1['title']}}
                                        </a>
                                    </li>
                                @endforeach
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
            <div class="ne_fr">
                <div class="ne_rhot ne_rmain">
                    <div class="ner_title">
                        <i class="ic_line ic_ner_t"></i>
                        <h3>热门文章</h3>
                    </div>
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
    <script src="{{asset("/assets/home/js/tvp.player_v2_jq.js")}}"></script>
    <script src="{{asset("/assets/home/js/news.js")}}"></script>
@endsection


