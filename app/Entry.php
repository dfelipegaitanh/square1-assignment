<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Entry extends Model
{

    protected $fillable = ['title', 'description'];
    private $request;

    public static function getEntries( $id = null, $sort = null)
    {
        $order = $sort ? 'asc' : 'desc';
        echo $order;
        $entries = is_null($id) ? Entry::orderBy('created_at', $order)
                : Entry::where("user_id", $id)->orderBy('created_at', $order);
        return $entries->get(); // ->paginate(config('square1.pagination'));
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
