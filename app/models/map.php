<?php

use Illuminate\Database\Eloquent\Model as Eloquent;


class Map extends Eloquent
{
    protected $table = "Maps";
    protected $primaryKey = "map_id";

    public function spot()
    {
        return $this->belongsTo('Spot');
    }
}