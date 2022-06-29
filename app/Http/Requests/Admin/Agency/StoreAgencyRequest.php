<?php

namespace App\Http\Requests\Admin\Agency;

use Illuminate\Foundation\Http\FormRequest;

class StoreAgencyRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'name' => 'required|unique:agencies',
            'address' => 'required'
        ];
    }

    public function attributes()
    {
        return [
            'name' => 'tên đơn vị',
            'address' => 'địa chỉ',
        ];
    }
}
