@extends('backend/layout/layout')
@section('content')
{!! HTML::style('ckeditor/contents.css') !!}
        <!-- Content Header (Page header) -->
<section class="content-header">
    <h1> Book
        <small> | Show Book</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="{!! langRoute('admin.book.index') !!}"><i class="fa fa-book"></i> Book</a></li>
        <li class="active">Show Book</li>
    </ol>
</section>
<br>
<br>
<div class="container">
    <div class="col-lg-10">
        <div class="pull-left">
            <div class="btn-toolbar">
                <a href="{!! langRoute('admin.book.index') !!}"
                   class="btn btn-primary"> <span class="glyphicon glyphicon-arrow-left"></span>&nbsp;Back </a>
            </div>
        </div>
        <br> <br> <br>
        <table class="table table-striped">
            <tbody>
            <tr>
                <td><strong>Title</strong></td>
                <td>{!! $book->entity->title !!}</td>
            </tr>
            <tr>
                <td><strong>Slug</strong></td>
                <td>{!! $book->slug !!}</td>
            </tr>
            <tr>
                <td><strong>Category</strong></td>
                <td>{!! $book->category->title !!}</td>
            </tr>

            <tr>
                <td><strong>Sub Category</strong></td>
                <td>
                    @foreach($book->entity->subCategories as $subCat)
                        {!! $subCat->title !!},
                    @endforeach
                </td>
            </tr>
            <tr>
                <td><strong>Date Created</strong></td>
                <td>{!! $book->created_at !!}</td>
            </tr>
            <tr>
                <td><strong>Date Updated</strong></td>
                <td>{!! $book->updated_at !!}</td>
            </tr>
            <tr>
                <td><strong>Meta Keywords</strong></td>
                <td>{!! $book->meta_keywords !!}</td>
            </tr>
            <tr>
                <td><strong>Meta Description</strong></td>
                <td>{!! $book->meta_description !!}</td>
            </tr>
            <tr>
                <td><strong>Published</strong></td>
                <td>{!! $book->is_published !!}</td>
            </tr>
            <tr>
                <td><strong>Tag</strong></td>
                <td>
                    @foreach($book->entity->tags as $tag)
                        {!! $tag->name !!},
                    @endforeach
                </td>
            </tr>
            <tr>
                <td><strong>Content</strong></td>
                <td>{!! $book->content !!}</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
@stop
