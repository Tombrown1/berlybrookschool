<div class="header-top">
            <div class="container clearfix">
                <!--Top Left-->
                <div class="top-left pull-left">
                    <ul class="links-nav clearfix">
                        <li><a href="#"><span class="fa fa-phone"></span> {{$about->phone}} </a>
                        </li>
                        <li><a href="#"><span class="fa fa-envelope"></span>{{$about->email}}</a>
                        </li>
                        <li><a href="#"><span class="fa fa-envelope"></span>No 19 Nwakohu Street, Sunshine Estate, Rumuodara. PHC.</a>
                        </li>
                    </ul>
                </div>

                <!--Top Right-->
                <div class="top-right pull-right">
                    <ul class="social-links clearfix">
                        <li><a href="#"><span class="fa fa-facebook-f"></span></a>
                        </li>
                        <li><a href="#"><span class="fa fa-twitter"></span></a>
                        </li>
                        <li><a href="#"><span class="fa fa-linkedin"></span></a>
                        </li>
                        <li><a href="#"><span class="fa fa-instagram"></span></a>
                        </li>
                        <li><a href="#"><span class="fa fa-pinterest-p"></span></a>
                        </li>

                    </ul>

                </div>
            </div>
        </div>
        <!-- Header Top End -->

        <section class="mainmenu-area stricky">
            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        <div class="main-logo">
                            <a href="{{url('/')}}"><img src="{{asset('storage/'.$about->logo)}}" class="img-rounded" width="61" height="61" alt=""></a>
                        </div>
                    </div>
                    <div class="col-md-5 menu-column">
                        <nav class="main-menu">
                            <div class="navbar-header">     
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div class="navbar-collapse collapse clearfix">
                                <ul class="navigation clearfix">

                                    <li class="current"><a href="{{url('/')}}">Home</a>
                                    </li>
                                    <li><a href="{{route('about')}}">About</a>
                                    </li>
                                    <li><a href="{{route('site.admission')}}">Admission</a>
                                    </li>
                                    <!-- <li class="dropdown"><a href="{{route('site.admission')}}">Admission</a>
                                        <ul>
                                            <li><a href="{{route('site.admission')}}">Admission</a>
                                            </li>
                                            <li><a href="#">FAQ</a>
                                            </li>
                                            
                                        </ul>
                                    </li> -->
                                    <li class="dropdown"><a href="#">Academics</a>
                                        <ul>
											<li><a href="{{route('site.curriculum')}}">Curriculum</a>
                                            </li>
                                            <li><a href="{{route('web.gallery')}}">Gallery</a>
                                            </li>
                                            <li><a href="{{route('staff')}}">Staff</a>
                                            </li>                                            
                                           
                                        </ul>
                                    </li>

                                    
                                    <li><a href="{{route('contact')}}">Contact</a>
                                    </li>
                                </ul>

                                <ul class="mobile-menu clearfix">

                                    <li class="current"><a href="{{url('/')}}">Home</a>
                                </li>
                                <li><a href="{{route('about')}}">About</a>
                                </li>
                                <li><a href="{{route('site.admission')}}">Admission</a>
                                </li>
                                <!-- <li class="dropdown"><a href="#">Admission</a>
                                    <ul>
                                        <li><a href="{{route('site.admission')}}">Admission</a>
                                        </li>
                                        <li><a href="#">FAQ</a>
                                        </li>
                                    </ul>
                                </li> -->
                                <li class="dropdown"><a href="#">Academics</a>
                                    <ul>
                                        <li><a href="{{route('site.curriculum')}}">Curriculum</a>
                                        </li>
                                        <li><a href="{{route('web.gallery')}}">Gallery</a>
                                        </li>
                                        <li><a href="{{route('staff')}}">Staff</a>
                                        </li>                                            
                                        
                                    </ul>
                                </li>

                                
                                <li><a href="{{route('contact')}}">Contact</a>
                                </li>

                                </ul>
                            </div>
                        </nav>
                    </div>
                    <div class="col-md-2">
                        <!-- <div class="right-area pull-right">
                            <div class="top-search-box">
                                <button><i class="fa fa-search"></i>
                                </button>
                                <ul class="search-box">
                                    <li>
                                        <form action="#">
                                            <input type="text" placeholder="Search for something...">
                                            <button type="submit"><i class="fa fa-search"></i>
                                            </button>
                                        </form>
                                    </li>
                                </ul>
                            </div>
                            <div class="cart">
                                <a href="#"><span class="fa fa-shopping-bag"></span></a>
                            </div>
                        </div> -->
                    </div>
                </div>
                
            </div>
        </section>