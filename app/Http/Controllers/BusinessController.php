<?php

namespace App\Http\Controllers;

use App\Models\Business;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Inertia\Inertia;

class BusinessController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $data = auth()->user()->businesses;

        if (isset($request->business_all)) {
            return $data;
        }

        return Inertia::render('Business/Index', ['data' => $data]);
    }

    public function all(Request $request)
    {
        return Business::all();
    }


    public function allForUser(Request $request)
    {
        return auth()->user()->businesses;
    }

    public function listBusinessForUser(Request $request)
    {
        $data = auth()->user()->businesses;

        if ($data->count() > 1) {
            return Inertia::render('Business/List', ['data' => $data]);
        } else {
            return $this->allProductForBusiness($data->first()->id);
        }

    }

    public function getBusiness($id)
    {
        return Business::find($id);
    }

    public function allProductForBusiness($id)
    {
        $business = Business::find($id);
        $products = $business->products;
        return Inertia::render('Business/Products', ['data' => array('business' => $business, 'products' => $products)]);
    }


    public function allSubcategoryForBusiness($id)
    {
        return Business::find($id)->subcategories;
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return Inertia::render('Business/Create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'business_name' => 'required',
            'business_email' => 'required',
            'business_phone' => 'required',
            'business_country' => 'required',
            'business_city' => 'required',
            'business_address' => 'required',
            'category_id' => 'required'
        ]);

        $business = new Business();
        $business->business_name = $request->business_name;
        $business->business_acronym = $request->business_acronym;
        $business->business_email = $request->business_email;
        $business->business_phone = $request->business_phone;
        $business->business_website = $request->business_website;
        $business->business_country = $request->business_country;
        $business->business_city = $request->business_city;
        $business->business_address = $request->business_address;
        $business->business_subcategory = $request->business_subcategory;
        $business->category_id = $request->category_id;
        $business->user_id = auth()->user()->id;
        if ($business->save()) {
            $data = Business::all();
            return Inertia::render('Business/Index', ['data' => $data]);
        }

    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show(Business $business)
    {
        if (auth()->user()->id == $business->user_id) {
            return Inertia::render('Business/Show', ['data' => $business]);
        } else {
            abort(403);
        }
    }

    public function look($id)
    {
        $business = Business::find($id);
        return Inertia::render('Business/Look', ['data' => $business]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Business $business)
    {

        if (auth()->user()->id == $business->user_id) {
            return Inertia::render('Business/Edit', ['data' => $business]);
        } else {
            abort(403);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $business = Business::find($id);

        $pathProfile = '';
        $pathCover = '';

        if ($request->hasFile('cover_image')) {
            $file = $request->file('cover_image');
            // Generate a file name with extension
            $fileName = 'business-image-cover-' . time() . '.' . $file->getClientOriginalExtension();
            // Save the file
            $pathCover = $file->storeAs('business', $fileName);

            Storage::delete($business->business_path_cover_image);
            $business->business_path_cover_image = $pathCover;
        } else {
            $business->business_path_cover_image = $request->cover_image;
        }

        if ($request->hasFile('profile_image')) {
            $file = $request->file('profile_image');
            // Generate a file name with extension
            $fileName = 'business-image-profile-' . time() . '.' . $file->getClientOriginalExtension();
            // Save the file
            $pathCover = $file->storeAs('business', $fileName);

            Storage::delete($business->business_path_profile_image);
            $business->business_path_profile_image = $pathCover;
        } else {
            $business->business_path_profile_image = $request->profile_image;
        }

        $business->business_name = $request->business_name;
        $business->business_acronym = $request->business_acronym;
        $business->business_email = $request->business_email;
        $business->business_phone = $request->business_phone;
        $business->business_website = $request->business_website;
        $business->business_country = $request->business_country;
        $business->business_city = $request->business_city;
        $business->business_address = $request->business_address;
        $business->business_subcategory = $request->business_subcategory;

        $business->category_id = $request->category_id;
        $business->save();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Business $business)
    {
        if ($business->business_path_cover_image !== null) {
            Storage::delete($business->business_path_cover_image);
        }

        if ($business->business_path_profile_image !== null) {
            Storage::delete($business->business_path_profile_image);
        }

        Business::find($business->id)->delete();
        return redirect()->back();
    }
}
