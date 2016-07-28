<!DOCTYPE html>
<html lang="en-GB">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>{{ Config::get('app.name') }} - @section('title')
        @show</title>
</head>
<body>
<div id="wrap">
    <div class="container">
@section('top')
@show
@section('content')
@show
@section('bottom')
@show
</body>
</html>
