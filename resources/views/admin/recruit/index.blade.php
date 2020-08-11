@extends('admin.layout.base')

@section('content')
    <fieldset class="main-field main-field-title">
        <legend>招聘信息列表</legend>
    </fieldset>
    <div class="main-toolbar">
        @can('recruit.create')
        <div class="main-toolbar-item"><a href="{{url('admin/recruit/create')}}" class="btn btn-sm bg-olive">添加招聘信息</a></div>
        @endcan
    </div>

    <div class="box">
        <div class="box-header">
            <form method="get" action="{{ url('admin/recruit') }}" class="form-horizontal" role="form">
                <div class="col-sm-2">
                    <input type="text" name="title" autocomplete="off" class="form-control" placeholder="招聘信息标题" value="{{ isset($params['title']) ?  $params['title'] : ''}}">
                </div>
                <div class="col-sm-2">
                    {{\App\Enums\RecruitEnum::enumSelect(isset($params['type']) ?  $params['type'] : '',false,'type')}}
                </div>
                <div class="col-sm-1">
                    <button type="submit" class="btn bg-olive">搜索</button>
                </div>
            </form>
        </div>
    </div>

    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>招聘标题</th>
            <th>门店</th>
            <th>招聘类型</th>
            <th>招聘人数</th>
            <th>报名人数</th>
            <th>综合薪资</th>
            <th>招聘要求</th>
            <th>状态</th>
            <th>排序</th>
            <th>是否置顶</th>
            <th>是否推荐</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        @foreach ($list as $data)
            <tr>
                <td>{{$data->id}}</td>
                <td>{{$data->title}}</td>
                <td>{{$data->shop_name}}</td>
                <td>{{\App\Enums\RecruitEnum::getDesc($data->type)}}</td>
                <td>{{$data->num}}</td>
                <td>{{$data->sign_up}}</td>
                <td>{{$data->salary_up}}—{{$data->salary_down}}元/月</td>
                <td>{{$data->sex_ask}}|{{$data->age_ask}}</td>
                <td>{{\App\Enums\BasicEnum::getDesc($data->status)}}</td>
                <td>{{$data->sort}}</td>
                <td>{{\App\Enums\BoolEnum::getDesc($data->is_top)}}</td>
                <td>{{\App\Enums\BoolEnum::getDesc($data->is_recommend)}}</td>
                <td>
                    @can('recruit.edit')
                        <a href="recruit/{{$data->id}}/edit" class="btn bg-olive btn-xs"><i class="fa fa-pencil"></i>编辑</a>
                    @endcan
                    @can('recruit.show')
                        <a href="recruit/{{$data->id}}/show" class="btn bg-info btn-xs"><i class="fa fa-search"></i>查看</a>
                    @endcan
                    @can('recruit.destroy')
                        <a href="{{url('admin/recruit',array($data->id))}}" class="btn btn-danger btn-xs J_layer_dialog_del" data-token="{{csrf_token()}}"><i class="fa fa-trash-o"></i>删除</a>
                    @endcan
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    @include('admin.public.pages')
@endsection