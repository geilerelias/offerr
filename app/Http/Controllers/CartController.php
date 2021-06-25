<?php

namespace App\Http\Controllers;

use App\Models\Business;
use App\Models\Cart;
use App\Models\Product;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Inertia\Inertia;

class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = auth()->user()->carts;
        return Inertia::render('Cart/Index', ['data' => $data]);
    }

    public function total()
    {
        $data = auth()->user()->carts;
        $total = 0;
        foreach ($data as $item) {
            $total = $total + $item->product_price * $item->product_quantity;
        }
        return $total;
    }

    public function count()
    {
        return auth()->user()->carts->count();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return Inertia::render('Cart/Create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $product = Product::find($request->product_id);
        //¿hay inventario de ese producto?
        if ($product->product_stock >= $request->product_quantity) {
            $cart = new Cart();
            $cart->user_id = auth()->user()->id;//user_id
            $cart->product_id = $product->id;//product_id
            $cart->product_name = $product->product_name;//product_name
            $cart->product_price = $product->product_price;//product_price
            $cart->product_quantity = $request->product_quantity;//product_quantity
            $cart->product_path_images = $product->product_path_images;//product_images
            $cart->save();
            return back()->with('success', "$product->product_name ¡se ha agregado con éxito al carrito!");
        } else {
            return back()->with('error', "$product->product_name ¡No es posible agregar el producto al carrito!");
        }
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\Cart $cart
     * @return \Illuminate\Http\Response
     */
    public function show(Cart $cart)
    {
        if (auth()->user()->id == $cart->user_id) {
            return Inertia::render('Cart/Show', ['data' => $cart]);
        } else {
            abort(403);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Models\Cart $cart
     * @return \Illuminate\Http\Response
     */
    public function edit(Cart $cart)
    {
        if (auth()->user()->id == $cart->user_id) {
            return Inertia::render('Cart/edit', ['data' => $cart]);
        } else {
            abort(403);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Cart $cart
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Cart $cart)
    {
        $product = Product::find($request->product_id);
        //¿hay inventario de ese producto?
        if ($product->product_stock >= $request->quantity) {
            $cart->user_id = auth()->user()->id;//user_id
            $cart->product_id = $product->id;//product_id
            $cart->product_name = $product->product_name;//product_name
            $cart->product_price = $product->product_price;//product_price
            $cart->product_quantity = $request->quantity;//product_quantity
            $cart->product_path_images = $product->product_path_images;//product_images
            $cart->save();
            return back()->with('success', "$product->product_name ¡se ha agregado con éxito al carrito!");
        } else {
            return back()->with('error', "$product->product_name ¡No es posible agregar el producto al carrito!");
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\Cart $cart
     * @return \Illuminate\Http\Response
     */
    public function destroy(Cart $cart)
    {
        Business::find($cart->id)->delete();
        return redirect()->back();
    }
}
