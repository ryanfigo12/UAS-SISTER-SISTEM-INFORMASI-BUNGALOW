<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <meta name="description" content="">
        <title>Seabreeze Bungalow Lovina</title>

        <link rel="icon" type="image/png" href="{{ asset('uploads/'.$global_setting_data->favicon) }}">

        @include('front.layout.styles')

        @include('front.layout.scripts')


        <link href="https://fonts.googleapis.com/css2?family=Karla:wght@400;500&display=swap" rel="stylesheet">

        <!-- Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id={{ $global_setting_data->analytic_id }}"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments);}
            gtag('js', new Date());
            gtag('config', '{{ $global_setting_data->analytic_id }}');
        </script>

        <style>
            .main-nav nav .navbar-nav .nav-item a:hover,
            .main-nav nav .navbar-nav .nav-item:hover a,
            .slide-carousel.owl-carousel .owl-nav .owl-prev:hover,
            .slide-carousel.owl-carousel .owl-nav .owl-next:hover,
            .home-feature .inner .icon svg,
            .home-rooms .inner .text .button a,
            .blog-item .inner .text .button a,
            .room-detail-carousel.owl-carousel .owl-nav .owl-prev:hover,
            .room-detail-carousel.owl-carousel .owl-nav .owl-next:hover {
                color: {{ $global_setting_data->theme_color_1 }};
            }

            .main-nav nav .navbar-nav .nav-item .dropdown-menu li a:hover,
            .primary-color {
                color: {{ $global_setting_data->theme_color_1 }}!important;
            }

            .testimonial-carousel .owl-dots .owl-dot,
            .footer ul.social li a,
            .footer input[type="submit"],
            .scroll-top,
            .room-detail .right .widget .book-now {
                background-color: {{ $global_setting_data->theme_color_1 }};
            }

            .slider .text .button a,
            .search-section button[type="submit"],
            .home-rooms .big-button a,
            .footer,
            .bg-website {
                background-color: {{ $global_setting_data->theme_color_1 }}!important;
            }

            .slider .text .button a,
            .slide-carousel.owl-carousel .owl-nav .owl-prev:hover,
            .slide-carousel.owl-carousel .owl-nav .owl-next:hover,
            .search-section button[type="submit"],
            .room-detail-carousel.owl-carousel .owl-nav .owl-prev:hover,
            .room-detail-carousel.owl-carousel .owl-nav .owl-next:hover,
            .room-detail .amenity .item {
                border-color: {{ $global_setting_data->theme_color_1 }}!important;
            }

            .home-feature .inner .icon svg,
            .home-rooms .inner .text .button a,
            .blog-item .inner .text .button a,
            .room-detail .amenity .item,
            .cart .table-cart tr th {
                background-color: {{ $global_setting_data->theme_color_2 }}!important;
            }
        </style>

    </head>
    <body>

        <div class="top" style="background-color: {{ $global_setting_data->theme_color_1 }}!important;color:white;">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 left-side">
                        <ul>

                            @if($global_setting_data->top_bar_phone != '')
                            <li class="phone-text">{{ $global_setting_data->top_bar_phone }}</li>
                            @endif

                            @if($global_setting_data->top_bar_email != '')
                            <li class="email-text">{{ $global_setting_data->top_bar_email }}</li>
                            @endif

                        </ul>
                    </div>
                    <div class="col-md-6 right-side">
                        <ul class="right">

                            @if($global_page_data->cart_status == 1)
                            <li class="menu"><a href="{{ route('cart') }}" style="color:white !important;">{{ $global_page_data->cart_heading }} @if(session()->has('cart_room_id'))<sup>{{ count(session()->get('cart_room_id')) }}</sup>@endif</a></li>
                            @endif

                            @if($global_page_data->checkout_status == 1)
                            <li class="menu"><a href="{{ route('checkout') }}" style="color:white !important;">{{ $global_page_data->checkout_heading }}</a></li>
                            @endif


                            @if(!Auth::guard('customer')->check())

                                @if($global_page_data->signup_status == 1)
                                <li class="menu"><a href="{{ route('customer_signup') }}" style="color:white !important;">{{ $global_page_data->signup_heading }}</a></li>
                                @endif

                                @if($global_page_data->signin_status == 1)
                                <li class="menu"><a href="{{ route('customer_login') }}" style="color:white !important;">{{ $global_page_data->signin_heading }}</a></li>
                                @endif

                            @else

                                <li class="menu"><a href="{{ route('transaksi') }}" style="color:white !important;">Transaction</a></li>
                                <li class="menu"><a href="{{ route('customer_home') }}" style="color:white !important;">Dashboard</a></li>

                            @endif

                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <div class="navbar-area" id="stickymenu">

            <!-- Menu For Mobile Device -->
            <div class="mobile-nav">
                <a href="index.html" class="logo">
                    <img src="{{ asset('uploads/'.$global_setting_data->logo) }}" alt="">
                </a>
            </div>

            <!-- Menu For Desktop Device -->
            <div class="main-nav">
                <div class="container">
                    <nav class="navbar navbar-expand-md navbar-light">
                        <a class="navbar-brand" href="{{ route('home') }}">
                            <img src="{{ asset('uploads/'.$global_setting_data->logo) }}" alt="image" width="100" height="100">
                        </a>
                        <div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item">
                                    <a href="{{ route('home') }}" class="nav-link">Home</a>
                                </li>

                                @if($global_page_data->about_status == 1)
                                <li class="nav-item">
                                    <a href="{{ route('about') }}" class="nav-link">{{ $global_page_data->about_heading }}</a>
                                </li>
                                @endif

                                <li class="nav-item">
                                    <a href="javascript:void;" class="nav-link dropdown-toggle">Suite Room</a>
                                    <ul class="dropdown-menu">
                                        @foreach($global_room_data as $item)
                                        <li class="nav-item">
                                            <a href="{{ route('room_detail',$item->id) }}" class="nav-link">{{ $item->name }}</a>
                                        </li>
                                        @endforeach
                                    </ul>
                                </li>


                                @if($global_page_data->photo_gallery_status == 1 || $global_page_data->video_gallery_status == 1)
                                <li class="nav-item">
                                    <a href="javascript:void;" class="nav-link dropdown-toggle">Gallery</a>
                                    <ul class="dropdown-menu">

                                        @if($global_page_data->photo_gallery_status == 1)
                                        <li class="nav-item">
                                            <a href="{{ route('photo_gallery') }}" class="nav-link">{{ $global_page_data->photo_gallery_heading }}</a>
                                        </li>
                                        @endif

                                        @if($global_page_data->video_gallery_status == 1)
                                        <li class="nav-item">
                                            <a href="{{ route('video_gallery') }}" class="nav-link">{{ $global_page_data->video_gallery_heading }}</a>
                                        </li>
                                        @endif

                                    </ul>
                                </li>
                                @endif


                                @if($global_page_data->blog_status == 1)
                                <li class="nav-item">
                                    <a href="{{ route('blog') }}" class="nav-link">{{ $global_page_data->blog_heading }}</a>
                                </li>
                                @endif

                                @if($global_page_data->contact_status == 1)
                                <li class="nav-item">
                                    <a href="{{ route('contact') }}" class="nav-link">{{ $global_page_data->contact_heading }}</a>
                                </li>
                                @endif

                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>


        @yield('main_content')


        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <img src="{{ asset('uploads/logo.png') }}" alt="Image" width="150" height="100" style="margin-right: 10px;"/> 
                            <p> Seabreeze Bungalow Lovina is a beachfront accommodation with sea views in lovina </p>
                    </div>
                    <div class="col-md-3">
                        <div class="item">
                            <h2 class="heading">Site Links</h2>
                            <ul class="useful-links">

                                @if($global_page_data->photo_gallery_status == 1)
                                <li><a href="{{ route('photo_gallery') }}">{{ $global_page_data->photo_gallery_heading }}</a></li>
                                @endif

                                @if($global_page_data->video_gallery_status == 1)
                                <li><a href="{{ route('video_gallery') }}">{{ $global_page_data->video_gallery_heading }}</a></li>
                                @endif

                                @if($global_page_data->blog_status == 1)
                                <li><a href="{{ route('blog') }}">{{ $global_page_data->blog_heading }}</a></li>
                                @endif

                                @if($global_page_data->contact_status == 1)
                                <li><a href="{{ route('contact') }}">{{ $global_page_data->contact_heading }}</a></li>
                                @endif
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="item">
                            <h2 class="heading">Useful Links</h2>
                            <ul class="useful-links">
                                <li><a href="{{ route('home') }}">Home</a></li>

                                @if($global_page_data->terms_status == 1)
                                <li><a href="{{ route('terms') }}">{{ $global_page_data->terms_heading }}</a></li>
                                @endif

                                @if($global_page_data->privacy_status == 1)
                                <li><a href="{{ route('privacy') }}">{{ $global_page_data->privacy_heading }}</a></li>
                                @endif

                                @if($global_page_data->faq_status == 1)
                                <li><a href="{{ route('faq') }}">{{ $global_page_data->faq_heading }}</a></li>
                                @endif
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="item">
                            <h2 class="heading">Contact</h2>
                            <div class="list-item">
                                <div class="left">
                                    <i class="fas fa-map-marker-alt"></i>
                                </div>
                                <div class="right">
                                    {!! nl2br($global_setting_data->footer_address) !!}
                                </div>
                            </div>
                            <div class="list-item">
                                <div class="left">
                                    <i class="fas fa-phone-square-alt"></i>
                                </div>
                                <div class="right">
                                    {{ $global_setting_data->footer_phone }}
                                </div>
                            </div>
                            <div class="list-item">
                                <div class="left">
                                    <i class="fas fa-envelope"></i>
                                </div>
                                <div class="right">
                                    {{ $global_setting_data->footer_email }}
                                </div>
                            </div>
                            <ul class="social">

                                @if($global_setting_data->facebook != '')
                                <li><a href="{{ $global_setting_data->facebook }}" style="background-color: #000000 !important;"><i class="fab fa-facebook-f"></i></a></li>
                                @endif

                                @if($global_setting_data->twitter != '')
                                <li><a href="{{ $global_setting_data->twitter }}" style="background-color: #000000 !important;"><i class="fab fa-twitter"></i></a></li>
                                @endif

                                @if($global_setting_data->linkedin != '')
                                <li><a href="{{ $global_setting_data->linkedin }}" style="background-color: #000000 !important;"><i class="fab fa-instagram"></i></a></li>
                                @endif

                                @if($global_setting_data->pinterest != '')
                                <li><a href="{{ $global_setting_data->pinterest }}" style="background-color: #000000 !important;"><i class="fab fa-whatsapp"></i></a></li>
                                @endif

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="copyright">
            {{ $global_setting_data->copyright }}
        </div>

        <div class="scroll-top">
            <i class="fa fa-angle-up"></i>
        </div>

        @include('front.layout.scripts_footer')

        @if(session()->get('error'))
            <script>
                iziToast.error({
                    title: '',
                    position: 'topRight',
                    message: '{{ session()->get('error') }}',
                });
            </script>
        @endif

        @if(session()->get('success'))
            <script>
                iziToast.success({
                    title: '',
                    position: 'topRight',
                    message: '{{ session()->get('success') }}',
                });
            </script>
        @endif

   </body>
</html>
