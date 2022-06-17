<?php

namespace App\Http\Requests\NhanVien;

use Illuminate\Foundation\Http\FormRequest;

class NVDangNhapRequest extends FormRequest
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
            'username' => 'required',
            'password' => 'required',
        ];
    }

    public function attributes()
    {
        return [
            'username' => 'UserName',
            'password' => 'Password',
        ];
    }

    public function messages()
    {
        return [
            'required' => ':attribute không được để trống.'
        ];
    }
}
