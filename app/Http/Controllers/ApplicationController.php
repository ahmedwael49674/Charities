<?php

namespace App\Http\Controllers;

use App\Models\Application;
use Illuminate\Http\Request;
use App\Services\ApplicationService;
use App\Http\Requests\IndexApplication;
use App\Http\Requests\CreateApplication;
use App\Http\Requests\UpdateApplication;

class ApplicationController extends Controller
{
    protected $service;

    public function __construct(ApplicationService $applicationService)
    {
        $this->service = $applicationService;
    }

    /**
     * Display a listing of the resource.
     *
     * @param  IndexApplication  $request
     *
     * @return \Illuminate\Http\Response
     */
    public function index(IndexApplication $request)
    {
        $application = $this->service->index();

        return response()->json($application);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  CreateApplication  $request
     *
     * @return \Illuminate\Http\Response
     */
    public function store(CreateApplication $request)
    {
        $application = $this->service->create($request);

        return response()->json($application);
    }

    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateApplication $request, Application $application)
    {
        $application = $this->service->update($request, $application);

        return response()->json($application);
    }
}
