<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Inertia\Inertia;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $data = auth()->user()->categories;
        if (isset($request->category_all)) {
            return $data;
        }

        return Inertia::render('Category/Index', ['data' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = auth()->user()->businesses;
        return Inertia::render('Category/Create', ['data' => $data]);
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
            'category_name' => 'required',
            'category_description' => 'required',
            'business_id' => 'required',
        ]);

        $category = new Category();
        $category->category_name = $request->category_name;
        $category->category_description = $request->category_description;
        $category->business_id = $request->business_id;
        $category->user_id = auth()->user()->id;

        $pathImage = '';

        if ($request->hasFile('category_path_image')) {
            $file = $request->file('category_path_image');
            // Generate a file name with extension
            $fileName = 'category-image-' . time() . '.' . $file->getClientOriginalExtension();
            // Save the file
            $pathImage = $file->storeAs('category', $fileName);

            Storage::delete($category->category_path_image);
            $category->category_path_image = $pathImage;
        } else {
            $category->category_path_image = $request->category_path_image;
        }

        if ($category->save()) {
            return Inertia::render('category/Index');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\Category $category
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
        if (auth()->user()->id == $category->user_id) {
            return Inertia::render('Category/Show', ['data' => $category]);
        } else {
            abort(403);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Models\Category $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {
        if (auth()->user()->id == $category->user_id) {
            return Inertia::render('Category/Edit', ['data' => $category]);
        } else {
            abort(403);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Category $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Category $category)
    {

        $category->category_name = $request->category_name;
        $category->category_description = $request->category_description;
        $category->business_id = $request->business_id;
        $category->user_id = auth()->user()->id;

        $pathImage = '';

        if ($request->hasFile('category_image')) {
            $file = $request->file('category_image');
            // Generate a file name with extension
            $fileName = 'category-image-' . time() . '.' . $file->getClientOriginalExtension();
            // Save the file
            $pathImage = $file->storeAs('category', $fileName);

            Storage::delete($category->category_path_image);
            $category->category_path_image = $pathImage;
        }

        if ($category->save()) {
            $data = category::all();
            return Inertia::render('category/Index', ['data' => $data]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\Category $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {
        if ($category->category_path_image !== null) {
            Storage::delete($category->category_path_image);
        }
        Category::find($category->id)->delete();
        return redirect()->back();
    }
}
