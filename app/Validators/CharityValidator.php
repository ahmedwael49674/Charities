<?php

namespace App\Validators;

use App\Models\Charity;
use App\Models\Country;

class CharityValidator
{

    /**
    * validate that given charity is approved or throw execption
    *
    * @param Charity $charity
    *
    * @return void
    */
    public function isApproved(Charity $charity):void
    {
        if (!$charity->is_approved) {
            abort(422, "stage => can't update stage application charity is not approved.");
        }
    }

    /**
    * validate that given charity is located in given country code
    *
    * @param Charity $charity
    * @param string $code
    *
    * @return void
    */
    public function validateCountry(Charity $charity, string $code):void
    {
        $countryCode = Country::Countries[$code]['id'];

        if ($charity->country_id !== $countryCode) {
            abort(422, "stage => can't be updated application charity is not located in UK.");
        }
    }
}
