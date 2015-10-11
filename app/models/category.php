<?php

use Illuminate\Database\Eloquent\Model as Eloquent;


class Category extends Eloquent
{
    protected $table = "Categories";
    protected $primaryKey = "category_id";


    public function spots() {
        return $this->hasMany('spot');
    }
}