<?php

use Illuminate\Database\Eloquent\Model as Eloquent;


class Dog extends Eloquent
{
    protected $table = "Dogs";
    protected $primaryKey = "dog_id";
}