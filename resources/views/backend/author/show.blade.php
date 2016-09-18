@extends('backend/layout/layout')
@section('content')
        <!-- Content Header (Page header) -->
<section class="content-header">
    <h1> Author
        <small> | Show Author</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="{!! langRoute('admin.author.index') !!}"><i class="fa fa-question"></i> Author</a></li>
        <li class="active">Show Author</li>
    </ol>
</section>
<br>
<br>
<div class="container">
    <div class="col-lg-10">
        <div class="pull-left">
            <div class="btn-toolbar">
                <a href="{!! langRoute('admin.author.index') !!}"
                   class="btn btn-primary"> <span class="glyphicon glyphicon-arrow-left"></span>&nbsp;Back </a>
            </div>
        </div>
        <br> <br> <br>
        <table class="table table-striped">
            <tbody>
            <tr>
                <td><strong>Name</strong></td>
                <td>{!! $author->name !!}</td>
            </tr>
            
            </tbody>
        </table>
    </div>
</div>
</div>
</div>
@stop