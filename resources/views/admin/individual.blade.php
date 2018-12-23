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
                    @if(count($posts) > 0)
                        <table class="table table-striped">
                            <tr>
                                <th>Title</th>
                                <th></th>
                                <th></th>
                            </tr>
                            @foreach($posts as $data)
                                <tr>
                                    <td>{{$data->campus_addr}}</td>
                                    <td>
                                        {!!Form::open(['action' => ['PostsController@destroy', $data->campus_name], 'method' => 'POST', 'class' => 'pull-right'])!!}
                                            {{Form::hidden('_method', 'DELETE')}}
                                            {{Form::submit('Delete', ['class' => 'btn btn-danger'])}}
                                        {!!Form::close()!!}
                                    </td>
                                </tr>
                            @endforeach
                        </table>
                    @else
                        <p>You have no posts</p>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>

	<!--foreach $data as $row{{$row -> campus_name}}
	{{$row->campus_addr}}
	@endforeach-->

@endsection