<?php

namespace App\Http\Controllers;

use App\Models\Business;
use Illuminate\Http\Request;
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
        $data = Business::all();
        return Inertia::render('Business/Index', ['data' => $data]);
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
            'business_identification_type' => 'required',
            'business_identification_number' => 'required',
            'business_name' => 'required',
            'business_email' => 'required',
            'business_phone' => 'required',
            'business_country' => 'required',
            'business_city' => 'required',
            'business_address' => 'required',
        ]);

        $fileName = '';

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            // Generate a file name with extension
            $fileName = 'image-' . time() . '.' . $file->getClientOriginalExtension();
            // Save the file
            $path = $file->storeAs('business', $fileName);
        }

        $business = new Business();
        $business->business_path_image = $path;
        $business->business_identification_type = $request->business_identification_type;
        $business->business_identification_number = $request->business_identification_number;
        $business->business_name = $request->business_name;
        $business->business_acronym = $request->business_acronym;
        $business->business_name_of_legal_representative = $request->business_name_of_legal_representative;
        $business->business_contact_name = $request->business_contact_name;
        $business->business_email = $request->business_email;
        $business->business_phone = $request->business_phone;
        $business->business_website = $request->business_website;
        $business->business_country = $request->business_country;
        $business->business_city = $request->business_city;
        $business->business_address = $request->business_address;

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
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Business::findOrFail($id)->get();
        return Inertia::render('Business/Edit', ['data' => $data]);
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
