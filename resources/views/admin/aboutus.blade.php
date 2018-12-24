@extends("layouts.Adminlayout")

@section('title')
PUP-SFAS | About Us
@endsection

@section('pageHeader')

@endsection

@section('pageHeaderSub')

@endsection

@section('content')

<div style="width: 100%; border: 1px solid gray; padding: 30px 30px 30px 30px;">
    <div style="border-bottom: 1px solid black; width: 100%;">
        <label><strong><h3> About Us </h3></strong></label>
    </div>

    <div class="form-group" style="margin: 30px 30px 30px 0px;">
        <label for="title">What We Do</label>
        <textarea class="form-control" id="article" style="height: 200px;" placeholder="Enter title"></textarea><br>
        <button class="btn btn-success">Update</button><br><br>

        <label for="author">Vision</label>
        <textarea class="form-control" id="article" style="height: 200px;" placeholder="Enter title"></textarea><br>
        <button class="btn btn-success">Update</button><br><br>

    <div>

</div>

@endsection