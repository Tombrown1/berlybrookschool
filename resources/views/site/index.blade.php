@extends('layouts.web')
@section('pageTitle', 'Home')
@section('content')


		@include('includes.slider')
		
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

		<!--about start-->
        <section class="about" style="background-image:url({{asset('frontend/images/background/about-bg.jpg')}});">
            <div class="container">
                <div class="item-box">
                    <div class="row">
                        <div class="single-column col-md-6 col-sm-12">
                            <div class="wow fadeIn" data-wow-duration="2s" data-wow-delay="0.5s" data-wow-offset="0" style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
                                <div class="post-content">
                                    <div class="sec-title">
                                        <h2>Director Welcome Address</h2>
                                    </div>
                                    <div class="text">
                                        <p>{!! nl2br(substr(strip_tags($staff->description), 0, )) !!}</p>
                                    </div>
                                    <!-- <ul class="list">
                                        <li>Totam rem aperiam eaque ipsa quae ab illo</li>
                                        <li>voluptatem accusantium doloremque </li>
                                        <li>officia deserunt mollit anim idest laborum</li>
                                    </ul> -->
                                    <ul class="link_btn">
                                        <li><a href="{{route('about')}}" class="thm-btn">About Us</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single-column about_carousel col-md-6 col-sm-12">
                            <div class="about-carousel">
                                @foreach($directors as $director)
                                <div class="single-item">
                                    <div class="img-holder">
                                        <img src="{{asset('storage/'.$director->image)}}" alt="Awesome Image" />
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--about end-->

		<!--feature start-->
        <section class="latest-news">
            <div class="container">
                <div class="sec-title text-center">
                    <h2>Our Motto</h2>
                   <h4> <i><quote>...Uncovering the treasure in every child</quote></i></h4>
                </div>
                <div class="content-box">
                    <div class="row">
                        <div class="item-list">
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <div class="item">                                    
                                    <h2><a href="#">Our Vision</a></h2>

                                    <p>To be a world class school known for educational excellence while raising sound and God fearing children who will be the pride of the society</p>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <div class="item">
                                    
                                    <h2><a href="#">Our Mission</a></h2>

                                    <p>
										Beryl brooks is committed to providing innovative learning experiences. We use recent and up-to-date human and information technology through an effective curriculum; this helps the child to fully harness his or her natural learning part for early success 
											We provide activities that support children to develop the strength and skills necessary for self construction in all areas of child development in a secured  nurturing environment.  
									</p>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <div class="item">                                    
                                    <h2><a href="#">Our Standard</a></h2>

                                    <p>The school maintains a very high standard which competes favorably with reputable schools globally.
										The school board constantly monitors the performance of staff and pupils to ensure that expected standards are maintained.
									</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--feature end-->

		<!--our-service start-->
        <section class="our-service">
            <div class="container">
                <div class="sec-title text-center">
                    <h2>What Makes Us Unique</h2>
                    <p></p>
                </div>

                <div class="item-box">
                    <div class="row">

                        <div class="column col-md-4 col-sm-12">
                            <div class="item right">
                                <div class="icon"><span class="fa fa-graduation-cap"></span>
                                </div>
                                <h4><a href="#">Environment & Infrastructure</a></h4>
                                <p>Standard, unique and distinct well maintained infrastructure conducive for learning.</p>
                            </div>
                            <div class="item right">
                                <div class="icon"><span class="fa fa-heart"></span>
                                </div>
                                <h4><a href="#">State of the Art Facilities</a></h4>
                                <p>Modern and well equipped Science, Music and Home Economics laboratory with state of the art facilities.</p>
                            </div>
                            <div class="item right">
                                <div class="icon"><span class="fa fa-cutlery"></span>
                                </div>
                                <h4><a href="#">Functional Library</a></h4>
                                <p>Functional library stocked with current local and foreign books.</p>
                            </div>
                        </div>

                        <div class="column col-md-4 col-sm-12">
                            <div class="wow fadeIn" data-wow-duration="2s" data-wow-delay="0.5s" data-wow-offset="0" style="visibility: visible; animation-duration: 2s; animation-delay: 0.5s; animation-name: fadeIn;">
                                <figure class="img-box">
                                    <a href="#"><img src="{{asset('frontend/images/core_value_2.jpg')}}" alt="">
                                    </a>
                                </figure>
                            </div>
                        </div>

                        <div class="column col-md-4 col-sm-12">
                            <div class="item left">
                                <div class="icon"><span class="fa fa-car"></span>
                                </div>
                                <h4><a href="#">Student-friendly Atmosphere</a></h4>
                                <p>We have a conducive environment that encourages, inspires our students to excel in their studies. </p>
                            </div>
                            <div class="item left">
                                <div class="icon"><span class="fa fa-leaf"></span>
                                </div>
                                <h4><a href="#">Extracurricular Activities</a></h4>
                                <p>We focus not only on the core subjects but also value the idea that these activities can become someone's career one day</p>
                            </div>
                            <div class="item left">
                                <div class="icon"><span class="fa fa-shield"></span>
                                </div>
                                <h4><a href="#">Student Asssesment</a></h4>
                                <p>We evaluate and understand the requirements and areas to be focused on for each child</p>
                            </div>
							
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--our-service end-->

        <!--feature-two-->
        <section class="feature-two">

            <div class="feature-two-carousel">
                @foreach($gallerys as $gallery)
                    <div class="single-item">
                    <div class="image-holder">
                        <img class="img-thumbnail" src="{{asset('storage/'.$gallery->file_path)}}" width="70" alt="Awesome Image" />
                        <div class="overlay">
                            <div class="inner">

                                <ul class="social">
                                    <li><a href="{{asset('storage/'.$gallery->file_path)}}" data-fancybox-group="example-gallery" class="view lightbox-image"><i class="icon fa fa-search"></i></a>
                                    </li>
                                    <li><a href="{{route('web.gallery')}}"><i class="fa fa-link"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
                @endforeach
                
            </div>

        </section>
        <!--feature-two end-->

        <!--call-to-action section-->
        <section class="call-to-action">
            <div class="container">
                <div class="overlay">
                    <div class="row">
                        <div class="col-md-9">
                            <h3>Apply Now for your Kids</h3>
                            <p>Admission into Beryl Brooks is simple</p>
                        </div>
                        <div class="col-md-3">
                            <ul class="link_btn">
                                <li><a href="{{route('site.admission')}}" class="thm-btn">Apply Now</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--call-to-action section end -->
		
		<!--founder section-->
        <section class="founder" style="background-image:url({{asset('frontend/images/background/founder.jpg')}});">
            <div class="container">
                <div class="overlay">
                    <div class="founder-carousel">

                        @foreach($testimonials as $testimonial)
                        <div class="item">
                            <figure class="icon-box">
                                <i class="icon fa" aria-hidden="true"><a href="#"><img src="{{asset('storage/'.$testimonial->image)}}" class="img-thumbnail img-rounded" alt="Awesome Image"></a> </i>
                            </figure>
                           
                            <div class="content-holder">
                                <h4>{{$testimonial->name}} - <span>{{$testimonial->post}}</span></h4>
                                <p>{{$testimonial->description}} </p>
                            </div>
                        </div>
                        @endforeach
                       
                    </div>
                </div>
            </div>
        </section>
        <!--founder section end-->

       
        <!--Fact Counter-->
        <section class="fact-counter">
            <div class="container">
                <div class="row">
                    <div class="counter-outer">
                        <!--Column-->
                        <article class="column counter-column col-md-3 col-sm-6 col-xs-6 wow fadeIn" data-wow-duration="300ms">
                            <div class="item">
                                <div class="inner-box">
                                    <div class="icon-box">
                                        <i class="icon flaticon-people-1"></i>
                                    </div>
                                    <div class="count-outer">
                                        <span class="count-text" data-speed="3000" data-stop="35">0</span>
                                        <p>Teacher & Staffs</p>
                                    </div>
                                </div>
                            </div>
                        </article>
                        <!--Column-->
                        <article class="column counter-column col-md-3 col-sm-6 col-xs-6 wow fadeIn" data-wow-duration="600ms">
                            <div class="item">
                                <div class="inner-box">
                                    <div class="icon-box">
                                        <i class="icon flaticon-calendar"></i>
                                    </div>
                                    <div class="count-outer">
                                        <span class="count-text" data-speed="3000" data-stop="75">0</span>
                                        <p>Events Held</p>
                                    </div>
                                </div>
                            </div>
                        </article>
                        <!--Column-->
                        <article class="column counter-column col-md-3 col-sm-6 col-xs-6 wow fadeIn" data-wow-duration="900ms">
                            <div class="item">
                                <div class="inner-box">
                                    <div class="icon-box">
                                        <i class="icon flaticon-parents"></i>
                                    </div>
                                    <div class="count-outer">
                                        <span class="count-text" data-speed="3000" data-stop="150">0</span>
                                        <p>Happy Parents</p>
                                    </div>
                                </div>
                            </div>
                        </article>
                        <!--Column-->
                        <article class="column counter-column col-md-3 col-sm-6 col-xs-6 wow fadeIn" data-wow-duration="900ms">
                            <div class="item">
                                <div class="inner-box">
                                    <div class="icon-box">
                                        <i class="icon flaticon-science"></i>
                                    </div>
                                    <div class="count-outer">
                                        <span class="count-text" data-speed="3000" data-stop="200">0</span>
                                        <p>Labs Project</p>
                                    </div>
                                </div>
                            </div>
                        </article>
                    </div>
                </div>
            </div>

        </section>
         <!--Fact Counter end-->
		
		 <!--latest-news start-->
        <!-- <section class="latest-news">
            <div class="container">
                <div class="sec-title text-center">
                    <h2>Recent News</h2>
                    <p>Cupidatat non proident sunt culpa qui officia deserunt mollit anim idest laborum </p>
                </div>
                <div class="content-box">
                    <div class="row">
                        <div class="item-list">
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <div class="item">
                                    <figure class="image-box">
                                        <img src="images/news/1.png" alt="Awesome Image">
                                        <div class="overlay">
                                            <div class="inner">
                                                <ul class="social">
                                                    <li><a href="blog-details.html"><i class="fa fa-link"></i></a>
                                                    </li>
                                                </ul>

                                            </div>
                                        </div>
                                    </figure>
                                    <ul class="admin-comments">
                                        <li><i class="icon flaticon-black"> Jone Doe  </i>
                                        </li>
                                        <li><i class="icon flaticon-comments">4 Comments </i>
                                        </li>
                                    </ul>
                                    <h4><a href="blog-details.html">Uncovers Ancient Ashkenaz.</a></h4>

                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <div class="item">
                                    <figure class="image-box">
                                        <img src="images/news/2.png" alt="Awesome Image">
                                        <div class="overlay">
                                            <div class="inner">
                                                <ul class="social">
                                                    <li><a href="blog-details.html"><i class="fa fa-link"></i></a>
                                                    </li>

                                                </ul>

                                            </div>
                                        </div>
                                    </figure>
                                    <ul class="admin-comments">
                                        <li><i class="icon flaticon-black">  Jone Doe  </i>
                                        </li>
                                        <li><i class="icon flaticon-comments">4 Comments </i>
                                        </li>
                                    </ul>
                                    <h4><a href="blog-details.html">Uncovers Ancient Ashkenaz.</a></h4>

                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <div class="item">
                                    <figure class="image-box">
                                        <img src="images/news/3.png" alt="Awesome Image">
                                        <div class="overlay">
                                            <div class="inner">
                                                <ul class="social">
                                                    <li><a href="blog-details.html"><i class="fa fa-link"></i></a>
                                                    </li>

                                                </ul>

                                            </div>
                                        </div>
                                    </figure>
                                    <ul class="admin-comments">
                                        <li><i class="icon flaticon-black">  Jone Doe  </i>
                                        </li>
                                        <li><i class="icon flaticon-comments">4 Comments </i>
                                        </li>
                                    </ul>
                                    <h4><a href="blog-details.html">Uncovers Ancient Ashkenaz.</a></h4>

                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section> -->
         <!--latest-news end-->

@endsection