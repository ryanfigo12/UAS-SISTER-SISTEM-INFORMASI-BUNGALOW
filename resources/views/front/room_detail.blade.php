@extends('front.layout.app')

@section('main_content')
<div class="page-top">
    <div class="bg" style="background-image: url('{{ asset('uploads/sunset.jpg') }}');"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>{{ $single_room_data->name }}</h2>
            </div>
        </div>
    </div>
</div>

<div class="page-content room-detail">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-7 col-sm-12 left">

                <div class="room-detail-carousel owl-carousel">
                    <div class="item" style="background-image:url({{ asset('uploads/'.$single_room_data->featured_photo) }});">
                        <div class="bg"></div>
                    </div>

                    @foreach($single_room_data->rRoomPhoto as $item)
                    <div class="item" style="background-image:url({{ asset('uploads/'.$item->photo) }});">
                        <div class="bg"></div>
                    </div>
                    @endforeach

                </div>

                <div class="description">
                    {!! $single_room_data->description !!}
                </div>

                <div class="amenity">
                    <div class="row">
                        <div class="col-md-12">
                            <h2>Amenities</h2>
                        </div>
                    </div>
                    <div class="row">
                        @php
                        $arr = explode(',',$single_room_data->amenities);
                        for($j=0;$j<count($arr);$j++) {
                            $temp_row = \App\Models\Amenity::where('id',$arr[$j])->first();
                            echo '<div class="col-lg-6 col-md-12">';
                            echo '<div class="item"><i class="fa fa-check-circle"></i> '.$temp_row->name.'</div>';
                            echo '</div>';
                        }
                        @endphp
                    </div>
                </div>


                <div class="feature">
                    <div class="row">
                        <div class="col-md-12">
                            <h2>Features</h2>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <tr>
                                <th>Room Size</th>
                                <td>{{ $single_room_data->size }}</td>
                            </tr>
                            <tr>
                                <th>Number of Beds</th>
                                <td>{{ $single_room_data->total_beds }}</td>
                            </tr>
                            <tr>
                                <th>Number of Bathrooms</th>
                                <td>{{ $single_room_data->total_bathrooms }}</td>
                            </tr>
                            <tr>
                                <th>Number of Balconies</th>
                                <td>{{ $single_room_data->total_balconies }}</td>
                            </tr>
                        </table>
                    </div>
                </div>

                <div class="feature">
                    <div class="row">
                        <div class="col-md-12">
                            <h2>Reviews</h2>
                        </div>
                    </div>
                    <div class="reviews">
                        @foreach ($reviews as $review)
                        <div class="review">
                            <div class="review-header">
                                <div class="reviewer-info">
                                    <img width="70px" src="{{ asset('uploads/'.$review->customer->photo) }}" alt="" class="rounded-circle">
                                    <div class="review-info">
                                        <p class="reviewer-name">{{$review->customer->name}}</p>
                                        <p class="review-date">{{date('d F Y', strtotime($review->created_at))}}</p>
                                    </div>
                                </div>
                                <div class="rating">
                                    @for ($i = 0; $i < $review->star; $i++)
                                        <span class="star">★</span>
                                    @endfor
                                </div>
                            </div>
                            <div class="review-content">
                                <p>{{$review->review}}</p>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
                

                @if($single_room_data->video_id != '')
                <div class="video">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/{{ $single_room_data->video_id }}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
                @endif

            </div>
            <div class="col-lg-4 col-md-5 col-sm-12 right">

                <div class="sidebar-container" id="sticky_sidebar">

                    <div class="widget">
                        <h2>Room Price per Night</h2>
                        <div class="price">
                            Rp. {{ number_format($single_room_data->price) }}
                        </div>
                    </div>
                    <div class="widget">
                        <h2>Reserve This Room</h2>
                        <form action="{{ route('cart_submit') }}" method="post">
                            @csrf
                            <input type="hidden" name="room_id" value="{{ $single_room_data->id }}">
                            <div class="form-group mb_20">
                                <label for="">Check in & Check out</label>
                                <input type="text" name="checkin_checkout" class="form-control daterange1" placeholder="Checkin & Checkout">
                            </div>
                            <div class="form-group mb_20">
                                <label for="">Adult</label>
                                <input type="number" name="adult" value="1" class="form-control" min="1" max="30" placeholder="Adults">
                            </div>
                            <div class="form-group mb_20">
                                <label for="">Children</label>
                                <input type="number" name="children" value="0" class="form-control" min="0" max="30" placeholder="Children">
                            </div>
                            <button type="submit" class="book-now">Book Now</button>
                        </form>
                    </div>

                </div>


            </div>
        </div>
    </div>
</div>

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
