<?php

namespace App;

use App\Http\Traits\SortByTrait;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;

class Entry extends Model
{

    use SortByTrait;

    protected $fillable = ['title', 'description'];
    private $request;

    public static function getEntries( Request $request, $id = null)
    {
        $order = SortByTrait::getSort($request) ? 'asc' : 'desc';
        $entries = is_null($id) ? Entry::orderBy('created_at', $order)
                : Entry::where("user_id", $id)->orderBy('created_at', $order);
        return $entries->get();
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function getDateAndUserAttribute()
    {
        return $this->created_at." by ".$this->user->url;
    }

    public function getCreatedAtAttribute($value)
    {
        return Carbon::parse($value)->rawFormat('M j, Y g:i:s A');
    }

    public function getContentAttribute($value)
    {
        return preg_replace("/\n\n/", "<br />", $value);
    }

    public function getContentPlainAttribute()
    {
        return str_replace('<br />', "\n", $this->content);
    }

}
