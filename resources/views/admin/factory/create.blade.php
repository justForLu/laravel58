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
        <legend>添加工厂</legend>
    </fieldset>

    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <form class="form-horizontal J_ajaxForm" style="margin:10px 20px;" role="form" id="form" action="{{url('admin/factory')}}" method="post">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">工厂名称</label>
                            <div class="col-sm-8">
                                <input type="text" name="name" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">企业规模</label>
                            <div class="col-sm-8">
                                <input type="text" name="scale" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">行业</label>
                            <div class="col-sm-8">
                                <input type="text" name="trade" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">服务热线</label>
                            <div class="col-sm-8">
                                <input type="text" name="phone" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">工厂封面</label>
                            <div class="col-sm-8">
                                <div class="J_upload_image" data-id="image" data-_token="{{ csrf_token() }}" data-type="multiple" data-with="" data-num="1">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">工厂图集</label>
                            <div class="col-sm-8">
                                <div class="J_upload_image" data-id="picture" data-_token="{{ csrf_token() }}" data-type="multiple" data-num="10">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">平均月薪</label>
                            <div class="col-sm-8">
                                <input type="text" name="avg_salary" class="form-control">
                            </div>
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
                            <label for="name" class="col-sm-3 control-label">行政区划</label>
                            <input type="hidden" id="city_id" name="city_id" value="">
                            <div class="col-sm-2">
                                <select name="province" data-url="{{url('admin/get_city_list')}}" data-init="true"
                                        data-value="" data-target="subCity" data-val="city_id" class="form-control J_ajax_select">
                                    <option>省</option>
                                </select>
                            </div>
                            <div class="col-sm-3">
                                <select name="city" data-val="city_id" id="subCity" data-url="{{url('admin/get_city_list')}}"
                                        data-value=""  data-target="subDistinct"  class="form-control J_ajax_select">
                                    <option>市</option>
                                </select>
                            </div>
                            <div class="col-sm-3">
                                <select name="area" data-val="city_id" id="subDistinct" data-url="{{url('admin/get_city_list')}}"
                                        data-value="" data-target="thrCity" class="form-control J_ajax_select">
                                    <option>区</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">企业位置</label>
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
                            <label class="col-sm-3 control-label">简介</label>
                            <div class="col-sm-8">
                                <textarea name="desc" class="form-control" cols="50" rows="5"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">乘车路线</label>
                            <div class="col-sm-8">
                                <textarea name="bus_line" class="form-control" cols="50" rows="5"></textarea>
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
                                @can('factory.store')
                                    <button type="submit" class="btn btn-primary J_ajax_submit_btn">提交</button>
                                @endcan
                            </div>
                            <div class="col-xs-2 col-md-1">
                                <a href="{{url('admin/factory')}}" class="btn btn-default">取消</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection



