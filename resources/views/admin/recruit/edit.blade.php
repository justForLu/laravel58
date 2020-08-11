@extends('admin.layout.base')

@section('content')
    <style>
        .fuli{
            padding-right: 15px;
        }
        .fuli input{
            margin-right: 3px;
            position: relative;
            top: 2px;
        }
    </style>
    <fieldset class="main-field main-field-title">
        <legend>编辑招工信息</legend>
    </fieldset>

    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <form class="form-horizontal J_ajaxForm" style="margin:10px 20px;" role="form" id="form" action="{{url('admin/recruit',array($data->id))}}" method="post">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <input type="hidden" name="_method" value="PUT">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">招聘类型</label>
                            <div class="col-sm-8">
                                {{\App\Enums\RecruitEnum::enumSelect($data->type,false,'type')}}
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">招工标题</label>
                            <div class="col-sm-8">
                                <input type="text" name="title" autocomplete="off" class="form-control" value="{{$data->title}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">招聘岗位</label>
                            <div class="col-sm-8">
                                <input type="text" name="posts" autocomplete="off" class="form-control" value="{{$data->posts}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">招工人数</label>
                            <div class="col-sm-8">
                                <input type="text" name="num" autocomplete="off" class="form-control" value="{{$data->num}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">招聘封面图</label>
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
                            <label for="image" class="col-sm-3 control-label">招聘图集</label>
                            <div class="col-sm-8">
                                <div class="J_upload_image" data-id="picture" data-_token="{{ csrf_token() }}" data-type="multiple" data-num="10">
                                    <input type="hidden" name="image_val" value="{{ $data->picture }}">
                                    @if($data->picture_path)
                                        @foreach ($data->picture_path as $id => $pics)
                                            @if(!empty($pics))
                                                <input type="hidden" name="image_path[]" data-id="{{ $id }}" value="{{ $pics }}">
                                            @endif
                                        @endforeach
                                    @endif
                                </div>
                            </div>
                            <div class="col-sm-3"></div>
                            <div class="col-sm-8"><span class="tips">建议尺寸</span></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">综合薪资范围</label>
                            <div class="col-sm-8">
                                <div class="col-sm-4">
                                    <input type="text" name="salary_up" class="form-control" value="{{$data->salary_up}}" placeholder="起步薪资">
                                </div>
                                <div class="col-sm-1"></div>
                                <div class="col-sm-4">
                                    <input type="text" name="salary_down" class="form-control" value="{{$data->salary_down}}" placeholder="最高薪资">
                                </div>
                            </div>
                            <div class="col-sm-3"></div>
                            <div class="col-sm-8"><span class="tips red">综合薪资均为xxxx元/月，并且是数字</span></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">福利标签</label>
                            <div class="col-sm-8">
                                @if($label_arr)
                                    @foreach($label_arr as $v)
                                        <label class="fuli">
                                            <input type="checkbox" @if($v['checked']) checked @endif name="label[]" value="{{$v['id']}}">{{$v['name']}}
                                        </label>
                                    @endforeach
                                @else
                                    暂无可选标签
                                @endif
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">学历要求</label>
                            <div class="col-sm-8">
                                <input type="text" name="edu_ask" class="form-control" value="{{$data->edu_ask}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">性别要求</label>
                            <div class="col-sm-8">
                                <input type="text" name="sex_ask" class="form-control" value="{{$data->sex_ask}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">年龄要求</label>
                            <div class="col-sm-8">
                                <input type="text" name="age_ask" class="form-control" value="{{$data->age_ask}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">上班地址</label>
                            <div class="col-sm-8">
                                <input type="text" name="address" class="form-control" value="{{$data->address}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">拾取经纬度</label>
                            <div class="col-sm-8">
                                <div class="col-sm-2">
                                    <a href="https://lbs.amap.com/console/show/picker" target="_blank">拾取经纬度</a>
                                </div>
                                <div class="col-sm-4">
                                    <input type="text" name="longitude" class="form-control" value="{{$data->longitude}}" placeholder="经度  如：113.657679">
                                </div>
                                <div class="col-sm-4">
                                    <input type="text" name="latitude" class="form-control" value="{{$data->latitude}}" placeholder="纬度  如：34.747098">
                                </div>
                            </div>
                            <div class="col-sm-3"></div>
                            <div class="col-sm-8"><span class="tips red">请仔细阅读，不要复制错了经纬度</span></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">服务热线</label>
                            <div class="col-sm-8">
                                <input type="text" name="mobile" class="form-control" value="{{$data->mobile}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">基本底薪</label>
                            <div class="col-sm-8">
                                <input type="text" name="base_salary" class="form-control" value="{{$data->base_salary}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">小时工薪</label>
                            <div class="col-sm-8">
                                <input type="text" name="hourly" class="form-control" value="{{$data->hourly}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">发薪日</label>
                            <div class="col-sm-8">
                                <input type="text" name="payday" class="form-control" value="{{$data->payday}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">餐补</label>
                            <div class="col-sm-8">
                                <input type="text" name="food_sub" class="form-control" value="{{$data->food_sub}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">住宿</label>
                            <div class="col-sm-8">
                                <input type="text" name="put_up" class="form-control" value="{{$data->put_up}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">保险</label>
                            <div class="col-sm-8">
                                <input type="text" name="insure" class="form-control" value="{{$data->insure}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">备注</label>
                            <div class="col-sm-8">
                                <textarea name="remark" class="form-control" cols="50" rows="5">{{$data->remark}}</textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">其他要求</label>
                            <div class="col-sm-8">
                                <textarea name="other_ask" class="form-control" cols="50" rows="5">{{$data->other_ask}}</textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">工作内容</label>
                            <div class="col-sm-8">
                                <input type="text" name="tasks" class="form-control" value="{{$data->tasks}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">岗位说明</label>
                            <div class="col-sm-8">
                                <input type="text" name="job_desc" class="form-control" value="{{$data->job_desc}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">身份证户籍地要求</label>
                            <div class="col-sm-8">
                                <input type="text" name="id_card" class="form-control" value="{{$data->id_card}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">面试材料</label>
                            <div class="col-sm-8">
                                <input type="text" name="interview" class="form-control" value="{{$data->interview}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">体检</label>
                            <div class="col-sm-8">
                                <input type="text" name="physical" class="form-control" value="{{$data->physical}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">面试时间</label>
                            <div class="col-sm-8">
                                <input type="text" name="interview_date" class="form-control" value="{{$data->interview_date}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">企业名称</label>
                            <div class="col-sm-8">
                                <input type="text" name="business" class="form-control" value="{{$data->business}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">企业规模</label>
                            <div class="col-sm-8">
                                <input type="text" name="scale" class="form-control" value="{{$data->scale}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">企业行业</label>
                            <div class="col-sm-8">
                                <input type="text" name="trade" class="form-control" value="{{$data->trade}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">平均月薪</label>
                            <div class="col-sm-8">
                                <input type="text" name="avg_salary" class="form-control" value="{{$data->avg_salary}}" }}>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">企业简介</label>
                            <div class="col-sm-8">
                                <textarea name="business_desc" class="form-control" cols="50" rows="5">{{$data->business_desc}}</textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">企业位置</label>
                            <div class="col-sm-8">
                                <input type="text" name="business_add" class="form-control" value="{{$data->business_add}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">乘车路线</label>
                            <div class="col-sm-8">
                                <input type="text" name="bus_line" class="form-control" value="{{$data->bus_line}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">接站地址</label>
                            <div class="col-sm-8">
                                <textarea name="meet" class="form-control" cols="50" rows="5">{{$data->meet}}</textarea>
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
                        <div class="box-footer">
                            <div class="col-xs-2 col-md-1 col-sm-offset-3">
                                @can('recruit.update')
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




