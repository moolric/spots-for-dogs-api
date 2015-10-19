<?php

use Illuminate\Database\Eloquent\Model as Eloquent;


class Image extends Eloquent
{
    protected $table = "Images";
    protected $primaryKey = "image_id";

    public function spot()
    {
        return $this->belongsTo('Spot');
    }
}