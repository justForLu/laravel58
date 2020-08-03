@extends('admin.layout.base')

@section('content')
    <fieldset class="main-field main-field-title">
        <legend>编辑门店</legend>
    </fieldset>

    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <form class="form-horizontal J_ajaxForm" style="margin:10px 20px;" role="form" id="form" action="{{url('admin/shop',array($data->id))}}" method="post">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <input type="hidden" name="_method" value="PUT">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">门店名称</label>
                            <div class="col-sm-8">
                                <input type="text" name="name" autocomplete="off" class="form-control" value="{{$data->name}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">门店封面图</label>
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
                            <label for="image" class="col-sm-3 control-label">门店图集</label>
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
                            <label class="col-sm-3 control-label">招聘岗位</label>
                            <div class="col-sm-8">
                                <input type="text" name="job" autocomplete="off" class="form-control" value="{{$data->job}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">服务宗旨</label>
                            <div class="col-sm-8">
                                <input type="text" name="purpose" autocomplete="off" class="form-control" value="{{$data->purpose}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">行政区划</label>

                            <input type="hidden" id="city_id" name="city_id" value="{{ $data->city_id }}">
                            <div class="col-sm-2">
                                <select name="province" data-url="{{url('admin/get_city_list')}}" data-init="true"
                                        data-value="{{isset($data->city['province']) ? $data->city['province'] : ''}}" data-target="subCity" data-val="city_id" class="form-control J_ajax_select">
                                    <option>请选择</option>
                                </select>
                            </div>
                            <div class="col-sm-3">
                                <select name="city" data-val="city" id="subCity" data-url="{{url('admin/get_city_list')}}"
                                        data-value="{{isset($data->city['city']) ? $data->city['city'] : ''}}"  data-target="subDistinct"  class="form-control J_ajax_select">
                                    <option>请选择</option>
                                </select>
                            </div>
                            <div class="col-sm-3">
                                <select name="area" data-val="city_id" id="subDistinct" data-url="{{url('admin/get_city_list')}}"
                                        data-value="{{isset($data->city['area']) ? $data->city['area'] : ''}}" data-target="thrCity" class="form-control J_ajax_select">
                                    <option>请选择</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">门店详细地址</label>
                            <div class="col-sm-8">
                                <input type="text" name="address" autocomplete="off" class="form-control" value="{{$data->address}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-sm-3 control-label">拾取经纬度</label>
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
                            <label class="col-sm-3 control-label">固定电话</label>
                            <div class="col-sm-8">
                                <input type="text" name="phone" autocomplete="off" class="form-control" value="{{$data->phone}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">移动电话</label>
                            <div class="col-sm-8">
                                <input type="text" name="mobile" autocomplete="off" class="form-control" value="{{$data->mobile}}">
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
                                @can('shop.update')
                                    <button type="submit" class="btn btn-primary J_ajax_submit_btn">提交</button>
                                @endcan
                            </div>
                            <div class="col-xs-2 col-md-1">
                                <a href="{{url('admin/shop')}}" class="btn btn-default">取消</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection


