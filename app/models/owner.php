<?php

use Illuminate\Database\Eloquent\Model as Eloquent;


class Owner extends Eloquent
{
    protected $table = "Owners";
    protected $primaryKey = "owner_id";

    public function spots() {
        return $this->hasMany('Spot');
    }
}