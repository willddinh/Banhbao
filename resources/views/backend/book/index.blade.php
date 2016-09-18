@extends('backend/layout/layout')
@section('content')
    <script type="text/javascript">
        $(document).ready(function () {

            $('#notification').show().delay(4000).fadeOut(700);

            // publish settings
            $(".publish").bind("click", function (e) {
                var id = $(this).attr('id');
                e.preventDefault();
                $.ajax({
                    type: "POST",
                    url: "{!! url(getLang() . '/admin/book/" + id + "/toggle-publish/') !!}",
                    headers: {
                        'X-CSRF-Token': $('meta[name="_token"]').attr('content')
                    },
                    success: function (response) {
                        if (response['result'] == 'success') {
                            var imagePath = (response['changed'] == 1) ? "{!!url('/')!!}/assets/images/publish.png" : "{!!url('/')!!}/assets/images/not_publish.png";
                            $("#publish-image-" + id).attr('src', imagePath);
                        }
                    },
                    error: function () {
                        alert("error");
                    }
                })
            });
        });
    </script>
    <section class="content-header">
        <h1> Book
            <small> | Control Panel</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{!! url(getLang() . '/admin') !!}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li class="active">Book</li>
        </ol>
    </section>
    <br>

    <div class="container">
        <div class="col-lg-10">
            @include('flash::message')
            <br>

            <div class="pull-left">
                <div class="btn-toolbar">
                    <a href="{!! langRoute('admin.book.create') !!}" class="btn btn-primary">
                        <span class="glyphicon glyphicon-plus"></span>&nbsp;Add Book </a>
                </div>
            </div>
            <br> <br> <br>
            @if($books->count())
                <div class="">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>Title</th>
                            <th>Price</th>
                            <th>Discount</th>
                            <th>Created Date</th>
                            <th>Updated Date</th>
                            <th>Action</th>
                            <th>Settings</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach( $books as $book )
                            <tr>
                                <td>
                                    <a href="{!! langRoute('admin.book.show', array($book->id)) !!}" class="btn btn-link btn-xs">
                                        {!! $book->entity->title !!} </a>
                                </td>
                                <td>{!! $book->entity->price !!}</td>
                                <td>{!! $book->discount !!}</td>
                                <td>{!! $book->created_at !!}</td>
                                <td>{!! $book->updated_at !!}</td>
                                <td>
                                    <div class="btn-group">
                                        <a class="btn btn-danger dropdown-toggle" data-toggle="dropdown" href="#">
                                            Action <span class="caret"></span> </a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <a href="{!! langRoute('admin.book.show', array($book->id)) !!}">
                                                    <span class="glyphicon glyphicon-eye-open"></span>&nbsp;Show Book
                                                </a>
                                            </li>
                                            <li>
                                                <a href="{!! langRoute('admin.book.edit', array($book->id)) !!}">
                                                    <span class="glyphicon glyphicon-edit"></span>&nbsp;Edit Book
                                                </a>
                                            </li>
                                            <li class="divider"></li>
                                            <li>
                                                <a href="{!! URL::route('admin.book.delete', array($book->id)) !!}">
                                                    <span class="glyphicon glyphicon-remove-circle"></span>&nbsp;Delete
                                                    Book </a>
                                            </li>

                                        </ul>
                                    </div>
                                </td>
                                <td>
                                    <a href="#" id="{!! $book->id !!}" class="publish">
                                        <img id="publish-image-{!! $book->id !!}" src="{!! url('/') !!}/assets/images/{!! ($book->is_published) ? 'publish.png' : 'not_publish.png'  !!}"/>
                                    </a>
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
                {!! $books->render() !!}
            </ul>
        </div>
    </div>
@stop