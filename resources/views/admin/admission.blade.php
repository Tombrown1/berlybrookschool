@extends('layouts.master')
@section('pageTitle', 'Admission')
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
                <h4>Admission

                  <button class="btn btn-success btn-xs float-right" data-toggle="modal" data-target="#admission">Add Admission <i class="fa fa-plus fa-fw"></i></button>
                </h4>

                <div class="modal fade mt-5" id="admission" tabindex="-1" role="dialog" aria-labelledby="admission" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="addCourseLabel">Add Admission</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                        <form method="post" class="profile-wrapper" enctype="multipart/form-data" action="{{ route('add.admission') }}" >
                            {{ csrf_field() }}
                              
                              
                              <div class="form-group">
                                  <label for="image">Image</label>
                                  <input class="form-control" type="file" name="image" required autofocus>  
                              </div> 
                              <div class="form-group mb-3">
                                <label for="title">Title</label>
                                <input type="text" class="form-control" name="title" id="">
                              </div> 
                              <div class="form-group mb-3">
                                <label for="subtitle">Sub Title</label>
                                <input type="text" class="form-control" name="subtitle" id="">
                              </div>
                              <div class="form-group mb-3">
                                <label for="description">Description</label>
                                <textarea class="form-control" name="description" id="editor1" cols="30" rows="3"></textarea>
                                    <script>
                            // Replace the <textarea id="editor1"> with a CKEditor
                            // instance, using default configuration.
                            CKEDITOR.replace( 'editor1' );
                        </script>
                              </div> 

                              <button type="submit" class="btn btn-success pull-right">Add <i class="fa fa-save"></i></button>                              
                          </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="col-12">
                  <div class="table-responsive">
                    <table id="example2" class="table table-bordered table-hover">
                      <thead>
                        <tr>
                          <th>Image</th>
                          <th>Title</th>
                          <th>SubTitle</th>
                          <th>Description</th>
                          <th colspan="2">Action</th>
                        </tr>
                      </thead>
                      <tbody>
                        
                          <tr>
                              
                              <th><img class="img-thumbnail" src="{{asset('storage/admission/'.$admission->image)}}" width="70px"></th>
                              <td>{{$admission->title}}</td>
                              <td>{{$admission->subtitle}}</td>
                              <td>{{$admission->description}}</td>
                              <td><a class="btn btn-primary btn-sm" href="{{route('edit.admission')}}"><i class="fa fa-edit"></i></a></td>
                              <td>
                              <form action="{{route('del.admission', ['id' => $admission->id])}}" method="post">
                                  @csrf
                                <button class="btn btn-danger btn-sm" onclick="return confirm('Are you sure to delete!')"><i class="fa fa-trash"></i></button>
                              </form>
                            </td>
                          </tr>
                    
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