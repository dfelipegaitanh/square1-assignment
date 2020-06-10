<?php

namespace App\Http\Controllers;

use App\Entry;
use Illuminate\Http\Request;
use App\Http\Traits\SortByTrait;
use Illuminate\Support\Facades\Auth;

class EntryController extends Controller
{

    use SortByTrait;

    private $request;

    function __construct(Request $request)
    {
        $this->request = $request;
    }

    public function index()
    {
        return view('entries', [
                'entries' => Entry::getEntries($this->request),
                'url' => $this->getSortByUrl('index'),
                'iconDirection' => $this->getIconDirection($this->request),
        ]);
    }

    public function entriesByUser($id)
    {
        return view('entries', [
                'entries' => Entry::getEntries($this->request,$id),
                'url' => $this->getSortByUrl('userEntries',$id),
                'iconDirection' => $this->getIconDirection($this->request),
        ]);
    }

    public function userEntries(){
        return view('entries', [
                'entries' => Entry::getEntries($this->request, Auth::user()->id),
                'url' => $this->getSortByUrl('myEntries'),
                'iconDirection' => $this->getIconDirection($this->request),
        ]); 
    }
    
    
}
