@extends('layouts.master')
@section('pageTitle', 'Curriculum')
@section('content')

<div class="content">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="card mt-3">
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

          <div class="card-body">
            <div class="p-3">
              <h4>All Curriculum

                <a class="btn btn-success btn-xs float-right" href="{{ route('add.curriculum') }}" >Add Curriculum<i class="fa fa-plus fa-fw"></i></a>
              </h4>

             
            </div>

            <div class="row">
              <div class="col-12">
                <div class="table-responsive">
                  <table id="example2" class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        <th>S/N</th>
                        <th>Name</th>
                        <th>Age Range</th>
                        <th>Description</th>
                        <th>Featured Image</th>
                        <th colspan="2" class="text-center">Action</th>
                      </tr>
                    </thead>
                    <tbody>
                       @foreach($curriculums as $curriculum)
                            <tr>
                                <td>{{$loop->index +1}}</td>
                                <td>{{$curriculum->name}}</td>
                                <td>{{$curriculum->age_range}}</td>
                                <td>{{$curriculum->description}}</td>
                                <th><img class="img-thumbnail" src="{{asset('storage/curriculum/'.$curriculum->image)}}" width="70px"></th>
                                <td><a href="{{route('edit.curriculum', ['id' => $curriculum->id])}}" class="btn btn-primary"><i class="fa fa-edit"></i></a></td>
                                <td><a href="#" class="btn btn-danger"><i class="fa fa-trash"></i></a></td>
                            </tr>
                       @endforeach
                    </tbody>                     
                  </table>
                </div>
              </div>
            </div>
          </div>
          
        </div>
      </div>
    </div>
    <!-- /.row -->
  </div><!-- /.container-fluid -->
</div>
<!-- /.content -->
@endsection
