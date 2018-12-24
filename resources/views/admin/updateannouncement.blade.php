@extends("layouts.Adminlayout")


@section('title')
PUP-SFAS | Update Announcement
@endsection

@section('pageHeader')

@endsection

@section('pageHeaderSub')

@endsection

@section('content')

<div style="width: 100%; border: 1px solid gray; padding: 30px 30px 30px 30px;">
    <div style="border-bottom: 1px solid black; width: 100%;">
        <label><strong><h3> Update Announcements </h3></strong></label>
    </div>

    <div class="form-group" style="margin: 30px 30px 30px 0px;">
        <label for="title">Title</label>
        <select class="form-control" id="title" placeholder="Pick title">
            <option selected disabled></option>
            <option> 1 </option>
            <option> 2 </option>
            <option> 3 </option>
        </select><br>

        <label for="author">Author</label>
        <input class="form-control" type="text" id="author" placeholder="Enter author"><br>

        <label for="article">Article</label>
        <textarea class="form-control" id="article" style="height: 200px;"></textarea><br><br>

        <button class="btn btn-success">Update</button> <button style="margin-left: 10px;" class="btn"> Clear </button>
    <div>



</div>

@endsection