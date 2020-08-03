@extends('admin.layout.base')

@section('content')
    <fieldset class="main-field main-field-title">
        <legend>查看招聘信息</legend>
    </fieldset>

    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <form class="form-horizontal J_ajaxForm" style="margin:10px 20px;" role="form" id="form" action="{{url('admin/recruit')}}" method="post">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">分类类型</label>
                            <div class="col-sm-8">
                                {{\App\Enums\CategoryEnum::enumSelect(\App\Enums\CategoryEnum::NEWS,false,'type')}}
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">父级分类</label>
                            <div class="col-sm-8">
                                <select name="pid" class="form-control">
                                    <option value="0">顶级分类</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-sm-3 control-label">分类名称</label>
                            <div class="col-sm-8">
                                <input type="text" name="name" class="form-control">
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
                        <div class="box-footer">
                            <div class="col-xs-2 col-md-1 col-sm-offset-3">
                                @can('recruit.store')
                                    <button type="submit" class="btn btn-primary J_ajax_submit_btn">提交</button>
                                @endcan
                            </div>
                            <div class="col-xs-2 col-md-1">
                                <a href="{{url('admin/recruit')}}" class="btn btn-default">取消</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection



