@extends('admin.layout.base')

@section('content')
    <fieldset class="main-field main-field-title">
        <legend>编辑幻灯片</legend>
    </fieldset>

    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <form class="form-horizontal J_ajaxForm" style="margin:10px 20px;" role="form" id="form" action="{{url('admin/banner',array($data->id))}}" method="post">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <input type="hidden" name="_method" value="PUT">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">幻灯片标题</label>
                            <div class="col-sm-8">
                                <input type="text" name="title" autocomplete="off" class="form-control" value="{{$data->title}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">幻灯片</label>
                            <div class="col-sm-8">
                                <div class="J_upload_image" data-id="image" data-width="1920" data-_token="{{ csrf_token() }}">
                                    @if(!empty($data->image))
                                        <input type="hidden" name="image_val" value="{{ $data->image }}">
                                        <input type="hidden" name="image_path[]" value="{{ $data->image }}">
                                    @endif
                                </div>
                            </div>
                            <div class="col-sm-3"></div>
                            <div class="col-sm-8"><span class="tips">首页位置建议尺寸1920*1080，咨询位置建议尺寸</span></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">幻灯片位置</label>
                            <div class="col-sm-8">
                                {{\App\Enums\BannerEnum::enumSelect($data->type,false,'type')}}
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">关联链接</label>
                            <div class="col-sm-8">
                                <input type="text" name="link" autocomplete="off" class="form-control" value="{{$data->link}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Alt属性值</label>
                            <div class="col-sm-8">
                                <input type="text" name="alt" autocomplete="off" class="form-control" value="{{$data->alt}}">
                            </div>
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
                        <div class="box-footer">
                            <div class="col-xs-2 col-md-1 col-sm-offset-3">
                                @can('banner.update')
                                    <button type="submit" class="btn btn-primary J_ajax_submit_btn">提交</button>
                                @endcan
                            </div>
                            <div class="col-xs-2 col-md-1">
                                <a href="{{url('admin/banner')}}" class="btn btn-default">取消</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection

