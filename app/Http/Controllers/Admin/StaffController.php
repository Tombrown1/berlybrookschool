<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Staff;
use App\Models\StaffCategory;

class StaffController extends Controller
{
    public function index()
    {
        $staffs = Staff::with('staffCategory')->where('deleted', 0)->get();
        $staff_cats = StaffCategory::where('deleted', 0)->get();
        return view('admin.staffs', compact('staff_cats', 'staffs'));
    }

    public function editStaff($id)
    {
        $editstaff = Staff::with('staffCategory')->where('deleted', 0)->findOrFail($id);
        $staff_cats = StaffCategory::where('deleted', 0)->get();
        return view('admin.editstaff', compact('staff_cats', 'editstaff'));
    }

    public function storeStaff(Request $request)
    {
        $this->validate($request, [
            'fname' => 'required|string',
            'lname' => 'required|string',
            'email' => 'required|string',
            'email' => 'required|string',
            'description' => 'required|string',
            'position' => 'required|string',
            'gender' => 'required|string',
            'staff_cat_id' => 'required|string',
        ]);

        $username = $request->fname . " " . $request->lname;
        
        $slug = Str::slug($username, '-');

        if($request->file('image')){
           $file = $request->file('image');
           $filename = $file->getClientOriginalName();
           $file->move(public_path('storage/staff'), $filename);
        }

        $addStaff = new Staff;
        $addStaff->fname = $request->fname;
        $addStaff->lname = $request->lname;
        $addStaff->username = $username;
        $addStaff->slug = $slug;
        $addStaff->email = $request->email;
        $addStaff->description = $request->description;
        $addStaff->phone = $request->phone;
        $addStaff->position = $request->position;
        $addStaff->gender = $request->gender;
        $addStaff->staff_cat_id = $request->staff_cat_id;
        $addStaff->image = $filename;

        $addStaff->save();
        return back()->with('success', 'Staff record added successfully!');
    }

    public function staffCategory()
    {
        $staffcats = StaffCategory::where('deleted', 0)->get();
        return view('admin.staffcategory', compact('staffcats'));
    }

    public function CreateCategory(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|string',
            'description' => 'required|string',
        ]);

        $slug = Str::slug($request->name, '-');

        $createCategory = new StaffCategory;
        $createCategory->name = $request->name;
        $createCategory->description = $request->description;
        $createCategory->slug = $slug;

        $createCategory->save();

        return back()->with('success', 'Staff Category added successfully!');

    }



    public function updateStaff(Request $request, $id)
    {
        $updateStaff = Staff::where('deleted', 0)->findOrFail($id);
        
        $username = $request->fname . " " . $request->lname;
        $slug = Str::slug($username, '-');
        
        if($request->file('image')){
            $file = $request->file('image');
            $filename = $file->getClientOriginalName();
            @unlink(public_path('storage/staff/'.$updateStaff->image));
            $file->move(public_path('storage/staff'), $filename);
            $updateStaff['image'] = $filename;
            

        $updateStaff->fname = $request->fname;
        $updateStaff->lname = $request->lname;
        $updateStaff->username = $username;
        $updateStaff->slug = $slug;
        $updateStaff->email = $request->email;
        $updateStaff->description = $request->description;
        $updateStaff->phone = $request->phone;
        $updateStaff->position = $request->position;
        $updateStaff->gender = $request->gender;
        $updateStaff->staff_cat_id = $request->staff_cat_id;
        $updateStaff->image = $filename;

        }else{

        $updateStaff->fname = $request->fname;
        $updateStaff->lname = $request->lname;
        $updateStaff->username = $username;
        $updateStaff->slug = $slug;
        $updateStaff->email = $request->email;
        $updateStaff->description = $request->description;
        $updateStaff->phone = $request->phone;
        $updateStaff->position = $request->position;
        $updateStaff->gender = $request->gender;
        $updateStaff->staff_cat_id = $request->staff_cat_id;

        }
        
       

        $updateStaff->save();

        return redirect()->route('staffs')->with('success', 'Staff record updated successfully!');
    }
}
