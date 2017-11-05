<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class product extends Model
{
    // Table Name
    protected $table = 'mtcproducts';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id' , 'product_name', 'created_at', 'updated_at', 'deleted_at',
    ];

    use SoftDeletes;

    public function variant()
    {
        return $this->hasMany('App\Models\productVariant', 'product_id');
    }
}
