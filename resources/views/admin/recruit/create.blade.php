@extends('admin.layout.base')

@section('content')
    <style>
        .zhiwei{
            padding-right: 15px;
        }
        .zhiwei input{
            margin-right: 3px;
            position: relative;
            top: 2px;
        }
    </style>
    <fieldset class="main-field main-field-title">
        <legend>添加招聘信息</legend>
    </fieldset>

    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <form class="form-horizontal J_ajaxForm" style="margin:10px 20px;" role="form" id="form" action="{{url('admin/recruit')}}" method="post">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">招工工厂</label>
                            <div class="col-sm-8">
                                <select name="factory_id" class="form-control">
                                    <option value="0">请选择工厂</option>
                                    @if($factory_arr)
                                        @foreach($factory_arr as $v)
                                            <option value="{{$v['id']}}">{{$v['name']}}</option>
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">招工标题</label>
                            <div class="col-sm-8">
                                <input type="text" name="title" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">招聘岗位</label>
                            <div class="col-sm-8">
                                @if($position_arr)
                                    @foreach($position_arr as $v)
                                        <label class="zhiwei">
                                            <input type="checkbox" name="posts[]" value="{{$v['id']}}">{{$v['name']}}
                                        </label>
                                    @endforeach
                                @else
                                    暂无可选职位
                                @endif
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">招工人数</label>
                            <div class="col-sm-8">
                                <input type="text" name="num" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">综合薪资范围</label>
                            <div class="col-sm-8">
                                <div class="col-sm-4">
                                    <input type="text" name="salary_up" class="form-control" placeholder="起步薪资">
                                </div>
                                <div class="col-sm-1"></div>
                                <div class="col-sm-4">
                                    <input type="text" name="salary_down" class="form-control" placeholder="最高薪资">
                                </div>
                            </div>
                            <div class="col-sm-3"></div>
                            <div class="col-sm-8"><span class="tips red">综合薪资均为xxxx元/月，并且是数字</span></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">学历要求</label>
                            <div class="col-sm-8">
                                <input type="text" name="edu_ask" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">性别要求</label>
                            <div class="col-sm-8">
                                <input type="text" name="sex_ask" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">年龄要求</label>
                            <div class="col-sm-8">
                                <input type="text" name="age_ask" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">基本底薪</label>
                            <div class="col-sm-8">
                                <input type="text" name="base_salary" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">小时工薪</label>
                            <div class="col-sm-8">
                                <input type="text" name="hourly" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">发薪日</label>
                            <div class="col-sm-8">
                                <input type="text" name="payday" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">餐补</label>
                            <div class="col-sm-8">
                                <input type="text" name="food_sub" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">住宿</label>
                            <div class="col-sm-8">
                                <input type="text" name="put_up" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">保险</label>
                            <div class="col-sm-8">
                                <input type="text" name="insure" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">备注</label>
                            <div class="col-sm-8">
                                <textarea name="remark" class="form-control" cols="50" rows="5"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">其他要求</label>
                            <div class="col-sm-8">
                                <textarea name="other_ask" class="form-control" cols="50" rows="5"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">工作内容</label>
                            <div class="col-sm-8">
                                <input type="text" name="tasks" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">岗位说明</label>
                            <div class="col-sm-8">
                                <input type="text" name="job_desc" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">身份证户籍地要求</label>
                            <div class="col-sm-8">
                                <input type="text" name="id_card" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">面试材料</label>
                            <div class="col-sm-8">
                                <input type="text" name="interview" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">体检</label>
                            <div class="col-sm-8">
                                <input type="text" name="physical" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">面试时间</label>
                            <div class="col-sm-8">
                                <input type="text" name="interview_date" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">排序</label>
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



