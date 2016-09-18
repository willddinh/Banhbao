@extends('backend/layout/layout')
@section('content')
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1> Author
        <small> | Update Author</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="{!! url(getLang(). '/admin/author') !!}"><i class="fa fa-question"></i> Author</a></li>
        <li class="active">Update Author</li>
    </ol>
</section>
<br>
<br>
<div class="container">

    {!! Form::open( array( 'route' => array(getLang(). '.admin.author.update', $author->id), 'method' => 'PATCH')) !!}
    <!-- Question -->
    <div class="control-group {!! $errors->has('name') ? 'has-error' : '' !!}">
        <label class="control-label" for="name">Name</label>

        <div class="controls">
            {!! Form::text('name', $author->name, array('class'=>'form-control', 'id' => 'name', 'placeholder'=>'Question', 'value'=>Input::old('name'))) !!}
            @if ($errors->first('name'))
            <span class="help-block">{!! $errors->first('name') !!}</span>
            @endif
        </div>
    </div>
    <br>


    <br>
    <!-- Form actions -->
    {!! Form::submit('Save Changes', array('class' => 'btn btn-success')) !!}
    <a href="{!! url(getLang() . '/admin/author') !!}" class="btn btn-default">&nbsp;Cancel</a>
    {!! Form::close() !!}

</div>
@stop