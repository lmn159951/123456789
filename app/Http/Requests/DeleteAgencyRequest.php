<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class DeleteAgencyRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }protected function getValidatorInstance()
    {
        return parent::getValidatorInstance()->after(function ($validator) {
            if ($this->validated()) {
                $this->after($validator, $this->route('support'));
            }
        });
    }

    protected function after($validator, $id)
    {
        
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [];
    }
}
