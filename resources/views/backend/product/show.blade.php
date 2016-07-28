@extends('backend/layout/layout')
@section('content')
{!! HTML::style('ckeditor/contents.css') !!}
        <!-- Content Header (Page header) -->
<section class="content-header">
    <h1> Product
        <small> | Show Product</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="{!! langRoute('admin.product.index') !!}"><i class="fa fa-book"></i> Product</a></li>
        <li class="active">Show Product</li>
    </ol>
</section>
<br>
<br>
<div class="container">
    <div class="col-lg-10">
        <div class="pull-left">
            <div class="btn-toolbar">
                <a href="{!! langRoute('admin.product.index') !!}"
                   class="btn btn-primary"> <span class="glyphicon glyphicon-arrow-left"></span>&nbsp;Back </a>
            </div>
        </div>
        <br> <br> <br>
        <table class="table table-striped">
            <tbody>
            <tr>
                <td><strong>Title</strong></td>
                <td>{!! $product->title !!}</td>
            </tr>
            <tr>
                <td><strong>Slug</strong></td>
                <td>{!! $product->slug !!}</td>
            </tr>
            <tr>
                <td><strong>Category</strong></td>
                <td>{!! $product->category[0]->title !!}</td>
            </tr>
            <tr>
                <td><strong>Date Created</strong></td>
                <td>{!! $product->created_at !!}</td>
            </tr>
            <tr>
                <td><strong>Date Updated</strong></td>
                <td>{!! $product->updated_at !!}</td>
            </tr>
            <tr>
                <td><strong>Meta Keywords</strong></td>
                <td>{!! $product->meta_keywords !!}</td>
            </tr>
            <tr>
                <td><strong>Meta Description</strong></td>
                <td>{!! $product->meta_description !!}</td>
            </tr>
            <tr>
                <td><strong>Published</strong></td>
                <td>{!! $product->is_published !!}</td>
            </tr>
            <tr>
                <td><strong>Tag</strong></td>
                <td>
                    @foreach($product->tags as $tag)
                        {!! $tag->name !!},
                    @endforeach
                </td>
            </tr>
            <tr>
                <td><strong>Content</strong></td>
                <td>{!! $product->content !!}</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
@stop
