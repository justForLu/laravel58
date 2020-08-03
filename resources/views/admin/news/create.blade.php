@extends('admin.layout.base')

@section('content')
    <fieldset class="main-field main-field-title">
        <legend>添加新闻</legend>
    </fieldset>

    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <form class="form-horizontal J_ajaxForm" style="margin:10px 20px;" role="form" id="form" action="{{url('admin/news')}}" method="post">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <div class="form-group">
                            <label for="name" class="col-sm-3 control-label">新闻标题</label>
                            <div class="col-sm-8">
                                <input type="text" name="title" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">新闻分类</label>
                            <div class="col-sm-8">
                                <select class="form-control" name="category_id">
                                    <option value="0">请选择新闻分类</option>
                                    @if($category)
                                        @foreach($category as $v)
                                            <option value="{{$v['id']}}">{{$v['name']}}</option>
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-sm-3 control-label">新闻简介</label>
                            <div class="col-sm-8">
                                <textarea name="desc" cols="30" rows="5"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">新闻封面</label>
                            <div class="col-sm-8">
                                <div class="J_upload_image" data-id="image" data-_token="{{ csrf_token() }}" data-type="multiple" data-num="1">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sort" class="col-sm-3 control-label">排序</label>
                            <div class="col-sm-8">
                                <input type="text" name="sort" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">状态</label>
                            <div class="col-sm-8">
                                {{\App\Enums\BasicEnum::enumSelect(\App\Enums\BasicEnum::ACTIVE,false,'status')}}
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">是否置顶</label>
                            <div class="col-sm-8">
                                {{\App\Enums\BoolEnum::enumRadio(\App\Enums\BoolEnum::NO,'is_top')}}
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">是否推荐</label>
                            <div class="col-sm-8">
                                {{\App\Enums\BoolEnum::enumRadio(\App\Enums\BoolEnum::NO,'is_recommend')}}
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">新闻内容</label>
                            <div class="col-sm-8">
                                <script id="editor" name="content" type="text/plain">

                                </script>
                            </div>
                        </div>
                        <div class="box-footer">
                            <div class="col-xs-2 col-md-1 col-sm-offset-3">
                                @can('news.store')
                                    <button type="submit" class="btn btn-primary J_ajax_submit_btn">提交</button>
                                @endcan
                            </div>
                            <div class="col-xs-2 col-md-1">
                                <a href="{{url('admin/news')}}" class="btn btn-default">取消</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('scripts')
    <script src="{{asset('/assets/plugins/ueditor/ueditor.config.js')}}"></script>
    <script src="{{asset('/assets/plugins/ueditor/ueditor.all.js')}}"></script>
    <script type="text/javascript">
        var ue = UE.getEditor('editor');
    </script>
@endsection


