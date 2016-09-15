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

            if ($('#tag').length != 0) {
                var elt = $('#tag');
                elt.tagsinput();
            }
        });
    </script>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> Product <small> | Update Product</small> </h1>
        <ol class="breadcrumb">
            <li><a href="{!! url(getLang() . '/admin/product') !!}"><i class="fa fa-book"></i> Product</a></li>
            <li class="active">Update Product</li>
        </ol>
    </section>
    <br>
    <br>
    <div class="container">

    {!! Form::open( array( 'route' => array(getLang(). '.admin.product.update', $product->id), 'method' => 'PATCH', 'files'=>true)) !!}
    <!-- Title -->
        <div class="control-group {!! $errors->has('title') ? 'has-error' : '' !!}">
            <label class="control-label" for="title">Title</label>

            <div class="controls">
                {!! Form::text('title', $product->entity->title, array('class'=>'form-control', 'id' => 'title', 'placeholder'=>'Title', 'value'=>Input::old('title'))) !!}
                @if ($errors->first('title'))
                    <span class="help-block">{!! $errors->first('title') !!}</span>
                @endif
            </div>
        </div>
        <br>
        <!-- Price -->
        <div class="control-group {!! $errors->has('title') ? 'has-error' : '' !!}">
            <label class="control-label" for="title">Price</label>

            <div class="controls">
                {!! Form::text('price', $product->entity->price, array('class'=>'form-control numeric', 'id' => 'price', 'placeholder'=>'Price', 'value'=>Input::old('price'))) !!}
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
                {!! Form::text('discount', $product->discount, array('class'=>'form-control numeric', 'id' => 'discount', 'placeholder'=>'Discount', 'value'=>Input::old('discount'))) !!}
                @if ($errors->first('discount'))
                    <span class="help-block">{!! $errors->first('discount') !!}</span>
                @endif
            </div>
        </div>
        <br>

        <!-- External Url -->
        <div class="control-group {!! $errors->has('title') ? 'has-error' : '' !!}">
            <label class="control-label" for="title">External url</label>

            <div class="controls">
                {!! Form::text('external_url', $product->external_url, array('class'=>'form-control', 'id' => 'external_url', 'placeholder'=>'Discount', 'value'=>Input::old('external_url'))) !!}
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
                {!! Form::text('tag', $tags, array('class'=>'form-control', 'id' => 'tag', 'placeholder'=>'Tag', 'value'=>Input::old('tag'))) !!}
                @if ($errors->first('tag'))
                    <span class="help-block">{!! $errors->first('tag') !!}</span>
                @endif
            </div>
        </div>
        <br>

        <!-- Category -->
        <div class="control-group {!! $errors->has('category') ? 'error' : '' !!}">
            <label class="control-label" for="title">Category</label>

            <div class="controls">
                {!! Form::select('category', $categories, $product->category_id, array('class' => 'form-control', 'value'=>Input::old('category'))) !!}
                @if ($errors->first('category'))
                    <span class="help-block">{!! $errors->first('category') !!}</span>
                @endif
            </div>
        </div>

        <!--Sub Category -->
        <div class="control-group {!! $errors->has('subCategories') ? 'error' : '' !!}">
            <label class="control-label" for="title">Sub Category</label>

            <div class="controls">
                {!! Form::select('subCategories[]', $subCategories, $product->entity->subCategories->lists('id')->toArray(), array('multiple'=>'true','class' => 'form-control', 'value'=>Input::old('subCategories'))) !!}
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
                {!! Form::textarea('content', $product->content, array('class'=>'form-control', 'id' => 'content', 'placeholder'=>'Content', 'value'=>Input::old('content'))) !!}
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
                                    {!! Form::text('meta_description', $product->meta_description, array('class'=>'form-control', 'id' => 'meta_description', 'placeholder'=>'Meta Description', 'value'=>Input::old('meta_description'))) !!}
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
                                    {!! Form::textarea('meta_keywords', $product->meta_keywords, array('class'=>'form-control', 'id' => 'meta_keywords', 'placeholder'=>'Meta Keywords', 'value'=>Input::old('meta_keywords'))) !!}
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
            <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                <img data-src="" {!! (($product->path) ? "src='".url($product->path)."'" : null) !!} alt="...">
            </div>
            <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
            <div>
                <div> <span class="btn btn-default btn-file"><span class="fileinput-new">Select image</span><span class="fileinput-exists">Change</span>
                        {!! Form::file('image', null, array('class'=>'form-control', 'id' => 'image', 'placeholder'=>'Image', 'value'=>Input::old('image'))) !!}
                        @if ($errors->first('image')) <span class="help-block">{!! $errors->first('image') !!}</span> @endif </span> <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a> </div>
            </div>
            <br>

            <!-- Published -->
            <div class="control-group {!! $errors->has('is_published') ? 'has-error' : '' !!}">

                <div class="controls">
                    <label class="">{!! Form::checkbox('is_published', 'is_published',$product->is_published) !!} Publish ?</label>
                    @if ($errors->first('is_published'))
                        <span class="help-block">{!! $errors->first('is_published') !!}</span>
                    @endif
                </div>
            </div>
            <br>
            {!! Form::submit('Update', array('class' => 'btn btn-success')) !!}
            {!! Form::close() !!}
            <script>
                window.onload = function () {
                    CKEDITOR.replace('content', {
                        "filebrowserBrowseUrl": "{!! url('filemanager/show') !!}"
                    });
                };
            </script>
        </div>
@stop