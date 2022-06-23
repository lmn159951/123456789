<?php

namespace App\Http\Requests\NhanVien;

use Illuminate\Foundation\Http\FormRequest;

class DangKyTourRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return $this->createRules();
    }

    public function createRules()
    {
        return [
            'relative_fullname' => 'required',
            'relative_fullname.*' => 'required',
            'birthday' => 'required',
            'birthday.*' => 'required',
            'gender' => 'required',
            'gender.*' => 'required',
            'relationship' => 'required',
            'relationship.*' => 'required',
            'phone' => 'required',
            'phone.*' => 'required',
            'citizen_card' => 'required',
            'citizen_card.*' => 'required',
        ];
    }

    public function attributes()
    {
        return [
            
        ];
    }

    public function messages()
    {
        return [
            
        ];
    }
}

