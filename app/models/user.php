<?php

use Illuminate\Database\Eloquent\Model as Eloquent;


class User extends Eloquent
{
    protected $table = "Users";
    protected $primaryKey = "user_id";
    protected $hidden = ['password', 'email'];

    public function spots() {
        return $this->hasMany('Spot');
    }
}