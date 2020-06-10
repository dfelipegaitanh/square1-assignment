<?php

namespace App\Http\Controllers;

use App\Entry;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Validator;

class EntryActionsController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
        // $this->middleware('validate_entry_user');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        return view('entry.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  Request  $request
     * @return Response
     */
    public function store(Request $request)
    {
        $this->validator($request->all())->validate();
        $data           = $request->all();
        $entry          = new Entry();
        $entry->content = preg_replace("/\r\n/", "\n\n", $data['description']);
        $entry->title   = $data['title'];
        $entry->user_id = auth()->user()->id;
        $entry->save();
        return redirect(route('entry_action.edit', ['id' => $entry->id]));
    }

    protected function validator(array $data)
    {
        // $uniqueRule = Rule::unique('users')->ignore(Auth::user());
        return Validator::make($data, [
                'title'     => ['required', 'string', 'max:255'],
                'description' => ['required', 'string',],
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {
        $entry = Entry::find($id);
        if ($entry !== null && $entry->user_id === auth()->user()->id) {
            return view('entry.edit', ['entry' => $entry]);
        }
        return redirect(route('index'));
    }

}
