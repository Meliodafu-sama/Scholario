@extends("layouts.Adminlayout")


@section('title')
PUP-SFAS | Contact Us
@endsection

@section('pageHeader')

@endsection

@section('pageHeaderSub')

@endsection

@section('content')

<div style="width: 100%; border: 1px solid gray; padding: 30px 30px 30px 30px;">
    <div style="border-bottom: 1px solid black; width: 100%;">
        <label><strong><h3> Contact Information </h3></strong></label>
    </div>

    <div class="form-group" style="margin: 30px 30px 30px 0px;">
        <label for="title">Address</label>
        <input class="form-control" type="text" id="title" placeholder="Current Address"><br>

        <label for="author">Email</label>
        <input class="form-control" type="text" id="author" placeholder="Active Email Address"><br>

        <label for="author">Telephone</label>
        <input class="form-control" type="text" id="author" placeholder="Available Telephone Numbers"><br>

        <button class="btn btn-success">Update</button> 
    <div>



</div>

@endsection