<?php

namespace App\Services;

use App\Models\Application;
use Illuminate\Http\Request;
use Illuminate\Support\Collection;
use App\Repositories\CharityRepository;
use App\Validators\ApplicationValidator;
use App\Repositories\ApplicationRepository;

class ApplicationService
{
    protected $repository;
    protected $charityRepository;
    protected $validator;

    public function __construct(
        ApplicationRepository $applicationRepository,
        ApplicationValidator $applicationValidator,
        CharityRepository $charityRepository
    ) {
        $this->repository        = $applicationRepository;
        $this->validator         = $applicationValidator;
        $this->charityRepository = $charityRepository;
    }

    /**
    * get all applications
    *
    * @param Request $request
    *
    * @return Collection
    */
    public function index():Collection
    {
        return $this->repository->index();
    }

    /**
    * create new application
    *
    * @param Request $request
    *
    * @return Application
    */
    public function create(Request $request):Application
    {
        $this->validator->canBeCreated($request->all());
        $isCharityApproved  = $this->charityRepository->findWithAttributes($request->charity_id, ['is_approved'])->is_approved;
        $stage              = $isCharityApproved ? Application::ApprovedStage : Application::NotApprovedStage;
        $attributes         = $request->all() + ['stage' => $stage];
        $application        = $this->repository->create($attributes);

        return $application;
    }

    /**
    * update given Application with given attributes
    *
    * @param Request $request
    * @param Application $application
    *
    * @return Application
    */
    public function update(Request $request, Application $application):Application
    {
        $this->validator->canBeUpdated($request->all(), $application);
        return $this->repository->update($application, $request->only(Application::UpdatableAttributes));
    }
}
