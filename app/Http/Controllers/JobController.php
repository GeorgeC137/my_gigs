<?php

namespace App\Http\Controllers;

use App\Models\Job;
use Illuminate\Http\Request;

class JobController extends Controller
{
    // Show All Jobs
    public function index ()
    {
        return view('jobs.index', [
            'jobs' => Job::latest()->filter(request(['tag', 'search']))->paginate(6)
        ]);
    }

    // Show Single Job
    public function show(Job $job)
    {
        return view('jobs.show', [
            'job' => $job
        ]);
    }

    // Show Create Job Form
    public function create()
    {
        return view('jobs.create');
    }

    // Store Job In Database
    public function store(Request $request)
    {
        $formInputs = $request->validate([
            'title' => 'required|string|max:255',
            'company' => 'required|string|unique:jobs,company|max:255',
            'location' => 'required',
            'tag' => 'required',
            'email' => 'required|email|max:255',
            'website' => 'required',
            'description' => 'required',
        ]);

        // Upload Image File
        if($request->hasFile('logo'))
        {
            $formInputs['logo'] = $request->file('logo')->store('logos', 'public');
        }

        $formInputs['user_id'] = auth()->id();

        // Store In Database
        Job::create($formInputs);

        // Redirect To Home Page With Success Message
        return redirect('/')->with('success', 'Job Created Successfully');
    }

    // Show Edit Form
    public function edit(Job $job)
    {
        return view('jobs.edit', ['job' => $job]);
    }

    // Update Job In Database
    public function update(Request $request, Job $job)
    {
        // Make Sure The Logged In User Is The Owner Of The Job 
        if($job->user_id != auth()->id())
        {
            abort(403, 'Unauthorized Action!!');
        }

        $formInputs = $request->validate([
            'title' => 'required|string|max:255',
            'company' => 'required',
            'location' => 'required',
            'tag' => 'required',
            'email' => 'required|email|max:255',
            'website' => 'required',
            'description' => 'required',
        ]);

        // Upload Image File
        if($request->hasFile('logo'))
        {
            $formInputs['logo'] = $request->file('logo')->store('logos', 'public');
        }

        // Store Updated Job In Database
        $job->update($formInputs);

        // Redirect To Home Page With Success Message
        return redirect('/')->with('success', 'Job Updated Successfully');
    }

    // Delete Job
    public function destroy(Job $job)
    {
        // Make Sure The Logged In User Is The Owner Of The Job 
        if($job->user_id != auth()->id())
        {
            abort(403, 'Unauthorized Action!!');
        }
        
        $job->delete();
        return redirect('/')->with('success', 'Job Deleted Successfully');
    }

    // Manage Jobs 
    public function manage()
    {
        return view('jobs.manage', ['jobs' => auth()->user()->jobs()->get()]);
    }
}
