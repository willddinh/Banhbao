@extends('backend/layout/layout')
@section('content')

<!-- Content Header (Page header) -->
<section class="content-header">
    <h1> Author
        <small> | Add Author</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="{!! url(getLang(). '/admin/faq') !!}"><i class="fa fa-question"></i> Author</a></li>
        <li class="active">Add Author</li>
    </ol>
</section>
<br>
<br>
<div class="container">
    <div class="row">
        <div class="col-sm-10">
        {!! Form::open(array('action' => '\Fully\Http\Controllers\Admin\AuthorController@store')) !!}
        <!-- Question -->
            <div class="control-group {!! $errors->has('name') ? 'has-error' : '' !!}">
                <label class="control-label" for="name">Name</label>

                <div class="controls">
                    {!! Form::text('name', null, array('class'=>'form-control', 'id' => 'name', 'placeholder'=>'Name', 'value'=>Input::old('name'))) !!}
                    @if ($errors->first('name'))
                        <span class="help-block">{!! $errors->first('name') !!}</span>
                    @endif
                </div>
            </div>
            <br>

            <br>
            <!-- Form actions -->
            {!! Form::submit('Save Changes', array('class' => 'btn btn-success')) !!}
            <a href="{!! url(getLang(). '/admin/author') !!}" class="btn btn-default">&nbsp;Cancel</a>
            {!! Form::close() !!}

        </div>
    </div>

</div>
@stop