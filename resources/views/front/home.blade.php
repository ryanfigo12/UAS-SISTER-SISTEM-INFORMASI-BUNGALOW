@extends('front.layout.app')

@section('main_content')

<div class="slider">
    <div class="slide-carousel owl-carousel">
        @foreach($slide_all as $item)
        <div class="item" style="background-image:url({{ asset('uploads/'.$item->photo) }});">
            <div class="bg"></div>
            <div class="text">
                <h2>{{ $item->heading }}</h2>
                <p>
                    {!! $item->text !!}
                </p>
                @if($item->button_text != '')
                <div class="button">
                    <a href="{{ $item->button_url }}">{{ $item->button_text }}</a>
                </div>
                @endif
            </div>
        </div>
        @endforeach
    </div>
</div>


<div class="search-section">
    <div class="container">
        <form action="{{ route('cart_submit') }}" method="post">
            @csrf
            <div class="inner">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="form-group">
                            <select name="room_id" class="form-select">
                                <option value="">Select Room</option>
                                @foreach($room_all as $item)
                                <option value="{{ $item->id }}">{{ $item->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <input type="text" name="checkin_checkout" class="form-control daterange1" placeholder="Checkin & Checkout">
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="form-group">
                            <input type="number" name="adult" value="1" class="form-control" min="1" max="30" placeholder="Adults">
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="form-group">
                            <input type="number" name="children" value="0" class="form-control" min="0" max="30" placeholder="Children">
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <button type="submit" class="btn btn-primary">Book Now</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>



@if($global_setting_data->home_feature_status == 'Show')
<div class="home-feature">
    <div class="container">
        <div class="row">

            @foreach($feature_all as $item)
            <div class="col-md-3">
                <div class="inner">
                    <div class="icon"><i class="{{ $item->icon }}"></i></div>
                    <div class="text">
                        <h2>{{ $item->heading }}</h2>
                        <p>
                            {!! $item->text !!}
                        </p>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
@endif

<div class="home-rooms">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="main-header">Favourite Rooms</h2>
            </div>
        </div>
        <div class="row text-center d-flex justify-content-center">
            @foreach($fav as $item)
            <div class="col-md-3 ">
                <div class="inner">
                    <div class="photo">
                        <img src="{{ asset('uploads/'.$item->room->featured_photo) }}" alt="">
                    </div>
                    <div class="text">
                        <h2><a href="{{ route('room_detail',$item->room->id) }}">{{ $item->room->name }}</a></h2>
                        <div class="price">
                            Rating: 
                            @for ($i = 0; $i < 5; $i++)
                                @if ($i < $item->average_star)
                                    <span class="star">&#9733;</span>
                                @else
                                    <span class="star">&#9734;</span>
                                @endif
                            @endfor
                            {{ substr($item->average_star, 0, 1) }}/5
                        </div>                        
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>

@if($global_setting_data->home_room_status == 'Show')
<div class="home-rooms">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="main-header">Suite Rooms</h2>
            </div>
        </div>
        <div class="row text-center d-flex justify-content-center">
            @foreach($room_all as $item)
            @if($loop->iteration>$global_setting_data->home_room_total)
            @break
            @endif
            <div class="col-md-3 ">
                <div class="inner">
                    <div class="photo">
                        <img src="{{ asset('uploads/'.$item->featured_photo) }}" alt="">
                    </div>
                    <div class="text">
                        <h2><a href="{{ route('room_detail',$item->id) }}">{{ $item->name }}</a></h2>
                        <div class="price">
                            Rp. {{ number_format($item->price) }}/night
                        </div>
                        <div class="button">
                            <a href="{{ route('room_detail',$item->id) }}" class="btn btn-primary">See Details</a>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="big-button">
                    <a href="{{ route('room') }}" class="btn btn-primary">See All Rooms</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endif


@if($global_setting_data->home_testimonial_status == 'Show')
<div class="testimonial" style="background-image: url(uploads/seabreeze12.jpg)">
    <div class="bg"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="testimonial-carousel owl-carousel">
                    @foreach($testimonial_all as $item)
                    <div class="item">
                        <div class="photo">
                            <img src="{{ asset('uploads/'.$item->photo) }}" alt="">
                        </div>
                        <div class="text">
                            <h4>{{ $item->name }}</h4>
                            <p>{{ $item->designation }}</p>
                        </div>
                        <div class="description">
                            <p>
                                {!! $item->comment !!}
                            </p>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
@endif


@if($global_setting_data->home_latest_post_status == 'Show')
<div class="blog-item">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="main-header">Lovina Tour and Tourist Activities</h2>
            </div>
        </div>
        <div class="row">

            @foreach($post_all as $item)
            @if($loop->iteration>$global_setting_data->home_latest_post_total)
            @break
            @endif
            <div class="col-md-4">
                <div class="inner">
                    <div class="photo">
                        <img src="{{ asset('uploads/'.$item->photo) }}" alt="">
                    </div>
                    <div class="text">
                        <h2><a href="{{ route('post',$item->id) }}">{{ $item->heading }}</a></h2>
                        <div class="short-des">
                            <p>
                                {!! $item->short_content !!}
                            </p>
                        </div>
                        <div class="button">
                            <a href="{{ route('post',$item->id) }}" class="btn btn-primary">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach

        </div>
    </div>
</div>
@endif

<script src="https://static.elfsight.com/platform/platform.js" data-use-service-core defer></script>
<div class="elfsight-app-fbbee20d-fbe2-4db9-a27c-a00fd7f3cfed" data-elfsight-app-lazy></div>

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d987.3521338734267!2d115.02369486951565!3d-8.16152987196966!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd19b3f4f0113df%3A0x4b656261db3bc7df!2sSea%20Breeze%20Lovina!5e0!3m2!1sen!2sid!4v1700480054454!5m2!1sen!2sid" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
@if($errors->any())
    @foreach($errors->all() as $error)
        <script>
            iziToast.error({
                title: '',
                position: 'topRight',
                message: '{{ $error }}',
            });
        </script>
    @endforeach
@endif
@endsection
