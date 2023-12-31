@extends('layouts.master')
@section('pageTitle', 'Curriculum Category')
@section('content')

<div class="content">
    <div class="container">
        
        @if ($message = Session::get('success'))
            <div class="alert alert-success alert-block">
            <button type="button" class="close" data-dismiss="alert">×</button> 
            <strong>{{ $message }}</strong>
            </div>
        @endif

        @if (count($errors) > 0)
            <div class="alert alert-danger">
            <strong>Error!</strong>
            <ul>
                @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
                @endforeach
            </ul>
            </div>
        @endif

        @if(session()->has('error'))
            <div class="alert alert-danger">
                {{ session()->get('error') }}
            </div>
        @endif


        <div class="row">
        <div class="col-md-4">
            <div class="card mt-3">
            <div class="card-header">
                <h3 class="card-title">Add Class Category</h3>
            </div>

            <div class="card-body">
                <form role="form" action="{{ route('add.curriculum.category') }}" method="POST" >
                    {{ csrf_field() }}
                    <!-- text input -->
                    <div class="form-group">
                        <label>Category name</label>
                        <input type="text" class="form-control" name="name" Required/>
                        @if ($errors->has('title'))
                            <span class="help-block">
                                <strong>{{ $errors->first('title') }}</strong>
                            </span>
                        @endif
                    </div>
                    <!-- textarea -->
                    <div class="form-group">
                        <label>Brief Description</label>
                        <textarea class="form-control" rows="3" name="description"></textarea>
                        @if ($errors->has('description'))
                            <span class="help-block">
                                <strong>{{ $errors->first('description') }}</strong>
                            </span>
                        @endif
                    </div>

                    <div class="form-group">
                        <input type="submit" value="Add" class="btn btn-success">
                    </div>
                </form>
            </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="card mt-3">
            <div class="card-body">
                <div class="table-responsive p-2">
                <table class="table table-hover" id="example2">
                    <thead>
                    <tr>
                        <th>S/N</th>
                        <th>name</th>
                        <th>Description</th>
                        <th>Delete</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($classes as $class)
                            <tr>
                                <td>{{$loop->index +1}}</td>
                                <td>{{$class->name}}</td>
                                <td>{{$class->description}}</td>                             
                            <td>
                                <form action="#" method="post">
                                    @csrf
                                <button class="btn btn-danger btn-sm" type="submit"><i class="fa fa-trash"></i></button>
                                </form>
                            </td>
                            </tr>
                    @endforeach
                    
                    </tbody>
                </table>
                </div>
            </div>
            </div><!-- /.box -->
        </div>
        </div>
    </div>
</div>

@endsection