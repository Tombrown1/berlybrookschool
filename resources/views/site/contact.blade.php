@extends('layouts.web')
@section('pageTitle', 'Contact')
@section('content')



  <!--Page Title-->
        <section class="page-title" style="background-image: url({{asset('storage/'.$about->banner)}});">
            <div class="container">               
                <div class="row clearfix">
                    <div class="col-md-6 col-sm-6 col-xs-12 pull-left">
                        <h1>Contact Us</h1>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12 pull-right text-right path"><a href="{{url('/')}}">Home</a>&ensp;>&ensp;<a href="#">Contact Us</a>
                    </div>
                    <div class="overlay"></div>
                </div>
            </div>
        </section>
        <!--Page Title Ends-->
		<!--contact-address start-->
        <section class="contact-address">
            <div class="container">
                <div class="inner-box">
                    <div class="item-list">
                        <div class="row">
                            <div class="item col-md-4 col-sm-6 col-xs-12">
                                <div class="border">
                                    <div class="icon-box">
                                        <i class="icon fa fa-map-marker"></i>
                                    </div>
                                </div>
                                <h3>Address</h3>
                                <p>{{$about->address}}</p>
                            </div>
                            <div class="item col-md-4 col-sm-6 col-xs-12">
                                <div class="border">
                                    <div class="icon-box">
                                        <i class="icon fa fa-phone"></i>
                                    </div>
                                </div>
                                <h3>Phone</h3>
                                <p>{{$about->phone}}
                            </div>
                            <div class="item col-md-4 col-sm-6 col-xs-12">
                                <div class="border">
                                    <div class="icon-box">
                                        <i class="icon fa fa-envelope"></i>
                                    </div>
                                </div>
                                <h3>Email</h3>
                                <p>{{$about->email}}</p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
		<!--contact-address end-->
		<!--contact_details start-->
        <section class="contact_details sec-padd">
            <div class="container">
                <div class="home-google-map">
                    <div class="google-map" id="contact-google-map" data-map-lat="41.258553" data-map-lng="-96.010526" data-icon-path="images/resources/map.png" data-map-title="Chester" data-map-zoom="10">
                    </div>
                </div>
            </div>
        </section>
		<!--contact_details end-->

		<!--contact_us start-->
        <section class="contact_us">
            <div class="container">
                <div class="sec-title text-center">
                    <h2>Get In <span>Touch</span> With Us</h2>
                    <p>and anticipate our swift response!</p>
                </div>
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
                <div class="default-form-area">
                <!-- <form id="contact-form" name="contact_form" class="default-form" action="{{route('send.contact')}}" method="post"> -->
                <form name="contact_form" class="default-form" action="{{route('send.contact')}}" method="post">
                        @csrf
                        <div class="row clearfix">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="form-group style-two">
                                    <input type="text" name="name" class="form-control" value="" placeholder="Full Name" required="">
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="form-group style-two">
                                    <input type="email" name="email" class="form-control required email" value="" placeholder="Email" required="">
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="form-group style-two">
                                    <input type="text" name="phone" class="form-control" value="" placeholder="Phone">
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="form-group style-two">
                                    <input type="text" name="subject" class="form-control" value="" placeholder="Subject">
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="form-group style-two">
                                    <textarea name="message" class="form-control textarea required" placeholder="Your Message"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="contact-section-btn text-center">
                            <div class="form-group style-two">
                                <!-- <input id="form_botcheck" name="form_botcheck" class="form-control" type="hidden" value=""> -->
                                <button class="thm-btn thm-color" type="submit" data-loading-text="Please wait...">send message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <!--contact_us end-->
@endsection