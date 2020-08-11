@extends('admin.layout.base')

@section('content')
    <fieldset class="main-field main-field-title">
        <legend>职位列表</legend>
    </fieldset>

    <div class="main-toolbar">
        @can('position.create')
        <div class="main-toolbar-item"><a href="{{url('admin/position/create')}}" class="btn btn-sm bg-olive J_layer_dialog" title="添加职位">添加职位</a></div>
        @endcan
    </div>

    <div class="box">
        <div class="box-header">
            <form method="get" action="{{ url('admin/position') }}" class="form-horizontal" role="form">
                <div class="col-sm-2">
                    <input type="text" name="name" autocomplete="off" class="form-control" placeholder="职位名称" value="{{ isset($params['name']) ?  $params['name'] : ''}}">
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
            <th>职位名称</th>
            <th>招聘类型</th>
            <th>排序</th>
            <th>状态</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        @foreach ($list as $data)
            <tr>
                <td>{{$data->id}}</td>
                <td>{{$data->name}}</td>
                <td>{{\App\Enums\RecruitEnum::getDesc($data->type)}}</td>
                <td>{{$data->sort}}</td>
                <td>{{\App\Enums\BasicEnum::getDesc($data->status)}}</td>
                <td>
                    @can('position.edit')
                    <a href="position/{{$data->id}}/edit" class="btn bg-olive btn-xs J_layer_dialog"><i class="fa fa-pencil"></i>编辑</a>
                    @endcan
                    @can('position.destroy')
                    <a href="{{url('admin/position',array($data->id))}}" class="btn btn-danger btn-xs J_layer_dialog_del" data-token="{{csrf_token()}}"><i class="fa fa-trash-o"></i>删除</a>
                    @endcan
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    @include('admin.public.pages')
@endsection