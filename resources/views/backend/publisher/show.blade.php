@extends('backend/layout/layout')
@section('content')
        <!-- Content Header (Page header) -->
<section class="content-header">
    <h1> Publisher
        <small> | Show Publisher</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="{!! langRoute('admin.publisher.index') !!}"><i class="fa fa-question"></i> Publisher</a></li>
        <li class="active">Show Publisher</li>
    </ol>
</section>
<br>
<br>
<div class="container">
    <div class="col-lg-10">
        <div class="pull-left">
            <div class="btn-toolbar">
                <a href="{!! langRoute('admin.publisher.index') !!}"
                   class="btn btn-primary"> <span class="glyphicon glyphicon-arrow-left"></span>&nbsp;Back </a>
            </div>
        </div>
        <br> <br> <br>
        <table class="table table-striped">
            <tbody>
            <tr>
                <td><strong>Name</strong></td>
                <td>{!! $publisher->name !!}</td>
            </tr>
            
            </tbody>
        </table>
    </div>
</div>
</div>
</div>
@stop