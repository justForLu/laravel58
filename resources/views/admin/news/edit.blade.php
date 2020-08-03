@extends('admin.layout.base')

@section('content')
    <fieldset class="main-field main-field-title">
        <legend>编辑新闻</legend>
    </fieldset>

    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <form class="form-horizontal J_ajaxForm" style="margin:10px 20px;" role="form" id="form" action="{{url('admin/news',array($data->id))}}" method="post">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <input type="hidden" name="_method" value="PUT">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">新闻标题</label>
                            <div class="col-sm-8">
                                <input type="text" name="title" autocomplete="off" class="form-control" value="{{$data->title}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">新闻分类</label>
                            <div class="col-sm-8">
                                <select class="form-control" name="category_id">
                                    <option value="0">请选择新闻分类</option>
                                    @if($category)
                                        @foreach($category as $v)
                                            <option value="{{$v['id']}}" @if($v['id'] == $data->category_id) selected @endif >{{$v['name']}}</option>
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-sm-3 control-label">新闻简介</label>
                            <div class="col-sm-8">
                                <textarea name="desc" cols="30" rows="5">{{$data->desc}}</textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">新闻封面</label>
                            <div class="col-sm-8">
                                <div class="J_upload_image" data-id="image" data-_token="{{ csrf_token() }}">
                                    @if(!empty($data->image))
                                        <input type="hidden" name="image_val" value="{{ $data->image }}">
                                        <input type="hidden" name="image_path[]" value="{{ $data->image }}">
                                    @endif
                                </div>
                            </div>
                            <div class="col-sm-3"></div>
                            <div class="col-sm-8"><span class="tips">建议尺寸</span></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">排序</label>
                            <div class="col-sm-8">
                                <input type="text" name="sort" autocomplete="off" class="form-control" value="{{$data->sort}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">状态</label>
                            <div class="col-sm-8">
                                {{\App\Enums\BasicEnum::enumSelect($data->status,false,'status')}}
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">是否置顶</label>
                            <div class="col-sm-8">
                                {{\App\Enums\BoolEnum::enumRadio($data->is_top,'is_top')}}
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">状态</label>
                            <div class="col-sm-8">
                                {{\App\Enums\BoolEnum::enumRadio($data->is_recommend,'is_recommend')}}
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">新闻内容</label>
                            <div class="col-sm-8">
                                <script id="editor" name="content" type="text/plain">
                                    <?php echo $data->content ?>
                                </script>
                            </div>
                        </div>
                        <div class="box-footer">
                            <div class="col-xs-2 col-md-1 col-sm-offset-3">
                                @can('news.update')
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

