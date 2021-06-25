<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Subcategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Inertia\Inertia;

class ProductController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $data = auth()->user()->products;
        if (isset($request->product_all)) {
            return $data;
        }
        return Inertia::render('Product/Index', ['data' => $data]);
    }


    public function all()
    {
        return Product::all();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return Inertia::render('Product/Create');
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
            'product_name' => 'required',
            'product_description' => 'required',
            'product_price' => 'required',
            'product_stock' => 'required',
            'subcategory_id' => 'required'
        ]);

        $subcategory = Subcategory::find($request->subcategory_id);

        $product = new Product();
        $product->product_name = $request->product_name;
        $product->product_description = $request->product_description;
        $product->product_price = $request->product_price;
        $product->product_stock = $request->product_stock;
        $product->subcategory_id = $subcategory->id;
        $product->business_id = $subcategory->business->id;
        $product->user_id = auth()->user()->id;

        $pathImages = array();

        if (request()->has('images')) {
            $array = $request->images;
            for ($i = 0; $i < count($array); ++$i) {
                $file = $request->images[$i];
                $fileName = 'product-image-' . $i . time() . '.' . $file->getClientOriginalExtension();
                $path = $file->storeAs('product', $fileName);
                array_push($pathImages, $path);
            }
            $product->product_path_image = json_encode($pathImages);
        }

        if ($product->save()) {
            return Inertia::render('Product/Index');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\Product $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        if (auth()->user()->id == $product->user_id) {
            return Inertia::render('Product/Show', ['data' => $product]);
        } else {
            abort(403);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\Product $product
     * @return \Illuminate\Http\Response
     */
    public function watch($id)
    {
        $product = Product::find($id);
        if ($product != null) {
            return Inertia::render('Product/Watch', ['data' => $product]);
        }
        abort(404);

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Models\Product $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        if (auth()->user()->id == $product->user_id) {
            return Inertia::render('Product/Edit', ['data' => $product]);
        } else {
            abort(403);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Product $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        $product->product_name = $request->product_name;
        $product->product_description = $request->product_description;
        $product->product_price = $request->product_price;
        $product->product_stock = $request->product_stock;
        $product->subcategory_id = $request->subcategory_id;
        $product->user_id = auth()->user()->id;

        if ($product->product_path_image !== null) {
            $lastImages = json_decode($product->product_path_image);
            $currentImages = json_decode($request->product_path_image);

            $resultados = array_diff($lastImages, $currentImages);
            foreach ($resultados as $resultado) {
                Storage::delete($resultado);
            }
            $product->product_path_image = $request->product_path_image;
        }

        $pathImages = array();

        if (request()->has('images')) {
            $array = $request->images;
            for ($i = 0; $i < count($array); ++$i) {
                $file = $request->images[$i];
                // Generate a file name with extension
                $fileName = 'product-image-' . $i . time() . '.' . $file->getClientOriginalExtension();
                // Save the file
                $path = $file->storeAs('product', $fileName);
                array_push($pathImages, $path);
            }
            if ($product->product_path_image !== null) {
                $merge = array_merge(json_decode($product->product_path_image), $pathImages);
                $product->product_path_image = json_encode($merge);
            } else {
                $product->product_path_image = $pathImages;
            }
        }

        if ($product->save()) {
            return Inertia::render('Product/Index');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\Product $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        if ($product->product_path_image !== null) {
            $currentImages = json_decode($product->product_path_image);
            foreach ($currentImages as $currentImage) {
                Storage::delete($currentImage);
            }
        }
        Product::find($product->id)->delete();
        return redirect()->back();
    }
}
