@extends('backend/layout/layout')
@section('content')
    <script type="text/javascript">
        $(document).ready(function () {
            $('#notification').show().delay(4000).fadeOut(700);
        });
    </script>
    <section class="content-header">
        <h1> SubCategory
            <small> | Control Panel</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{!! url(getLang(). '/admin') !!}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li class="active">SubCategory</li>
        </ol>
    </section>
    <br>
    <div class="container">
        <div class="col-lg-10">
            @include('flash::message')
            <br>

            <div class="pull-left">
                <div class="btn-toolbar"><a href="{!! langRoute('admin.subCategory.create') !!}" class="btn btn-primary">
                        <span class="glyphicon glyphicon-plus"></span>&nbsp;Thêm subCategory </a></div>
            </div>
            <br> <br> <br>
            @if($subCategories->count())
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>Tên</th>
                            <th>Nhóm</th>
                            <th> </th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach( $subCategories as $subCategory )
                            <tr>
                                <td> {!! link_to_route( getLang() . '.admin.subCategory.show', $subCategory->title,
                                    $subCategory->id, array( 'class' => 'btn btn-link btn-xs' )) !!}
                                <td>{{$subCategory->group}}</td>
                                <td>
                                    <div class="btn-group">
                                        <a class="btn btn-danger dropdown-toggle" data-toggle="dropdown" href="#">
                                            Action <span class="caret"></span> </a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <a href="{!! langRoute('admin.subCategory.show', array($subCategory->id)) !!}">
                                                    <span class="glyphicon glyphicon-eye-open"></span>&nbsp;Show
                                                    SubCategory </a>
                                            </li>
                                            <li>
                                                <a href="{!! langRoute('admin.subCategory.edit', array($subCategory->id)) !!}">
                                                    <span class="glyphicon glyphicon-edit"></span>&nbsp;Sửa
                                                </a>
                                            </li>
                                            <li class="divider"></li>
                                            <li>
                                                <a href="{!! URL::route('admin.subCategory.delete', array($subCategory->id)) !!}">
                                                    <span class="glyphicon glyphicon-remove-circle"></span>&nbsp;Xóa
                                                    SubCategory </a>
                                            </li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            @else
                <div class="alert alert-danger">Không tìm thấy</div>
            @endif
        </div>
        <div class="pull-left">
            <ul class="pagination">
                {!! $subCategories->render() !!}
            </ul>
        </div>
    </div>
@stop