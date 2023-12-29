@extends('layouts.web')
@section('pageTitle', 'Currriculum Detail')
@section('content')

     <!--Page Title-->
        <section class="page-title" style="background-image: url({{asset('storage/'.$about->banner)}});">
            <div class="container">
                <div class="row clearfix">
                    <div class="col-md-6 col-sm-6 col-xs-12 pull-left">
                        <h1>{{$curriculum->name}} Details</h1>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12 pull-right text-right path"><a href="{{url('/')}}">Home</a>&ensp;>&ensp;<a href="{{route('site.curriculum')}}">Our Curriculums</a>
                    </div>
                    <div class="overlay"></div>
                </div>
            </div>
        </section>
        <!--Page Title Ends-->
		<!--course-single start-->
        <section class="course-single">
            <div class="container">
                <div class="row clearfix">
                    <div class="column col-md-4 col-sm-12 col-xs-12">
                        <div class="course">
                            <div class="sec-title">
                                <h3>Admission Is Ongoing</h3>
                            </div>
                            <ul class="informations">
                                <li><span class="icon-left fa fa-calendar"></span>Resumption Date<span class="text-right">Sep 4, 2023</span>
                                </li>
                                <li><span class="icon-left fa fa-birthday-cake"></span>Years Old<span class="text-right">03 - 15 Years</span>
                                </li>
                                <li><span class="icon-left fa fa-anchor"></span>Limited Entry<span class="text-right">200 slots</span>
                                </li>
                                <li><span class="icon-left fa fa-clock-o"></span>Durations<span class="text-right">9AM - 3PM</span>
                                </li>
                                <li><span class="icon-left fa fa-user"></span>Teaching Staff<span class="text-right">20 Teachers</span>
                                </li>
                            </ul>
                            <ul class="link_btn text-center">
                                <li><a href="{{route('site.admission')}}" class="thm-btn">Enroll now</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="column col-md-8 col-sm-12 col-xs-12">
                        <div class="outer-box">
                            <div class="img-box"><img src="{{asset('storage/curriculum/'.$curriculum->image)}}" alt="">
                            </div>
                            <div class="content-box">
                                <div class="sec-title">
                                    <h2>{{$curriculum->name}}</h2>
                                </div>
                                <div class="text">
                                    <p>{!!nl2br(substr(strip_tags($curriculum->description), 0, 800))!!}</p>
                                </div>

                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--course-single end-->
	

@endsection
