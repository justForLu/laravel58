@extends('admin.layout.base')

@section('content')
    <fieldset class="main-field main-field-title">
        <legend>用户列表</legend>
    </fieldset>
    <div class="main-toolbar">

    </div>

    <div class="box">
        <div class="box-header">
            <form method="get" action="{{ url('admin/users') }}" class="form-horizontal" role="form">
                <div class="col-sm-2">
                    <input type="text" name="realname" autocomplete="off" class="form-control" placeholder="真实姓名" value="{{ isset($params['realname']) ?  $params['realname'] : ''}}">
                </div>
                <div class="col-sm-2">
                    <input type="text" name="mobile" autocomplete="off" class="form-control" placeholder="手机号" value="{{ isset($params['mobile']) ?  $params['mobile'] : ''}}">
                </div>
                <div class="col-sm-2">
                    <input type="text" name="email" autocomplete="off" class="form-control" placeholder="邮箱" value="{{ isset($params['email']) ?  $params['email'] : ''}}">
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
            <th>用户名</th>
            <th>昵称</th>
            <th>手机号</th>
            <th>邮箱</th>
            <th>出生年月</th>
            <th>性别</th>
            <th>省市</th>
            <th>状态</th>
            <th>上次登录IP</th>
            <th>上次登录时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        @foreach ($list as $data)
            <tr>
                <td>{{$data->id}}</td>
                <td>{{$data->username}}</td>
                <td>{{$data->nickname}}</td>
                <td>{{$data->mobile}}</td>
                <td>{{$data->email}}</td>
                <td>{{$data->birthday}}</td>
                <td>{{\App\Enums\SexEnum::getDesc($data->sex)}}</td>
                <td>{{$data->province}}-{{$data->city}}-{{$data->area}}</td>
                <td>{{\App\Enums\BasicEnum::getDesc($data->status)}}</td>
                <td>{{$data->login_ip}}</td>
                <td>{{$data->login_time}}</td>
                <td>
                    @can('users.show')
                        <a href="users/{{$data->id}}" class="btn bg-info btn-xs"><i class="fa fa-search"></i>查看</a>
                    @endcan
                    @can('users.destroy')
                        <a href="{{url('admin/users',array($data->id))}}" class="btn btn-danger btn-xs J_layer_dialog_del" data-token="{{csrf_token()}}"><i class="fa fa-trash-o"></i>删除</a>
                    @endcan
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    @include('admin.public.pages')
@endsection