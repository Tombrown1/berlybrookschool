<?php

namespace App\Http\Controllers\Admin;

use App\Models\Slider;
use App\Models\Gallery;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;

class SliderController extends Controller
{
     public function index()
    {
        $sliders = Slider::where('deleted', 0)->get();
        return view('admin.slider', compact('sliders'));
    }

    public function createSlider(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|string',
            'description' => 'required|string',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:4096',
        ]);

        // return $request;

        // $slug = Str::slug($request->name, '-');


        if ($request->file('image')) {
            $file = $request->file('image');
            $image = Storage::disk('public')->putFile('slider', $file);
        } 

        $addslider = new Slider;
        $addslider->image = $image;
        $addslider->title = $request->title;
        $addslider->description = $request->description;

        // return $addslider;

        $addslider->save();

        return back()->with('success', 'Slider Added Successfully!');
    }

     public function editSlider(Request $request, $id)
    {
        $this->validate($request, [
            'title' => 'required|string',
            'description' => 'required|string',
        ]);

        $checkImage = $request->hasFile('image');        
        $updateslider = Slider::find($id);
        $img_update = null;

        if($checkImage){
            if ($request->hasFile('image')) {
            $request->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:4096',
            ]);
            $imagePath = public_path('storage/'.$updateslider->image);
            // return $imagePath;
            if(File::exists($imagePath)){
                // unlink($imagePath);
                File::delete($imagePath);
            }
            
            $file = $request->file('image');            
            $img_update = Storage::disk('public')->putFile('slider', $file);
        } 
       
        $updateslider->image = $img_update;
        $updateslider->title = $request->title;
        $updateslider->description = $request->description;
        
        }else{
            $updateslider->title = $request->title;
            $updateslider->description = $request->description;
        }
        // return $updateslider;

        $updateslider->save();

        return back()->with('success', 'Slider Updated Successfully!');
    }

    public function deleteSlider($id)
    {
        // return $id;
        $del_slider = Slider::find($id);
        // $del_slider->deleted = 1;
        $del_slider->delete();
        return back()->with('success', 'Slider Image Deleted succcessfully');
    }
}
