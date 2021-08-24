<?php

namespace App\Validators;

use Carbon\Carbon;
use App\Models\Application;
use App\Validators\CharityValidator;

class ApplicationValidator
{
    protected $charityValidator;

    public function __construct(CharityValidator $charityValidator)
    {
        $this->charityValidator = $charityValidator;
    }

    /**
    * validate given array to check if can application created
    *
    * @param array $attributes
    *
    * @return void
    */
    public function canBeCreated(array $attributes):void
    {
        $this->ValidateCreatedAt($attributes['created_at']);
    }

    /**
    * validate given array to check if can application created
    *
    * @param array $attributes
    *
    * @return void
    */
    public function canBeUpdated(array $attributes, Application $application):void
    {
        $this->ValidateStage(\data_get($attributes, 'stage'), $application);
    }

    /**
    * validate that given createdAt is in the past
    *
    * @param Carbon $createdAt
    *
    * @return void
    */
    public function ValidateCreatedAt(string $createdAt):void
    {
        if (Carbon::parse($createdAt)->isFuture()) {
            abort(422, "created_at => Invalid given date, created_at should be in past.");
        }
    }


    /**
    * validate that given stage can be updated
    *
    * @param null|string $stage
    * @param Application $application
    *
    * @return void
    */
    public function ValidateStage(?string $stage, Application $application):void
    {
        if ($stage) {
            $application->load('charity');
            $this->charityValidator->isApproved($application->charity);
            if ($stage == Application::PaidStage) {
                $this->charityValidator->validateCountry($application->charity, "GBR");
                $this->ValidateCreatedAt($application->created_at);
            }
        }
    }
}
