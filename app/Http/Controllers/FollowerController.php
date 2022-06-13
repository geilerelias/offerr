<?php

namespace App\Http\Controllers;

use App\Models\Business;
use App\Models\Follower;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Inertia\Inertia;

class FollowerController extends Controller
{

    public function add(Request $request)
    {
        $hasFollowers = auth()->user()->followers->where('business_id', $request->business_id)->first();
        if ($hasFollowers === null) {

            $follower = new  Follower();
            $follower->business_id = $request->business_id;
            $follower->score = $request->score;
            $follower->review = $request->review;

            $follower->user_id = auth()->user()->id;
            $follower->save();
            return redirect()->back()->with('message', ["icon" => 'success', "text" => 'Ahora sigues a este comercio']);
        } else {
            if ($request->score !== null && $request->review !== null) {
                $follower = $hasFollowers;
                $follower->score = $request->score;
                $follower->review = $request->review;
                $follower->save();
                return redirect()->back()->with('message', ["icon" => 'success', "text" => 'Gracias por calificarnos']);
            } else {
                return redirect()->back()->with('message', ["icon" => 'warning', "text" => 'Ya sigues a este comercio']);
            }
        }
    }

    public function countFollowersForBusiness($id)
    {
        return Business::find($id)->followers->count();
    }

    public function followersForBusiness($id)
    {
        return Business::find($id)->followers;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Inertia::render('Business/Followers');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //

    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\Follower $follower
     * @return \Illuminate\Http\Response
     */
    public function show(Follower $follower)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Models\Follower $follower
     * @return \Illuminate\Http\Response
     */
    public function edit(Follower $follower)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Follower $follower
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Follower $follower)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\Follower $follower
     * @return \Illuminate\Http\Response
     */
    public function destroy(Follower $follower)
    {
        //
    }
}
