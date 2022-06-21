<?php

namespace App\Http\Requests\NhanVien;

use Illuminate\Foundation\Http\FormRequest;


class TtcnRequest extends FormRequest
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
            'email' => 'required|email',
            'phone' => 'required|numeric',
            'citizen_card' => 'required|numeric',
        ];
    }

    public function attributes()
    {
        return [
            'email' => 'Email',
            'phone' => 'Số điện thoại',
            'citizen_card' => 'CMND/CCCD',
        ];
    }

    public function messages()
    {
        return [
            'required' => ':attribute không được để trống.',
            'email' => ':attribute không đúng định dạng',
            'numeric' => ':attribute không đúng định dạng',
        ];
    }
}
