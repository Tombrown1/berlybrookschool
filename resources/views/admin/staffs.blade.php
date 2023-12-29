@extends('layouts.master')
@section('pageTitle', 'Staff')
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
                <h4>Staff

                  <button class="btn btn-success btn-xs float-right" data-toggle="modal" data-target="#admission">Add Staff <i class="fa fa-plus fa-fw"></i></button>
                </h4>

                <div class="modal fade mt-5" id="admission" tabindex="-1" role="dialog" aria-labelledby="admission" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="addCourseLabel">Add Staff</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                        <form method="post" class="profile-wrapper" enctype="multipart/form-data" action="{{ route('store.staff') }}" >
                            {{ csrf_field() }}                             
                              
                              
                              <div class="form-group mb-3">
                                <label for="fname">First Name</label>
                                <input type="text" class="form-control" name="fname" id="">
                              </div> 
                              <div class="form-group mb-3">
                                <label for="lname">Last Name</label>
                                <input type="text" class="form-control" name="lname" id="">
                              </div>
                              <div class="form-group mb-3">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" name="email" id="">
                              </div>
                              <div class="form-group mb-3">
                                <label for="phone">Phone</label>
                                <input type="text" class="form-control" name="phone" id="">
                              </div>
                              <div class="form-group mb-3">
                                <label for="gender">Gender</label>
                                <input type="text" class="form-control" name="gender" id="">
                              </div>
                              <div class="form-group mb-3">
                                <label for="position">Position</label>
                                <input type="text" class="form-control" name="position" id="">
                              </div>
                              <div class="form-group mb-3">
                                <label for="class">Class</label>
                                <select name="staff_cat_id" id="" class="form-control">
                                    @foreach($staff_cats as $staff_cat)
                                    <option value="{{$staff_cat->id}}">{{$staff_cat->name}}</option>
                                    @endforeach
                                </select>
                              </div>

                              <div class="form-group">
                                  <label for="image">Image</label>
                                  <input class="form-control" type="file" name="image" required autofocus>  
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
                          <th>S/N</th>
                          <th>Image</th>
                          <th>First Name</th>
                          <th>Last Name</th>
                          <th>Email</th>
                          <th>Phone</th>
                          <th>Position</th>
                          <th colspan="2">Action</th>
                        </tr>
                      </thead>
                      <tbody>
                        @foreach($staffs as $staff)
                            <tr>
                                <td>{{$loop->index +1}}</td>
                                <td><img class="img-thumbnail" src="{{asset('storage/staff/'.$staff->image)}}" width="70" alt=""></td>
                                <td>{{$staff->fname}}</td>
                                <td>{{$staff->lname}}</td>
                                <td>{{$staff->email}}</td>
                                <td>{{$staff->phone}}</td>
                                <td>{{$staff->position}}</td>
                                <td><a href="{{route('edit.staff', ['id' => $staff->id])}}" class="btn btn-primary"><span class="fa fa-edit"></span></a></td>
                                <td><a href="#" class="btn btn-danger"><span class="fa fa-trash"></span></a></td>
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