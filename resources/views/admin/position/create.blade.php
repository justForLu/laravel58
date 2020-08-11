<form class="form-horizontal J_ajaxForm" style="margin:10px 20px;" role="form" id="form" action="{{url('admin/position')}}" method="post">
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <div class="form-group">
        <label for="name" class="col-sm-3 control-label">职位名称</label>
        <div class="col-sm-8">
            <input type="text" name="name" class="form-control">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label">招聘类型</label>
        <div class="col-sm-8">
            {{\App\Enums\RecruitEnum::enumSelect(\App\Enums\RecruitEnum::FACTORY,false,'type')}}
        </div>
    </div>
    <div class="form-group">
        <label for="sort" class="col-sm-3 control-label">排序</label>
        <div class="col-sm-8">
            <input type="text" name="sort" class="form-control">
        </div>
    </div>
    <div class="form-group">
        <label for="code" class="col-sm-3 control-label">状态</label>
        <div class="col-sm-8">
            {{\App\Enums\BasicEnum::enumSelect(\App\Enums\BasicEnum::ACTIVE,false,'status')}}
        </div>
    </div>
    <div class="form-group hide">
        @can('position.store')
        <button type="submit" class="J_ajax_submit_btn"></button>
        @endcan
    </div>
</form>

