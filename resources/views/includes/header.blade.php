
<!-- Header --> 
@php
 $abouts = \App\Models\About::where('deleted', 0)->get();
 $services = \App\Models\Service::where('deleted', 0)->get();
$uploads = \App\Models\Upload::where('deleted', 0)->get();
$setting = \App\Models\Setting::find(1);
@endphp

@include('includes.nav')


 		