<?php

namespace App\Repositories;

use App\Models\Charity;

class CharityRepository
{

    /**
    * find given attributes by id or throw 404
    *
    * @param int $id
    * @param array $attributes = ['*']
    *
    * @return Charity
    */
    public function findWithAttributes(int $id, array $attributes = ['*']):Charity
    {
        return Charity::select($attributes)->findOrFail($id);
    }
    
    /**
    * approve given charity
    *
    * @param Charity $charity
    *
    * @return Charity
    */
    public function approve(Charity $charity):Charity
    {
        $charity->is_approved = true;
        $charity->save();
        return $charity;
    }
}
