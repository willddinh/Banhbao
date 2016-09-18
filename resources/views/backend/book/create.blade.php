@extends('backend/layout/layout')
@section('content')
    {!! HTML::style('assets/bootstrap/css/bootstrap-tagsinput.css') !!}
    {!! HTML::style('jasny-bootstrap/css/jasny-bootstrap.min.css') !!}
    {!! HTML::script('jasny-bootstrap/js/jasny-bootstrap.min.js') !!}
    {!! HTML::script('ckeditor/ckeditor.js') !!}
    {!! HTML::script('assets/bootstrap/js/bootstrap-tagsinput.js') !!}
    {!! HTML::script('assets/js/jquery.slug.js') !!}
    <script type="text/javascript">
        $(document).ready(function () {
            $("#title").slug();
        });
    </script>

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> Book <small> | Add Book</small> </h1>
        <ol class="breadcrumb">
            <li><a href="{!! url(getLang() . '/admin/article') !!}"><i class="fa fa-book"></i> Book</a></li>
            <li class="active">Add Book</li>
        </ol>
    </section>
    <br>
    <br>
    <div class="container">
        <div class="row">
            <div class="col-sm-10">
    {!! Form::open(array('action' => '\Fully\Http\Controllers\Admin\BookController@store', 'files'=>true)) !!}

    <!-- Title -->
        <div class="control-group {!! $errors->has('title') ? 'has-error' : '' !!}">
            <label class="control-label" for="title">Title</label>

            <div class="controls">
                {!! Form::text('title', null, array('class'=>'form-control', 'id' => 'title', 'placeholder'=>'Title', 'value'=>Input::old('title'))) !!}
                @if ($errors->first('title'))
                    <span class="help-block">{!! $errors->first('title') !!}</span>
                @endif
            </div>
        </div>
        <br>
        <!-- ISBN-->
        <div class="control-group {!! $errors->has('isbn') ? 'has-error' : '' !!}">
            <label class="control-label" for="title">ISBN</label>

            <div class="controls">
                {!! Form::text('isbn', null, array('class'=>'form-control', 'id' => 'isbn', 'placeholder'=>'isbn', 'value'=>Input::old('isbn'))) !!}
                @if ($errors->first('isbn'))
                    <span class="help-block">{!! $errors->first('isbn') !!}</span>
                @endif
            </div>
        </div>
        <br>

        <!-- size-->
        <div class="control-group {!! $errors->has('size') ? 'has-error' : '' !!}">
            <label class="control-label" for="size">Size</label>

            <div class="controls">
                {!! Form::text('size', null, array('class'=>'form-control', 'id' => 'size', 'placeholder'=>'size', 'value'=>Input::old('size'))) !!}
                @if ($errors->first('size'))
                    <span class="help-block">{!! $errors->first('size') !!}</span>
                @endif
            </div>
        </div>
        <br>


        <!-- Page num-->
        <div class="control-group {!! $errors->has('page_num') ? 'has-error' : '' !!}">
            <label class="control-label" for="page_num">Number of pages</label>

            <div class="controls">
                {!! Form::text('page_num', null, array('class'=>'form-control', 'id' => 'page_num', 'placeholder'=>'Number of pages', 'value'=>Input::old('page_num'))) !!}
                @if ($errors->first('size'))
                    <span class="help-block">{!! $errors->first('page_num') !!}</span>
                @endif
            </div>
        </div>
        <br>

        <!-- Price -->
        <div class="control-group {!! $errors->has('title') ? 'has-error' : '' !!}">
            <label class="control-label" for="title">Price</label>

            <div class="controls">
                {!! Form::text('price', null, array('class'=>'form-control numeric', 'id' => 'price', 'placeholder'=>'Price', 'value'=>Input::old('price'))) !!}
                @if ($errors->first('price'))
                    <span class="help-block">{!! $errors->first('price') !!}</span>
                @endif
            </div>
        </div>
        <br>

        <!-- Discount -->
        <div class="control-group {!! $errors->has('title') ? 'has-error' : '' !!}">
            <label class="control-label" for="title">Discount(%)</label>

            <div class="controls">
                {!! Form::text('discount', null, array('class'=>'form-control numeric', 'id' => 'discount', 'placeholder'=>'Discount', 'value'=>Input::old('discount'))) !!}
                @if ($errors->first('discount'))
                    <span class="help-block">{!! $errors->first('discount') !!}</span>
                @endif
            </div>
        </div>
        <br>

        <!-- Rent price -->
        <div class="control-group {!! $errors->has('rent_price') ? 'has-error' : '' !!}">
            <label class="control-label" for="title">Rent price per day</label>

            <div class="controls">
                {!! Form::text('rent_price', null, array('class'=>'form-control numeric', 'id' => 'rent_price', 'placeholder'=>'Discount', 'value'=>Input::old('rent_price'))) !!}
                @if ($errors->first('rent_price'))
                    <span class="help-block">{!! $errors->first('rent_price') !!}</span>
                @endif
            </div>
        </div>
        <br>

        <!-- External Url -->
        <div class="control-group {!! $errors->has('title') ? 'has-error' : '' !!}">
            <label class="control-label" for="title">External url</label>

            <div class="controls">
                {!! Form::text('external_url', null, array('class'=>'form-control', 'id' => 'external_url', 'placeholder'=>'Discount', 'value'=>Input::old('external_url'))) !!}
                @if ($errors->first('external_url'))
                    <span class="help-block">{!! $errors->first('external_url') !!}</span>
                @endif
            </div>
        </div>
        <br>
        <!-- Tag -->
        <div class="control-group {!! $errors->has('tag') ? 'has-error' : '' !!}">
            <label class="control-label" for="title">Tag</label>

            <div class="controls">
                {!! Form::text('tag', null, array('class'=>'form-control', 'id' => 'tag', 'placeholder'=>'Tag', 'value'=>Input::old('tag'))) !!}
                @if ($errors->first('tag'))
                    <span class="help-block">{!! $errors->first('tag') !!}</span>
                @endif
            </div>
        </div>
        <br>

        <!-- Author -->
        <div class="control-group {!! $errors->has('author') ? 'error' : '' !!}">
            <label class="control-label" for="title">Author</label>

            <div class="controls">
                {!! Form::select('author', $authors, null, array('class' => 'form-control', 'value'=>Input::old('author'))) !!}
                @if ($errors->first('author'))
                    <span class="help-block">{!! $errors->first('author') !!}</span>
                @endif
            </div>
        </div>

        <!-- Publisher -->
        <div class="control-group {!! $errors->has('publisher') ? 'error' : '' !!}">
            <label class="control-label" for="title">Publisher</label>

            <div class="controls">
                {!! Form::select('publisher', $publishers, null, array('class' => 'form-control', 'value'=>Input::old('publisher'))) !!}
                @if ($errors->first('publisher'))
                    <span class="help-block">{!! $errors->first('publisher') !!}</span>
                @endif
            </div>
        </div>

        <!-- Category -->
        <div class="control-group {!! $errors->has('category') ? 'error' : '' !!}">
            <label class="control-label" for="title">Category</label>

            <div class="controls">
                {!! Form::select('category', $categories, null, array('class' => 'form-control', 'value'=>Input::old('category'))) !!}
                @if ($errors->first('category'))
                    <span class="help-block">{!! $errors->first('category') !!}</span>
                @endif
            </div>
        </div>
        <!--Sub Category -->
        <div class="control-group {!! $errors->has('subCategories') ? 'error' : '' !!}">
            <label class="control-label" for="title">Sub Category</label>

            <div class="controls">
                {!! Form::select('subCategories[]', $subCategories, null, array('multiple'=>'true','class' => 'form-control', 'value'=>Input::old('subCategories'))) !!}
                @if ($errors->first('subCategories'))
                    <span class="help-block">{!! $errors->first('subCategories') !!}</span>
                @endif
            </div>
        </div>
        <br>

        <!-- Content -->
        <div class="control-group {!! $errors->has('content') ? 'has-error' : '' !!}">
            <label class="control-label" for="title">Content</label>

            <div class="controls">
                {!! Form::textarea('content', null, array('class'=>'form-control', 'id' => 'content', 'placeholder'=>'Content', 'value'=>Input::old('content'))) !!}
                @if ($errors->first('content'))
                    <span class="help-block">{!! $errors->first('content') !!}</span>
                @endif
            </div>
        </div>
        <br>

        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><span class="glyphicon glyphicon-th-list">
                </span>META DATA</a>
                </h4>
            </div>
            <div id="collapseTwo" class="panel-collapse collapse">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12">

                            <!-- Meta Description -->
                            <div class="control-group {!! $errors->has('meta_description') ? 'has-error' : '' !!}">
                                <label class="control-label" for="title">Meta Description</label>

                                <div class="controls">
                                    {!! Form::text('meta_description', null, array('class'=>'form-control', 'id' => 'meta_description', 'placeholder'=>'Meta Description', 'value'=>Input::old('meta_description'))) !!}
                                    @if ($errors->first('meta_description'))
                                        <span class="help-block">{!! $errors->first('meta_description') !!}</span>
                                    @endif
                                </div>
                            </div>
                            <br>


                            <!-- Meta Keywords -->
                            <div class="control-group {!! $errors->has('meta_keywords') ? 'has-error' : '' !!}">
                                <label class="control-label" for="title">Meta Keywords</label>

                                <div class="controls">
                                    {!! Form::textarea('meta_keywords', null, array('class'=>'form-control', 'id' => 'meta_keywords', 'placeholder'=>'Meta Keywords', 'value'=>Input::old('meta_keywords'))) !!}
                                    @if ($errors->first('meta_keywords'))
                                        <span class="help-block">{!! $errors->first('meta_keywords') !!}</span>
                                    @endif
                                </div>
                            </div>
                            <br>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Image -->
        <div class="fileinput fileinput-new control-group {!! $errors->has('image') ? 'has-error' : '' !!}" data-provides="fileinput">
            <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 200px; height: 150px;"></div>
            <div> <span class="btn btn-default btn-file"><span class="fileinput-new">Select image</span><span class="fileinput-exists">Change</span> {!! Form::file('image', null, array('class'=>'form-control', 'id' => 'image', 'placeholder'=>'Image', 'value'=>Input::old('image'))) !!}
                    @if ($errors->first('image')) <span class="help-block">{!! $errors->first('image') !!}</span> @endif </span> <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a> </div>
        </div>
        <br>

        <!-- Published -->
        <div class="control-group {!! $errors->has('is_published') ? 'has-error' : '' !!}">

            <div class="controls">
                <label class="">{!! Form::checkbox('is_published', 'is_published') !!} Publish ?</label>
                @if ($errors->first('is_published'))
                    <span class="help-block">{!! $errors->first('is_published') !!}</span>
                @endif
            </div>
        </div>
        <br>

        {!! Form::submit('Create', array('class' => 'btn btn-success')) !!}
        {!! Form::close() !!}
        <script type="text/javascript">
            window.onload = function () {
                CKEDITOR.replace('content', {
                    "filebrowserBrowseUrl": "{!! url('filemanager/show') !!}"
                });
            };

            $(document).ready(function () {

                if ($('#tag').length != 0) {
                    var elt = $('#tag');
                    elt.tagsinput();
                }
            });
        </script>
            </div>
        </div>
    </div>
@stop