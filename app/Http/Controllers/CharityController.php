<?php

namespace App\Http\Controllers;

use App\Models\Charity;
use Illuminate\Http\Request;
use App\Services\CharityService;
use App\Http\Requests\UpdateCharity;

class CharityController extends Controller
{
    protected $service;

    public function __construct(CharityService $charityService)
    {
        $this->service = $charityService;
    }

    /**
     * approve given charity
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Charity  $charity
     *
     * @return \Illuminate\Http\Response
     */
    public function approve(UpdateCharity $request, Charity $charity)
    {
        $charity = $this->service->approve($charity);

        return response()->json($charity);
    }
}
