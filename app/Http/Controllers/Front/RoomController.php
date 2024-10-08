<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Review;
use Illuminate\Http\Request;
use App\Models\Room;

class RoomController extends Controller
{
    public function index()
    {
        $room_all = Room::paginate(12);
        return view('front.room', compact('room_all'));
    }

    public function single_room($id)
    {
        $single_room_data = Room::with('rRoomPhoto')->where('id', $id)->first();
        $reviews = Review::where('room_id', $id)->get();
        return view('front.room_detail', compact('single_room_data', 'reviews'));
    }
}
