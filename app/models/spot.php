<?php

use Illuminate\Database\Eloquent\Model as Eloquent;


class Spot extends Eloquent
{
    protected $table = "Spots";
    protected $primaryKey = "spot_id";

    public function owner()
    {
        return $this->belongsTo('Owner');
    }

    public function category()
    {
        return $this->belongsTo('Category');
    }

    public function tags()
    {
        return $this->belongsToMany('Tag');
    }

    public function map()
    {
        return $this->hasOne('Map');
    }

    public function user()
    {
        return $this->belongsTo('User');
    }
}