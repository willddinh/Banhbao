@extends('backend/layout/layout')
@section('content')
    <script type="text/javascript">
        $(document).ready(function () {
            $('#notification').show().delay(4000).fadeOut(700);
        });
    </script>
    <section class="content-header">
        <h1> Category
            <small> | Control Panel</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{!! url(getLang(). '/admin') !!}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li class="active">Category</li>
        </ol>
    </section>
    <br>
    <div class="container">
        <div class="col-lg-10">
            @include('flash::message')
            <br>

            <div class="pull-left">
                <div class="btn-toolbar"><a href="{!! langRoute('admin.category.create') !!}" class="btn btn-primary">
                        <span class="glyphicon glyphicon-plus"></span>&nbsp;Thêm category </a></div>
            </div>
            <br> <br> <br>
            @if($categories->count())
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
                        @foreach( $categories as $category )
                            <tr>
                                <td> {!! link_to_route( getLang() . '.admin.category.show', $category->title,
                                    $category->id, array( 'class' => 'btn btn-link btn-xs' )) !!}
                                <td>{{$category->group}}</td>
                                <td>
                                    <div class="btn-group">
                                        <a class="btn btn-danger dropdown-toggle" data-toggle="dropdown" href="#">
                                            Action <span class="caret"></span> </a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <a href="{!! langRoute('admin.category.show', array($category->id)) !!}">
                                                    <span class="glyphicon glyphicon-eye-open"></span>&nbsp;Show
                                                    Category </a>
                                            </li>
                                            <li>
                                                <a href="{!! langRoute('admin.category.edit', array($category->id)) !!}">
                                                    <span class="glyphicon glyphicon-edit"></span>&nbsp;Sửa
                                                </a>
                                            </li>
                                            <li class="divider"></li>
                                            <li>
                                                <a href="{!! URL::route('admin.category.delete', array($category->id)) !!}">
                                                    <span class="glyphicon glyphicon-remove-circle"></span>&nbsp;Xóa
                                                    Category </a>
                                            </li>
                                            <li class="divider"></li>
                                            <li>
                                                <a target="_blank" href="{!! URL::route('dashboard.category', ['slug' => $category->slug]) !!}">
                                                    <span class="glyphicon glyphicon-eye-open"></span>&nbsp;Xem trực tiếp
                                                </a>
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
                {!! $categories->render() !!}
            </ul>
        </div>
    </div>
@stop