<?php

namespace App\Http\Controllers;

use App\Models\Subcategory;
use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Inertia\Inertia;

class SubcategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $data = auth()->user()->subcategories;
        return Inertia::render('Subcategory/Index', ['data' => $data]);
    }

    public function list()
    {
        $data = Subcategory::all();
        return Inertia::render('Subcategory/List', ['data' => $data]);
    }

    public function all()
    {
        return Subcategory::all();
    }

    public function allForUser(Request $request)
    {
        return auth()->user()->subcategories;
    }

    public function allProductForSubcategory($id)
    {
        return Subcategory::find($id)->products;
    }

    public function businessOfSubcategory($id)
    {
        $subcategory = Subcategory::find($id);
        return $subcategory->business;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = auth()->user()->businesses;
        return Inertia::render('Subcategory/Create', ['data' => $data]);
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
            'subcategory_name' => 'required',
            'subcategory_description' => 'required',
            'business_id' => 'required',
        ]);

        $subcategory = new Subcategory();
        $subcategory->subcategory_name = $request->subcategory_name;
        $subcategory->subcategory_description = $request->subcategory_description;
        $subcategory->business_id = $request->business_id;

        $subcategory->user_id = auth()->user()->id;

        $pathImage = '';


        if ($request->hasFile('subcategory_image')) {
            $file = $request->file('subcategory_image');
            // Generate a file name with extension
            $fileName = 'subcategory-image-' . time() . '.' . $file->getClientOriginalExtension();
            // Save the file
            $pathImage = $file->storeAs('subcategory', $fileName);
            $subcategory->subcategory_path_image = $pathImage;
        }

        $subcategory->save();
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\Subcategory $subcategory
     * @return \Illuminate\Http\Response
     */
    public function show(Subcategory $subcategory)
    {
        return Inertia::render('Subcategory/Show', ['data' => $subcategory]);
    }

    public function look($id)
    {
        $subcategory = Subcategory::find($id);
        if ($subcategory != null) {
            return Inertia::render('Subcategory/Show', ['data' => $subcategory]);
        }
        abort(404);

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Models\Subcategory $subcategory
     * @return \Illuminate\Http\Response
     */
    public function edit(Subcategory $subcategory)
    {
        if (auth()->user()->id == $subcategory->user_id) {
            return Inertia::render('Subcategory/Edit', ['data' => $subcategory]);
        } else {
            abort(403);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Subcategory $subcategory
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Subcategory $subcategory)
    {

        $subcategory->subcategory_name = $request->subcategory_name;
        $subcategory->subcategory_description = $request->subcategory_description;
        $subcategory->business_id = $request->business_id;
        $subcategory->user_id = auth()->user()->id;

        $pathImage = '';

        if ($request->hasFile('subcategory_image')) {
            $file = $request->file('subcategory_image');
            // Generate a file name with extension
            $fileName = 'subcategory-image-' . time() . '.' . $file->getClientOriginalExtension();
            // Save the file
            $pathImage = $file->storeAs('subcategory', $fileName);

            Storage::delete($subcategory->Subcategory_path_image);
            $subcategory->subcategory_path_image = $pathImage;
        }

        $subcategory->save();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\Subcategory $subcategory
     * @return \Illuminate\Http\Response
     */
    public function destroy(Subcategory $subcategory)
    {
        if ($subcategory->subcategory_path_image !== null) {
            Storage::delete($subcategory->subcategory_path_image);
        }
        subcategory::find($subcategory->id)->delete();
        return redirect()->back();
    }
}
