<?php

namespace App\Http\Requests;

use App\Models\Application;
use Illuminate\Support\Facades\Auth;
use Illuminate\Foundation\Http\FormRequest;

class IndexApplication extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return Auth::user()->can('create', Application::class);
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
        ];
    }
}
