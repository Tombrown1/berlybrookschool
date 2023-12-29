<?php

namespace App\Http\Controllers\Admin;

use App\Models\Admission;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;

class AdmissionController extends Controller
{
    public function index()
    {
        $admission = Admission::where('deleted', 0)->find(1);
        
        return view('admin.admission', compact('admission'));
    }

    public function createAdmission(Request $request)
    {
        $this->validate($request,[ 
            'title' => 'required|string',
            'subtitle' => 'required|string',
            'description' => 'required|string',
        ]);

        if($request->file('image')){
            $file = $request->file('image');
            $filename = $file->getClientOriginalName();
            $file->move(public_path('storage/admission'), $filename);
            // $image = Storage::disk('public')->putFile('Admission', $filename);
        }

        $createAdmission = new Admission;
        $createAdmission->title = $request->title;
        $createAdmission->subtitle = $request->subtitle;
        $createAdmission->description = $request->description;
        $createAdmission->image = $filename;

        $createAdmission->save();
        return back()->with('success', 'Admission Info Added Successfully!');
    }

    public function editAdmission()
    {
        $editadmission = Admission::findOrFail(1);
        return view('admin.editadmission', compact('editadmission'));
    }

    public function updateAdmission(Request $request, $id)
    {
       $updateAdmission = Admission::findOrFail($id);
    //    return $updateAdmission;

       $updateAdmission->title = $request->title;
       $updateAdmission->subtitle = $request->subtitle;
       $updateAdmission->description = $request->description;


       if($request->file('image')){
        $file = $request->file('image');
        @unlink(public_path('storage/admission'.$updateAdmission->image));
        $filename = $file->getClientOriginalName();
        $file->move(public_path('storage/admission'), $filename);
        $updateAdmission['image'] = $filename;
       }

       $updateAdmission->save();
       return redirect()->route('admission')->with('success', 'Admission Record Updated Successfully!');

    }

    public function deleteAdmission($id)
    {
        $deleteAdmission = Admission::findOrFail($id);
        return $deleteAdmission;
        if(!is_null($deleteAdmission)){
            $deleteAdmission->delete();
        }
        return back()->with('success', 'Admission Record Deleted Successfully!');
    }
}
