@extends('layouts.web')
@section('pageTitle',  'About')
@section('content')


 <!--Page Title-->
        <section class="page-title" style="background-image: url({{asset('storage/'.$about->banner)}});">
            <div class="container">
                <div class="row clearfix">
                    <div class="col-md-6 col-sm-6 col-xs-12 pull-left">
                        <h1>about us</h1>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12 pull-right text-right path"><a href="{{url('/')}}">Home</a>&ensp;>&ensp;<a href="#">About Us</a>
                    </div>
                    <div class="overlay"></div>
                </div>
            </div>
        </section>
        <!--Page Title Ends-->

         <!--feature start-->
        <section class="feature">
            <div class="container">
                <div class="sec-title text-center">
                    <h2>Core Values</h2>
                    <p><strong><h3>{{$about->core_value}}</h3></strong></p>
                </div>
                <div class="inner-box">
                    <div class="item-list">
                        <div class="row">
                            <div class="item col-md-3 col-sm-6 col-xs-12">
                                <div class="border">
                                    <div class="icon-box">
                                        <i class="icon flaticon-write-board"></i>
                                    </div>
                                </div>
                                <h3><a href="#">Smart Courses</a></h3>
                            </div>
                            <div class="item col-md-3 col-sm-6 col-xs-12">
                                <div class="border">
                                    <div class="icon-box">
                                        <i class="icon flaticon-people"></i>
                                    </div>
                                </div>
                                <h3><a href="#">Expert Teachers</a></h3>
                            </div>
                            <div class="item col-md-3 col-sm-6 col-xs-12">
                                <div class="border">
                                    <div class="icon-box">
                                        <i class="icon flaticon-paint-palette-and-brush"></i>
                                    </div>
                                </div>
                                <h3><a href="#">Music & Arts</a></h3>
                            </div>
                            <div class="item col-md-3 col-sm-6 col-xs-12">
                                <div class="border">
                                    <div class="icon-box">
                                        <i class="icon flaticon-bricks"></i>
                                    </div>
                                </div>
                                <h3><a href="#">Active Learning</a></h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--feature end-->
		<!--about style-two start-->
        <section class="about style-two">
            <div class="container">
                <div class="item-box">
                    <div class="row">
                        <div class="single-column col-md-6 col-sm-12">
                            <div class="wow fadeIn" data-wow-duration="2s" data-wow-delay="0.5s" data-wow-offset="0" style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
                                <div class="post-content">
                                    <div class="sec-title">
                                     <h2>Welcome to {{$about->sitename}}</h2>
                                    </div>
                                    <div class="text">
                                        <p>{!! nl2br(substr(strip_tags($about->about), 0)) !!}</p>
                                    </div>
                                
                                </div>
                            </div>
                        </div>
                        <div class="single-column about_carousel col-md-6 col-sm-12">
                            <div class="about-carousel">
                                @foreach($directors as $about_slider)
                                <div class="single-item">
                                    <div class="img-holder">
                                        <img src="{{asset('storage/'.$about_slider->image)}}" alt="Awesome Image" />
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--about style-two end-->

		
      


@endsection