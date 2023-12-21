<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Slide;
use App\Models\Feature;
use App\Models\Testimonial;
use App\Models\Post;
use App\Models\Review;
use App\Models\Room;

class HomeController extends Controller
{
    public function index()
    {
        $slide_all = Slide::get();
        $feature_all = Feature::get();
        $testimonial_all = Testimonial::get();
        $post_all = Post::orderBy('id', 'desc')->limit(3)->get();
        $room_all = Room::get();
        $fav = Review::selectRaw('*, AVG(star) as average_star')->orderBy('star', 'desc')->groupBy('room_id')->limit(4)->get();

        return view('front.home', compact('fav', 'slide_all', 'feature_all', 'testimonial_all', 'post_all', 'room_all'));
    }
}
