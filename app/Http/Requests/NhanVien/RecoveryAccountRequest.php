<?php

namespace App\Http\Requests\NhanVien;

use Illuminate\Foundation\Http\FormRequest;

class RecoveryAccountRequest extends FormRequest
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
            'newPassword' => 'required',
            'confirmNewPassword' => 'required|same:newPassword',
        ];
    }

    public function attributes()
    {
        return [
            'newPassword' => 'Mật khẩu mới',
            'confirmNewPassword' => 'Nhập lại mật khẩu',
        ];
    }

    public function messages()
    {
        return [
            'required' => ':attribute không được để trống.',
            'same' => ':attribute và :other không trùng khớp'
        ];
    }
}
