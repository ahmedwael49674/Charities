<?php

namespace App\Services;

use App\Models\Charity;
use Illuminate\Http\Request;
use App\Repositories\CharityRepository;

class CharityService
{
    protected $repository;

    public function __construct(CharityRepository $charityRepository)
    {
        $this->repository        = $charityRepository;
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
        return $this->repository->approve($charity);
    }
}
