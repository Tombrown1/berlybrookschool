<?php

namespace App\Http\Controllers\Admin;

use App\Models\Contact;
use App\Models\Setting;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ContactController extends Controller
{
   
    public function displayContact(Request $request)
    {
        $contacts = Contact::where('deleted', 0)->orderBy('id', 'DESC')->get();
        return view('admin.contact', compact('contacts'));
    }

    public function contact(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|string',
            'email' => 'required|email',
            'phone' => 'required|string',
            'subject' => 'required|string',
            'message' => 'required|string',
        ]);

        // return $request;

        $addContact = new Contact;

        $addContact->name = $request->name;
        $addContact->email = $request->email;
        $addContact->phone = $request->phone;
        $addContact->subject = $request->subject;
        $addContact->message = $request->message;
        // return $addContact;
        $addContact->save();

        return redirect()->route('contact')->with('success', 'Your entry has been sent successfully, Our team will respond to you as soon as possible!');
    }

    public function deleteContact($id)
    {
        $deleteContact = Contact::find($id);
        $deleteContact->delete();

        return back()->with('success', 'Contact Entry Deleted!');
    }


}
