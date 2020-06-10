<?php

namespace App\Http\Traits;
use Illuminate\Http\Request;

trait SortByTrait {
    
    public function getSortByUrl($name, $id = null) {
        return (is_null($id)) ? route($name, ['sort']) : route($name, ['sort', 'id' => $id]);
    }

    public function getIconDirection(Request $request) {
        return $request->session()->get('sort', true) ? 'fa-sort-up' : 'fa-sort-down';
    }

    static function getSort(Request $request){
        $sort = $request->session()->get('sort', true) ? false : true;
        $request->session()->put('sort', $sort);
        return $sort;
    }

}