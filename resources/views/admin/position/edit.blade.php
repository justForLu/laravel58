<form class="form-horizontal J_ajaxForm" style="margin:10px 20px;" role="form" id="form" action="{{url('admin/position',array($data->id))}}" method="post">
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <input type="hidden" name="_method" value="PUT">
    <div class="form-group">
        <label class="col-sm-3 control-label">职位名称</label>
        <div class="col-sm-8">
            <input type="text" name="name" autocomplete="off" class="form-control length4" value="{{$data->name}}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label">招聘类型</label>
        <div class="col-sm-8">
            {{\App\Enums\RecruitEnum::enumSelect($data->type,false,'type')}}
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label">排序</label>
        <div class="col-sm-8">
            <input type="text" name="sort" autocomplete="off" class="form-control length4" value="{{$data->sort}}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label">状态</label>
        <div class="col-sm-8">
            {{\App\Enums\BasicEnum::enumSelect($data->status,false,'status')}}
        </div>
    </div>
    <div class="form-group hide">
        @can('position.update')
        <button type="submit" class="J_ajax_submit_btn"></button>
        @endcan
    </div>
</form>