@extends("layouts.Adminlayout")
@section('title')
PUP-SFAS | Pending Sponsors
@endsection
@section('content')


<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Individual Sponsors</div>

                <div class="panel-body">
                    <h3>Your Blog Posts</h3>
                        <table class="table table-striped">
                            <tr>
                                <th>Title</th>
                                <th></th>
                                <th></th>
                            </tr>
                            @foreach($data as $row)
                                <tr>
                                    <td>{{$row->campus_addr}}</td>
                                    <td>                                        
                                    </td>
                                </tr>
                            @endforeach
                        </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection