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
                            <a href="{{url("/home/news/list.html?category_id=".$cat['id'])}}" >{{$cat['name']}}</a>
                        </dd>
                    @endforeach
                @endif
            </dl>
        </div>
    </div>

    <div class="wrap">
        <div class="section clearfix ne_i_top">
            <ul class="ne_i_hot">
                @if($news_list1)
                    @foreach($news_list1 as $k1 => $news1)
                        @if($k1 < 3)
                            <li>
                                <h3><a href="{{url("/home/news/detail/".$news1['id'].".html")}}">{{$news1['title']}}</a></h3>
                                <p>​{{$news1['desc']}}</p>
                            </li>
                        @endif
                    @endforeach
                @endif
            </ul>
            <ul class="clearfix ne_i_recom">
                @if($news_list1)
                    @foreach($news_list1 as $k2 => $news2)
                        @if($k2 > 2)
                            <li>
                                <a href="{{url("/home/news/detail/".$news2['id'].".html")}}">
                                    <img src="{{$news2['image']}}" alt="{{$news2['title']}}">
                                    <p>{{$news2['title']}}</p>
                                </a>
                            </li>
                        @endif
                    @endforeach
                @endif
            </ul>
        </div>
        <div class="section ne_i_stp">
            <div class="ne_i_tit">
                <h2>资讯</h2>
                <div class="types" style="white-space: nowrap;">
                    @if($category)
                        @foreach($category as $cat2)
                            <a href="{{url("/home/news/list.html?category_id=".$cat2['id'])}}" >{{$cat2['name']}}</a>
                        @endforeach
                    @endif
                </div>
            </div>
            <div class="ne_i_xmain clearfix" style="margin-bottom: 50px;">
                <div class="neix_c">
                    <ul class="neix_txt first">
                        @if($category)
                            @foreach($category as $key1 => $new1)
                                @if($key1 == 0 && $new1['news'])
                                    @foreach($new1['news'] as $k_n1 => $n1)
                                        @if($k_n1 == 0)
                                            <li class="tops">
                                                <a href="{{url("/home/news/detail/".$n1['id'].".html")}}">{{$n1['title']}}</a>
                                            </li>
                                        @else
                                            <li>
                                                <a href="{{url("/home/news/detail/".$n1['id'].".html")}}"><i class="ic_dot"></i>{{$n1['title']}}</a>
                                            </li>
                                        @endif
                                    @endforeach
                                @endif
                            @endforeach
                        @endif
                    </ul>
                    <ul class="neix_txt first">
                        @if($category)
                            @foreach($category as $key2 => $new2)
                                @if($key2 == 1 && $new2['news'])
                                    @foreach($new2['news'] as $k_n2 => $n2)
                                        @if($k_n2 == 0)
                                            <li class="tops">
                                                <a href="{{url("/home/news/detail/".$n2['id'].".html")}}">{{$n2['title']}}</a>
                                            </li>
                                        @else
                                            <li>
                                                <a href="{{url("/home/news/detail/".$n2['id'].".html")}}"><i class="ic_dot"></i>{{$n2['title']}}</a>
                                            </li>
                                        @endif
                                    @endforeach
                                @endif
                            @endforeach
                        @endif
                    </ul>
                </div>
                <div class="neix_r">
                    @if($category)
                        @foreach($category as $key3 => $new3)
                            @if($key3 == 2 && $new3['news'])
                                <h3>
                                    <em>{{$new3['name']}}</em>
                                    <i class="t_line"></i>
                                </h3>
                                <ul class="neix_img clearfix">
                                    @foreach($new3['news'] as $k_n3 => $n3)
                                        @if($k_n3 < 2)
                                            <li>
                                                <a href="{{url("/home/news/detail/".$n3['id'].".html")}}">
                                                    <img src="{{$n3['image']}}" alt="{{$n3['title']}}">
                                                    <p>{{$n3['title']}}</p>
                                                </a>
                                            </li>
                                        @endif
                                    @endforeach
                                </ul>
                            @endif
                        @endforeach
                    @endif
                        @if($category)
                            @foreach($category as $key4 => $new4)
                                @if($key4 == 3 && $new4['news'])
                                    <h3>
                                        <em>{{$new4['name']}}</em>
                                        <i class="t_line"></i>
                                    </h3>
                                    <ul class="neix_txt">
                                        @foreach($new4['news'] as $k_n4 => $n4)
                                            @if($k_n4 < 5)
                                                <li>
                                                    <a href="{{url("/home/news/detail/".$n4['id'].".html")}}">
                                                        <i class="ic_dot"></i>{{$n4['title']}}
                                                    </a>
                                                </li>
                                            @endif
                                        @endforeach
                                    </ul>
                                @endif
                            @endforeach
                        @endif
                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script src="{{asset("/assets/home/js/news.js")}}"></script>
@endsection


