@php
 $abouts = \App\Models\About::where('deleted', 0)->get(); 
 $setting = \App\Models\Setting::find(1);
 $gallerys = \App\Models\Gallery::where('deleted', 0)->get();

@endphp

 <!--footer start-->
        <footer class="footer bg-style">
            <div class="container">
                <div class="footer-upper">

                    <div class="row">
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="footer-widget about-widget">
                                <a href="{{url('/')}}">
                                    <img src="{{asset('frontend/images/berly_logo.jpg')}}" class="img-rounded" width="80" height="80" alt="Awesome Image" />
                                </a>
                            
                                <p>{!! nl2br(substr(strip_tags($about->about), 0, 92)) !!}</p>

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
                        <div class="col-md-2 col-sm-6 col-xs-12">
                            <div class="footer-widget quick-links">
                                <h3 class="title">Quick Link</h3>
                                <ul>
                                    <li><a href="{{route('about')}}">About us</a>
                                    </li>
                                    <li><a href="{{route('site.admission')}}">Admission</a>
                                    </li>
                                    <li><a href="#">Teacher & Staff</a>
                                    </li>
                                    <li><a href="{{route('contact')}}">Contact us</a>
                                    </li>
                                    <li><a href="#">Privacy policy </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="footer-widget opening-hour">
                                <h3 class="title">Opening Hours</h3>


                                <ul class="day-time">
                                    <li>Mon-Wed<span>08:00-18:00 </span>
                                    </li>
                                    <li>Thr-Fri<span> 08:00-18:00</span>
                                    </li>
                                    <li>Saturday<span>Closed</span>
                                    </li>
                                    <li>Sunday<span>Closed</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="footer-widget contact">
                                <h3 class="title">Get in Touch</h3>

                                <div class="widget-content">
                                    <p>Berly Brooks Premier School...
                                        <br>Uncovering the treasure in every child</p>
                                    <ul class="contact-info">
                                        <li><span class="icon fa fa-home"></span>{{$about->address}}</li>
                                        <li><span class="icon fa fa-phone"></span>{{$about->phone}}</li>
                                        <li><span class="icon fa fa-envelope"></span>{{$about->email}}</li>
                                    </ul>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
               <div class="Instagram">
                    <div class="container">
                        <div class="sec-title">
                            <h3>Gallery</h3>
                        </div>
                        <div class="Instagram-carousel owl-carousel owl-theme">
                            @foreach($gallerys as $gallery)
                            <div class="item">
                                <figure class="image-box">
                                    <img src="{{asset('storage/'.$gallery->file_path)}}"  alt="Awesome Image">
                                </figure>

                            </div>
                            @endforeach
                            <!-- <div class="item">
                                <figure class="image-box">
                                    <img src="images/footer/2.png" alt="Awesome Image">
                                </figure>

                            </div>
                            <div class="item">
                                <figure class="image-box">
                                    <img src="images/footer/3.png" alt="Awesome Image">
                                </figure>

                            </div>
                            <div class="item">
                                <figure class="image-box">
                                    <img src="images/footer/4.png" alt="Awesome Image">
                                </figure>

                            </div>
                            <div class="item">
                                <figure class="image-box">
                                    <img src="images/footer/5.png" alt="Awesome Image">
                                </figure>

                            </div>
                            <div class="item">
                                <figure class="image-box">
                                    <img src="images/footer/6.png" alt="Awesome Image">
                                </figure>

                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
            <!--Footer Bottom-->
            <div class="footer-bottom text-center">
                <div class="container">
                    <div class="copyright-text">Copyright © {{$about->sitename}} 2023. All Rights Reserved</div>
                </div>
            </div>
                
        </footer>
        <!--footer end-->