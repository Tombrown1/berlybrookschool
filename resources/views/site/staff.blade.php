@extends('layouts.web')
@section('pageTitle', 'Staff')
@section('content')

     <!--Page Title-->
        <section class="page-title" style="background-image: url({{asset('storage/'.$about->banner)}})">
            <div class="container">
                <div class="row clearfix">
                    <div class="col-md-6 col-sm-6 col-xs-12 pull-left">
                        <h1>Our Staff</h1>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12 pull-right text-right path"><a href="{{url('/')}}">Home</a>&ensp;>&ensp;<a href="#">Our Teachers</a>
                    </div>
                    <div class="overlay"></div>
                </div>
            </div>
        </section>
        <!--Page Title Ends-->

        <!--team section-->
        <section class="our-team style-two">
            <div class="container">
                <div class="sec-title text-center">
                    <h2>Our Staffs</h2>
                    <p>Cupidatat non proident sunt culpa qui officia deserunt mollit anim idest laborum </p>
                </div>
                <div class="content-box">
                    <div class="row">
                        <div class="item-list">
                            @foreach($staffs as $staff)
                                <div class="column col-md-3 col-sm-6">
                                <div class="single-team">
                                    <div class="img-holder">
                                        <img src="{{asset('storage/staff/'.$staff->image)}}" alt="Awesome Image" />
                                        <div class="overlay">
                                            <div class="inner">
                                                <ul class="social">
                                                    <li><a href="{{route('staff.profile', ['slug' => $staff->slug])}}"><i class="fa fa-link"></i></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="content-holder">
                                        <h3><a href="{{route('staff.profile', ['slug' => $staff->slug])}}">{{$staff->fname}}</a></h3>
                                        <p>{{$staff->position}}</p>
                                        <ul class="social">
                                            <li><a href="#"><i class="fa fa-twitter"></i></a>
                                            </li>
                                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                                            </li>
                                            <li><a href="#"><i class="fa fa-facebook"></i></a>
                                            </li>
                                            <li><a href="#"><i class="fa fa-skype"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            
                            @endforeach
                           

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--team section end-->

@endsection