@extends('layouts.web')
@section('pageTitle', 'Admission')
@section('content')

     <!--Page Title-->
        <section class="page-title" style="background-image: url({{asset('storage/'.$about->banner)}});">
            <div class="container">
                <div class="row clearfix">
                    <div class="col-md-6 col-sm-6 col-xs-12 pull-left">
                        <h1>Our Curriculum</h1>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12 pull-right text-right path"><a href="{{url('/')}}">Home</a>&ensp;>&ensp;<a href="#">Our Curriculum</a>
                    </div>
                    <div class="overlay"></div>
                </div>
            </div>
        </section>
        <!--Page Title Ends-->
		
		<!--our-courses start-->
        <section class="our-courses style-two">
            <div class="container">
                <div class="sec-title text-center">
                    <h2>Our Curriculum</h2>
                    <p class="text-justify mb-2">Beryl Brooks Premier School offers teaching and learning within the framework of the <span class="badge bg-primary">British National Curriculum </span>, a hybrid  curriculum designed to develop each child in learning and in character. <br>
                   It is developmentally appropriate to provide quality learning experience.
                        A thematic approach that focuses on different aspects of a theme. 
                        It is designed with differentiated instruction to accommodate each child's learning styles and interests. <br><br>
                   A blended learning methodology that ensures recent and up-to-date human and information technology is applied to place our pupils on a global stage.
                    Hands-on approach to understand Concepts. <br>
                 
                   The curriculum provides growth mindset and sustains a thirst for knowledge and love for learning. It contributes enormously to pupils’ academic achievement through indoor and outdoor day-to-day learning that takes place, these include new learning, applying learning and consolidating learning. A well rounded curriculum takes the lead in education.

                    </p>

                </div>
                <div class="item-box">
                    <div class="row gx-2">
                        <div class="item-list">
                            @foreach($curriculums as $curriculum)
                            <div class="column col-md-6 col-sm-6 col-xs-12">
                                <div class="item">
                                    <figure class="image-box">
                                        <img src="{{asset('storage/curriculum/'.$curriculum->image)}}" class="img-thumbnail" width="200px" alt="" />
                                    </figure>
                                    <div class="content">
                                        <div class="price">
                                            <h4><span>{{$curriculum->age_range}}</span></h4>
                                        </div>
                                        <div class="text">
                                            <h3><a href="{{route('curriculum.detail', ['slug' => $curriculum->slug])}}">{{$curriculum->name}}</a></h3>
                                         
                                            <p>{!! nl2br(substr(strip_tags($curriculum->description), 0, 100))!!}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                           
                        </div>
                    </div>
                </div>
                <!-- <ul class="page_pagination">
                    <li><a href="#" class="tran3s"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
                    </li>
                    <li><a href="#" class="active tran3s">1</a>
                    </li>
                    <li><a href="#" class="tran3s">2</a>
                    </li>
                    <li><a href="#" class="tran3s">3</a>
                    </li>
                    <li><a href="#" class="tran3s"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
                    </li>
                </ul> -->
            </div>
        </section>
        <!--our-courses end-->

@endsection