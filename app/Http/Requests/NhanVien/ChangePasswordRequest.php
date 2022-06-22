<?php

namespace App\Http\Requests\Nhanvien;

use Illuminate\Foundation\Http\FormRequest;

class ChangePasswordRequest extends FormRequest
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
            'oldPassword' => 'required',
            'newPassword' => 'required',
            'confirmNewPassword' => 'required|same:newPassword',
        ];
    }

    public function attributes()
    {
        return [
            'oldPassword' => 'Mật khẩu cũ',
            'newPassword' => 'Mật khẩu mới',
            'confirmNewPassword' => 'Nhập lại mật khẩu',
        ];
    }

    public function messages()
    {
        return [
            'required' => ':attribute không được để trống.',
            'min' => ':attribute tối thiểu 6 ký tự',
            'max' => ':attribute tối đa 100 ký tự',
            'same' => ':attribute và :other không trùng khớp'
        ];
    }
}
