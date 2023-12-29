@extends('layouts.web')
@section('pageTitle', 'Staff Profile')
@section('content')

     <!--Page Title-->
        <section class="page-title" style="background-image: url({{asset('storage/'.$about->banner)}});">
            <div class="container">
                <div class="row clearfix">
                    <div class="col-md-6 col-sm-6 col-xs-12 pull-left">
                        <h1>{{$staff->lname}} Profile</h1>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12 pull-right text-right path"><a href="{{url('/')}}">Home</a>&ensp;>&ensp;<a href="{{route('staff')}}">Staff Profile</a>
                    </div>
                    <div class="overlay"></div>
                </div>
            </div>
        </section>
        <!--Page Title Ends-->
		
		 <!--team-profile start-->
        <section class="team-profile">
            <div class="container">
                <div class="item-box">
                    <div class="row">
                        <div class="col-md-4 col-sm-6">
                            <div class="item">
                                <figure class="image-box">
                                    <img src="{{asset('storage/staff/'.$staff->image)}}" alt="" />
                                </figure>
                            </div>
                        </div>
                        <div class="col-md-8 col-sm-6">
                            <div class="item">
                                <div class="content">
                                    <h1>{{$staff->fname}} {{$staff->lname}}</h1>
                                    <p>{{$staff->position}}</p>

                                    <div class="text">
                                        <p>{!! nl2br(substr(strip_tags($staff->description), 0))!!}</p>
                                    </div>
                                    <h4>Phone: <span>{{$staff->phone}}</span></h4>
                                    <h4>Email: <span>{{$staff->email}}</span></h4>
                                    <ul class="social">
                                        <li><a href="#"><i class="fa fa-facebook"></i></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-pinterest-p"></i></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-vimeo"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- <div class="details">
                    <div class="text">
                        <p>Vinteger eu libero rutrum, imperdiet arcueniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem. accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi </p>
                    </div>
                    <div class="text">
                        <p>Architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet consectetur adipisci velit.</p>
                    </div>
                    <div class="text">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p>
                    </div>
                </div> -->
            </div>

        </section>
         <!--team-profile end-->

@endsection