@extends('backend/layout/layout')
@section('content')
<script type="text/javascript">
    $(document).ready(function () {
        $('#notification').show().delay(4000).fadeOut(700);
    });
</script>
<section class="content-header">
    <h1> Author
        <small> | Control Panel</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="{!! url(getLang(). '/admin') !!}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li class="active">Author</li>
    </ol>
</section>
<br>
<div class="container">
    <div class="col-lg-10">
        @include('flash::message')
        <br>

        <div class="pull-left">
            <div class="btn-toolbar"><a href="{!! langRoute('admin.author.create') !!}" class="btn btn-primary">
                    <span class="glyphicon glyphicon-plus"></span>&nbsp;Add Author </a></div>
        </div>
        <br>
        <br>
        <br>

        <div class="">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Name</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                @foreach( $authors as $author )
                <tr>
                    <td>
                        <a href="{!! langRoute('admin.author.show', array($author->id)) !!}" class="btn btn-link btn-xs">
                            {!! $author->name !!}
                        </a>
                    <td>
                        <div class="btn-group">
                            <a class="btn btn-danger dropdown-toggle" data-toggle="dropdown" href="#">
                                Action
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="{!! langRoute('admin.author.show', array($author->id)) !!}">
                                        <span class="glyphicon glyphicon-eye-open"></span>&nbsp;Show Author
                                    </a>
                                </li>
                                <li>
                                    <a href="{!! langRoute('admin.author.edit', array( $author->id)) !!}">
                                        <span class="glyphicon glyphicon-edit"></span>&nbsp;Edit Author
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="{!! URL::route('admin.author.delete', array($author->id)) !!}">
                                        <span class="glyphicon glyphicon-remove-circle"></span>&nbsp;Delete Author
                                    </a>
                                </li>

                                <li class="divider"></li>
                                <li>
                                    <a target="_blank" href="{!! $author->url !!}">
                                        <span class="glyphicon glyphicon-eye-open"></span>&nbsp;View On Site
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
    </div>
    <div class="pull-left">
        <ul class="pagination">
            {!! $authors->render() !!}
        </ul>
    </div>
</div>
@stop