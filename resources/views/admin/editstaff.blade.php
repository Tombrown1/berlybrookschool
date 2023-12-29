@extends('layouts.master')
@section('pageTitle', 'Edit Staff')
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
      <div class="row">
        <div class="col-md-12">
          <div class="card mt-3">
            <div class="card-header">
              <h3 class="card-title">Add Staff</h3>
              <a class="btn btn-primary btn-xs float-right" href="{{route('staffs')}}">Back <i class="fa fa-plus fa-bw"></i></a>
            </div>

            <div class="card-body">
               <form method="post" class="profile-wrapper" enctype="multipart/form-data" action="{{ route('update.staff', ['id' => $editstaff->id]) }}" >
                            {{ csrf_field() }}                             
                              
                              
                              <div class="form-group mb-3">
                                <label for="fname">First Name</label>
                                <input type="text" class="form-control" name="fname" value="{{$editstaff->fname}}" id="">
                              </div> 
                              <div class="form-group mb-3">
                                <label for="lname">Last Name</label>
                                <input type="text" class="form-control" name="lname" value="{{$editstaff->lname}}" id="">
                              </div>
                              <div class="form-group mb-3">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" name="email" value="{{$editstaff->email}}" id="">
                              </div>
                              <div class="form-group mb-3">
                                <label for="phone">Phone</label>
                                <input type="text" class="form-control" name="phone" value="{{$editstaff->phone}}" id="">
                              </div>
                              <div class="form-group mb-3">
                                <label for="gender">Gender</label>
                                <input type="text" class="form-control" name="gender" value="{{$editstaff->gender}}" id="">
                              </div>
                              <div class="form-group mb-3">
                                <label for="position">Position</label>
                                <input type="text" class="form-control" name="position" value="{{$editstaff->position}}" id="">
                              </div>
                              <div class="form-group mb-3">
                                <label for="class">Class</label>
                                <select name="staff_cat_id" value="{{$editstaff->staff_cat_id}}" class="form-control">
                                    @foreach($staff_cats as $staff_cat)
                                    <option value="{{$staff_cat->id}}" {{($staff_cat->id === $editstaff->staff_cat_id) ? 'selected' : ''}}>{{$staff_cat->name}}</option>
                                    @endforeach
                                </select>
                              </div>

                              <div class="form-group">
                                  <label for="image">Image</label>
                                  <input class="form-control" type="file" name="image" value="{{$editstaff->image}}">  
                              </div> 
                              <div class="form-group">
                                <img src="{{asset('storage/staff/'.$editstaff->image)}}" width="100" alt="" class="img-thumbnail">
                              </div>
                              <div class="form-group mb-3">
                                <label for="description">Description</label>
                                <textarea class="form-control" name="description" id="editor1" cols="30" rows="3">{{$editstaff->description}}</textarea>
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
</div>

@endsection