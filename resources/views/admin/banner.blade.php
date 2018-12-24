@extends("layouts.Adminlayout")


@section('title')
PUP-SFAS | Banner
@endsection

@section('pageHeader')

@endsection

@section('pageHeaderSub')

@endsection

@section('content')

<div style="width: 100%; border: 1px solid gray; padding: 30px 30px 30px 30px;">
    <div style="border-bottom: 1px solid black; width: 100%;">
        <label><strong><h3> Add Banner </h3></strong></label>
    </div>

    <div class="form-group" style="margin: 30px 30px 30px 0px;">
        <label for="title">Upload A Picture</label>
        <div class = "input-group margin">
            <div class = "input-group-btn">
                <button type = "button" class="btn btn-danger" style="display: inline-block; padding: 6px 12px; margin-bottom: 0; font-size: 14px; font-weight: 400;">
                    Attach
                </button>
            </div>

            <input type = "text" class = "form-control">
        </div>
        <!-- <select class="form-control" id="title" placeholder="Pick title">
            <option selected disabled></option>
            <option> 1 </option>
            <option> 2 </option>
            <option> 3 </option>
        </select><br> -->
    <div>



</div>

@endsection