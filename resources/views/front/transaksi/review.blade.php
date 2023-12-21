@extends('front.layout.app')

@section('main_content')
<div class="page-top">
    <div class="bg" style="background-image: url('{{ asset('uploads/sunset.jpg') }}');"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Review</h2>
            </div>
        </div>
    </div>
</div>

<div class="page-content">
    <div class="container">
        <div class="row cart">
            <div class="col-md-12">
                <form action="{{route('review_action')}}" method="post">
                    @csrf
                    @foreach ($order_details as $num => $order)
                    @php
                        $review = DB::table('reviews')->where('room_id', $order->room_id)->where('customer_id', Auth::guard('customer')->user()->id)->first();
                    @endphp
                    <input type="hidden" name="room_id[]" value="{{$order->room_id}}">
                    <input type="hidden" name="order_id" value="{{$order->order_id}}">
                    <div class="form-group mb-3">
                        <label for="">Kamar</label>
                        <input type="text" @readonly(true) class="form-control" value="{{$order->room->name}}">
                    </div>
                    <div class="form-group mb-3">
                        <label for="">Beri Rating <i class="fa fa-star"></i></label>
                        <div class="rating">
                            <input id="input-4-ltr-star-lg" name="star[]" value="{{$review ? $review->star : ''}}" class="kv-ltr-theme-fas-star rating-loading" step="2" dir="ltr" data-size="sm">
                        </div>
                    </div>
                    <div class="form-group mb-3">
                        <label for="">Ulasan</label>
                        <textarea name="review[]" id="" cols="30" rows="10" class="form-control" placeholder="Tulis Ulasan Anda Mengenai Kamar Ini">{{$review ? $review->review : ''}}</textarea>
                    </div>
                    @endforeach
                    <div class="form-group mb-3">
                        <div class="d-grid">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection