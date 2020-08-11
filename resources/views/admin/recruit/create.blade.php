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
        <legend>添加招聘信息</legend>
    </fieldset>

    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <form class="form-horizontal J_ajaxForm" style="margin:10px 20px;" role="form" id="form" action="{{url('admin/recruit')}}" method="post">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">招聘类型</label>
                            <div class="col-sm-8">
                                {{\App\Enums\RecruitEnum::enumSelect(\App\Enums\RecruitEnum::FACTORY,false,'type')}}
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
                                <input type="text" name="posts" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">招工人数</label>
                            <div class="col-sm-8">
                                <input type="text" name="num" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">招工信息封面</label>
                            <div class="col-sm-8">
                                <div class="J_upload_image" data-id="image" data-_token="{{ csrf_token() }}" data-type="multiple" data-with="" data-num="1">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">招工信息图集</label>
                            <div class="col-sm-8">
                                <div class="J_upload_image" data-id="picture" data-_token="{{ csrf_token() }}" data-type="multiple" data-num="10">
                                </div>
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
                            <label class="col-sm-3 control-label">福利标签</label>
                            <div class="col-sm-8">
                                @if($label_arr)
                                    @foreach($label_arr as $v)
                                        <label class="fuli">
                                            <input type="checkbox" name="label[]" value="{{$v['id']}}">{{$v['name']}}
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
                            <label class="col-sm-3 control-label">上班地址</label>
                            <div class="col-sm-8">
                                <input type="text" name="address" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">拾取经纬度</label>
                            <div class="col-sm-8">
                                <div class="col-sm-2">
                                    <a href="https://lbs.amap.com/console/show/picker" target="_blank">拾取经纬度</a>
                                </div>
                                <div class="col-sm-4">
                                    <input type="text" name="longitude" class="form-control" placeholder="经度  如：113.657679">
                                </div>
                                <div class="col-sm-4">
                                    <input type="text" name="latitude" class="form-control" placeholder="纬度  如：34.747098">
                                </div>
                            </div>
                            <div class="col-sm-3"></div>
                            <div class="col-sm-8"><span class="tips red">请仔细阅读，不要复制错了经纬度</span></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">服务热线</label>
                            <div class="col-sm-8">
                                <input type="text" name="mobile" class="form-control">
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
                            <label class="col-sm-3 control-label">企业名称</label>
                            <div class="col-sm-8">
                                <input type="text" name="business" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">企业规模</label>
                            <div class="col-sm-8">
                                <input type="text" name="scale" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">企业行业</label>
                            <div class="col-sm-8">
                                <input type="text" name="trade" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">平均月薪</label>
                            <div class="col-sm-8">
                                <input type="text" name="avg_salary" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">企业简介</label>
                            <div class="col-sm-8">
                                <textarea name="business_desc" class="form-control" cols="50" rows="5"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">企业位置</label>
                            <div class="col-sm-8">
                                <input type="text" name="business_add" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">乘车路线</label>
                            <div class="col-sm-8">
                                <input type="text" name="bus_line" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">接站地址</label>
                            <div class="col-sm-8">
                                <textarea name="meet" class="form-control" cols="50" rows="5"></textarea>
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



