@extends('admin.layout.base')

@section('content')
    <fieldset class="main-field main-field-title">
        <legend>工厂列表</legend>
    </fieldset>
    <div class="main-toolbar">
        @can('factory.create')
        <div class="main-toolbar-item"><a href="{{url('admin/factory/create')}}" class="btn btn-sm bg-olive">添加工厂</a></div>
        @endcan
    </div>

    <div class="box">
        <div class="box-header">
            <form method="get" action="{{ url('admin/factory') }}" class="form-horizontal" role="form">
                <div class="col-sm-2">
                    <input type="text" name="name" autocomplete="off" class="form-control" placeholder="工厂名称" value="{{ isset($params['name']) ?  $params['name'] : ''}}">
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
            <th>工厂名称</th>
            <th>联系电话</th>
            <th>规模</th>
            <th>行业</th>
            <th>平均月薪</th>
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
                <td>{{$data->name}}</td>
                <td>{{$data->phone}}</td>
                <td>{{$data->scale}}</td>
                <td>{{$data->trade}}</td>
                <td>{{$data->avg_salary}}元/月</td>
                <td>{{\App\Enums\BasicEnum::getDesc($data->status)}}</td>
                <td>{{$data->sort}}</td>
                <td>{{\App\Enums\BoolEnum::getDesc($data->is_top)}}</td>
                <td>{{\App\Enums\BoolEnum::getDesc($data->is_recommend)}}</td>
                <td>
                    @can('factory.edit')
                        <a href="factory/{{$data->id}}/edit" class="btn bg-olive btn-xs"><i class="fa fa-pencil"></i>编辑</a>
                    @endcan
                    @can('factory.show')
                        <a href="factory/{{$data->id}}/show" class="btn bg-info btn-xs"><i class="fa fa-search"></i>查看</a>
                    @endcan
                    @can('factory.destroy')
                        <a href="{{url('admin/factory',array($data->id))}}" class="btn btn-danger btn-xs J_layer_dialog_del" data-token="{{csrf_token()}}"><i class="fa fa-trash-o"></i>删除</a>
                    @endcan
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    @include('admin.public.pages')
@endsection