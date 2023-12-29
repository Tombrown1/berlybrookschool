<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Curriculum;
use Illuminate\Support\Str;
use App\Models\CurriculumCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class CurriculumController extends Controller
{
    public function index()
    {
        $curriculums = Curriculum::with('curriculum_cat')->where('deleted', 0)->get();
        
        return view('admin.curriculum', compact('curriculums'));
    }

    public function addCurriculum()
    {
        $classes = CurriculumCategory::where('deleted', 0)->get();
        return view('admin.add_curriculum', compact('classes'));
    }

    public function storeCurriculum(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|string',
            'age_range' => 'required|string',
            'curriculum_cat_id' => 'required|string',
            'description' => 'required|string'
        ]);

        if($request->file('image')){
            $file = $request->file('image');
            $filename = $file->getClientOriginalName();
            // $image = Storage::disk('public')->putFile('curriculum', $filename);
            $file->move(public_path('storage/curriculum'), $filename);
        }

        $slug = Str::slug($request->name, '-');

        $storeCurriculum = new Curriculum;

        $storeCurriculum->name = $request->name;
        $storeCurriculum->age_range = $request->age_range;
        $storeCurriculum->curriculum_cat_id = $request->curriculum_cat_id;
        $storeCurriculum->description = $request->description;
        $storeCurriculum->slug = $slug;
        $storeCurriculum->image = $filename;

        $storeCurriculum->save();

        return redirect()->route('curriculum')->with('success', 'Curriclum recored added successfully!');
    }

    public function editCurriculum($id)     
    {
       $editcurriculum = Curriculum::where('deleted', 0)->findOrFail($id);
       $classes = CurriculumCategory::where('deleted', 0)->get();
       return view('admin.editcurriculum', compact('editcurriculum', 'classes'));
    }

    public function updateCurriculum(Request $request, $id)
    {
        $updateCurriculum = Curriculum::where('deleted', 0)->findOrFail($id);

        if($request->file('image')){
            $file = $request->file('image');
            $filename = $file->getClientOriginalName();
            @unlink(public_path('storage/curriculum/'.$updateCurriculum->image));
            $file->move(public_path('storage/curriculum'), $filename);
            $updateCurriculum['image'] = $filename;

        $slug = Str::slug($request->name, '-');

        $updateCurriculum->name = $request->name;
        $updateCurriculum->age_range = $request->age_range;
        $updateCurriculum->curriculum_cat_id = $request->curriculum_cat_id;
        $updateCurriculum->description = $request->description;
        $updateCurriculum->slug = $slug;
        $updateCurriculum->image = $filename;

        }else{

        $slug = Str::slug($request->name, '-');

        $updateCurriculum->name = $request->name;
        $updateCurriculum->age_range = $request->age_range;
        $updateCurriculum->curriculum_cat_id = $request->curriculum_cat_id;
        $updateCurriculum->description = $request->description;
        $updateCurriculum->slug = $slug;

        }
        

        $updateCurriculum->save();
        return redirect()->route('curriculum')->with('success', 'Curriculum updated Successfully');
    }

    public function CurriculumCategory(){
        $classes = CurriculumCategory::all();
        return view('admin.curriculum_category', compact('classes'));
    }

    public function CreateCategory(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|string',
            'description' => 'required|string',
        ]);       

        $slug = Str::slug($request->name, '-');

        $createCat = new CurriculumCategory;
        $createCat->name = $request->name;
        $createCat->description = $request->description;
        $createCat->slug = $slug;
        //  return $createCat;
        $createCat->save();

        return back()->with('success', 'Curriculum Added Successfully');


    }

    public function DeleteCategory($id)
    {
        $deleteCat = CurriculumCategory::findOrFail($id);
        if(!is_null($deleteCat)){
            $deleteCat->delete();
        }
        
        return back()->with('success', 'Curriculum Category deleted Successfully');
    }

    
}
