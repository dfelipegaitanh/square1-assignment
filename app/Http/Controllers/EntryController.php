<?php

namespace App\Http\Controllers;

use App\Entry;
use Illuminate\Http\Request;

class EntryController extends Controller
{

    public function index(Request $request)
    {
        return view('entries', [
                'entries' => Entry::getEntries(),
        ]);
    }

    public function entriesByUser(Request $request,$id)
    {
        return view('entries', [
                'entries' => Entry::getEntries($id,$this->getSort($request)),
        ]);
    }

    private function getSort(Request $request){
        $sort = $request->session()->get('sort', true) ? false : true;
        $request->session()->put('sort', $sort);
        return $sort;
    }
}
