@extends('admin.layout.base')

@section('content')
    <fieldset class="main-field main-field-title">
        <legend>添加门店</legend>
    </fieldset>

    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <form class="form-horizontal J_ajaxForm" style="margin:10px 20px;" role="form" id="form" action="{{url('admin/shop')}}" method="post">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <div class="form-group">
                            <label for="name" class="col-sm-3 control-label">门店名称</label>
                            <div class="col-sm-8">
                                <input type="text" name="name" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">门店封面图</label>
                            <div class="col-sm-8">
                                <div class="J_upload_image" data-id="image" data-_token="{{ csrf_token() }}" data-type="multiple" data-num="1">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">门店图集</label>
                            <div class="col-sm-8">
                                <div class="J_upload_image" data-id="picture" data-_token="{{ csrf_token() }}" data-type="multiple" data-num="10">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-sm-3 control-label">招聘岗位</label>
                            <div class="col-sm-8">
                                <input type="text" name="job" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-sm-3 control-label">服务宗旨</label>
                            <div class="col-sm-8">
                                <input type="text" name="purpose" class="form-control">
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
                            <label for="name" class="col-sm-3 control-label">门店详细地址</label>
                            <div class="col-sm-8">
                                <input type="text" name="address" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-sm-3 control-label">拾取经纬度</label>
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
                            <label for="name" class="col-sm-3 control-label">固定电话</label>
                            <div class="col-sm-8">
                                <input type="text" name="phone" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-sm-3 control-label">移动电话</label>
                            <div class="col-sm-8">
                                <input type="text" name="mobile" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sort" class="col-sm-3 control-label">排序</label>
                            <div class="col-sm-8">
                                <input type="text" name="sort" class="form-control" value="0">
                            </div>
                            <div class="col-sm-3"></div>
                            <div class="col-sm-8"><span class="tips red">排序越大越靠前</span></div>
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
                                @can('shop.store')
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



