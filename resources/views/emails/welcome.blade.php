@extends('emails.layout')

@section('content')
    Activate your account by clicking <a href="{{ URL::to("activate/{$user->getUserId()}/{$code}") }}">here</a>
@stop




