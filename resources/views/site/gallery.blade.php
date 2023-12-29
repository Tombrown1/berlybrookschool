@extends('layouts.web')
@section('pageTitle', 'Gallery')
@section('content')

    <!--Page Title-->
        <section class="page-title" style="background-image: url({{asset('storage/'.$about->banner)}});">
            <div class="container">
                <div class="row clearfix">
                    <div class="col-md-6 col-sm-6 col-xs-12 pull-left">
                        <h1>Our Gallery</h1>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12 pull-right text-right path"><a href="{{url('/')}}">Home</a>&ensp;>&ensp;<a href="#">Our Gallery</a>
                    </div>
                    <div class="overlay"></div>
                </div>
            </div>
        </section>
        <!--Page Title Ends-->

        <!--latest-gallery start-->
        <section class="latest-gallery text-center">
            <div class="container">
                <ul class="post-filter list-inline"> 
                                      
                    @foreach($gallerycats as $key => $gallerycat)
                       
                    <li class="{{$key === 0 ? 'active' : ''}}" data-filter=".filter-item{{$gallerycat->id}}">                       
                        <span>{{$gallerycat->name}}</span>
                    </li>
                       
                    @endforeach 
                   
                </ul>

                <div class="row masonary-layout filter-layout">
                    @foreach($gallerys as $gallery)
                    <div class="col-md-4 col-sm-6 col-xs-12 filter-item{{$gallery->gallery_cat->id}}">
                        <div class="single-item">
                            <div class="img-box">
                                <img src="{{asset('storage/'.$gallery->file_path)}}" alt="Awesome Image" />
                                <div class="overlay">
                                    <div class="inner">
                                        <ul class="social">
                                            <li><a href="{{asset('storage/'.$gallery->file_path)}}" data-fancybox-group="example-gallery" class="view lightbox-image"><i class="icon fa fa-search"></i></a>
                                            </li>
                                            <li><a href="#"><i class="fa fa-link"></i></a>
                                            </li>
                                        </ul>

                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                    @endforeach
                   
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container -->
        </section>
        <!--latest-gallery end-->
		

@endsection

     