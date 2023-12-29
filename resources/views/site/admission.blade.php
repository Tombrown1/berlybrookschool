@extends('layouts.web')
@section('pageTitle', 'Admission')
@section('content')

  <section class="page-title" style="background-image: url({{asset('storage/'.$about->banner)}});">
            <div class="container">
                <div class="row clearfix">
                    <div class="col-md-6 col-sm-6 col-xs-12 pull-left">
                        <h1>Admission</h1>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12 pull-right text-right path"><a href="{{url('/')}}">Home</a>&ensp;>&ensp;<a href="#">Teachers Profile</a>
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

		 <!--team-profile start-->
        <section class="team-profile">
            <div class="container">
                <div class="item-box">
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="item">
                                <div class="sec-title">
                                    <h2>Admission into Beryl Brooks is simple</h2>
                                   

                                </div>
                                <figure class="image-box">
                                    <img src="{{asset('storage/admission/'.$admission->image)}}" alt="" />
                                </figure>
                            </div>
                        </div>                        
                    </div>
                </div>

                <div class="details"> 
                                <div class="two-column">
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                     <h4>{{$admission->title}}</h4> <br>
                                    <h4>{{$admission->subtitle}}</h4>
                                    <div class="item">
                                        <div class="sec-title">
                                                <p>{!!nl2br(substr(strip_tags($admission->description), 0, 520))!!}</p>

                                        </div>
                                    </div>
                                </div>
                       
                    </div>

                </div>                
                    <div class="text">
                    </div>
                   
                </div>

                
            </div>

        </section>
         <!--team-profile end-->


@endsection