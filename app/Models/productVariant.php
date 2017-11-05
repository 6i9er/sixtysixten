<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class productVariant extends Model
{
    // Table Name
    protected $table = 'products_variant';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'product_variant_id' , 'product_variant_position', 'product_variant_color',
        'product_id','created_at', 'updated_at', 'deleted_at',
    ];

    use SoftDeletes;
}
