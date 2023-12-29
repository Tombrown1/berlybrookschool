<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from wp.hostlin.com/kindergarten/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 16 Aug 2023 02:33:55 GMT -->
<head>
    <meta charset="UTF-8">
    <title>@yield('pageTitle') - Berly Brooks Premier Scchol</title>
    <!-- <title>Kindergarten || Responsive HTML 5 Template</title> -->

    <!-- mobile responsive meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">


    <link rel="stylesheet" href="{{asset('frontend/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('frontend/css/responsive.css')}}">
    <link rel="stylesheet" href="{{asset('frontend/fonts/flaticon.css')}}"/>
    <!--favicon-->
    <link rel="apple-touch-icon" sizes="180x180" href="{{asset('frontend/images/logo/apple-touch-icon.png')}}">
    <link rel="icon" type="image/png" href="{{asset('frontend/images/logo/favicon-32x32.png')}}" sizes="32x32">
    <link rel="icon" type="image/png" href="{{asset('frontend/images/logo/favicon-16x16.png')}}" sizes="16x16">




</head>

<body>
    <div class="boxed_wrapper">

        
       
        @include('includes.header')
       
		
		@yield('content')

		 <!--footer start-->
        @include('includes.footer')
        <!--footer end-->



        <!-- Scroll Top Button -->
        <button class="scroll-top tran3s color2_bg">
            <span class="fa fa-angle-up"></span>
        </button>
        <!-- pre loader  -->
        <!-- <div class="preloader"></div> -->

        <!-- jQuery js -->
        <script src="{{asset('frontend/js/jquery.js')}}"></script>
        <!-- bootstrap js -->
        <script src="{{asset('frontend/js/bootstrap.min.js')}}"></script>
        <!-- jQuery ui js -->

       @include('includes.javascripts')
      

      
    </div>

</body>


<!-- Mirrored from wp.hostlin.com/kindergarten/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 16 Aug 2023 02:38:43 GMT -->
</html>