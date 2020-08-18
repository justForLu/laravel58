@extends('admin.layout.base')

@section('content')
    <fieldset class="main-field main-field-title">
        <legend>加盟列表</legend>
    </fieldset>
    <div class="main-toolbar">

    </div>

    <div class="box">
        <div class="box-header">
            <form method="get" action="{{ url('admin/join') }}" class="form-horizontal" role="form">
                <div class="col-sm-2">
                    <input type="text" name="name" autocomplete="off" class="form-control" placeholder="门店名称" value="{{ isset($params['name']) ?  $params['name'] : ''}}">
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
            <th>姓名</th>
            <th>电话</th>
            <th>邮箱</th>
            <th>地址</th>
            <th>年限</th>
            <th>类型</th>
            <th>状态</th>
            <th>处理人</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        @foreach ($list as $data)
            <tr>
                <td>{{$data->id}}</td>
                <td>{{$data->name}}</td>
                <td>{{$data->mobile}}</td>
                <td>{{$data->email}}</td>
                <td>{{$data->address}}</td>
                <td>{{$data->years}}</td>
                <td>{{\App\Enums\JoinTypeEnum::getDesc($data->type)}}</td>
                <td>{{\App\Enums\JoinStatusEnum::getDesc($data->status)}}</td>
                <td>{{$data->admin_id}}</td>
                <td>
                    @can('join.edit')
                        <a href="join/{{$data->id}}/edit" class="btn bg-olive btn-xs"><i class="fa fa-pencil"></i>编辑</a>
                    @endcan
                    @can('join.destroy')
                        <a href="{{url('admin/join',array($data->id))}}" class="btn btn-danger btn-xs J_layer_dialog_del" data-token="{{csrf_token()}}"><i class="fa fa-trash-o"></i>删除</a>
                    @endcan
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    @include('admin.public.pages')
@endsection