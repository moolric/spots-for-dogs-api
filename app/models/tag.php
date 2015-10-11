<?php

use Illuminate\Database\Eloquent\Model as Eloquent;


class Tag extends Eloquent
{
    protected $table = "Tags";
    protected $primaryKey = "tag_id";


    public function spots()
    {
        return $this->belongsToMany('Spot');
    }
}