<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Application extends Model
{
    use HasFactory;

    const NotApprovedStage      = 'organisationApproval';
    const ApprovedStage         = 'allowToProceed';
    const PaidStage             = 'paid';
    const Stages                = ['organisationApproval' => 1, 'allowToProceed' => 2, 'paid' => 3];
    const UpdatableAttributes   = ['stage'];

    /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;
    
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id', 'charity_id', 'stage', 'created_at'
    ];

    /**
     *
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'created_at' => 'datetime:Y-m-d H:i:s'
    ];


    /**
     * Get the charity that own the application.
     */
    public function charity()
    {
        return $this->belongsTo(\App\Models\Charity::class);
    }

    /**
     * Get the user that own the application.
     */
    public function user()
    {
        return $this->belongsTo(\App\Models\User::class);
    }
}
