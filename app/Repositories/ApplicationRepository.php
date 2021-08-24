<?php

namespace App\Repositories;

use App\Models\Application;
use Illuminate\Support\Collection;

class ApplicationRepository
{
    /**
    * get all applications with user and charity
    *
    * @return Collection
    */
    public function index():Collection
    {
        return Application::with(['user', 'charity'])->get();
    }

    /**
    * create new application with given attributes
    *
    * @param array $attributes
    *
    * @return Application
    */
    public function create(array $attributes):Application
    {
        return Application::create($attributes);
    }

    /**
    * update given application with given attributes
    *
    * @param Application $application
    * @param array $attributes
    *
    * @return Application
    */
    public function update(Application $application, array $attributes):Application
    {
        $application->update($attributes);
        
        return $application;
    }
}
