<?php

namespace App\Http\Requests\Admin\User;

use Illuminate\Foundation\Http\FormRequest;

class StoreUserRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'fullname' => 'required',
            'username' => 'required|unique:users',
            'password' => 'required',
            'email' => 'nullable|email|unique:users',
            'birthday'=>'required|before:now',
            'phone' => 'nullable|regex:/0[0-9]{9}/|numeric',
            'citizen_card' => 'required|regex:/3[0-9]{8}/|numeric|unique:users',
            'start_date' => 'required|before_or_equal:now',
            'is_admin' => 'required|boolean',
            'department_id'=>'required|exists:departments,id',
            'position_id'=>'required|exists:positions,id',
            'agency_id'=>'required|exists:agencies,id'
        ];
    }

    public function attributes()
    {
        return [
            'fullname' => 'họ tên',
            'username' => 'tên tài khoản',
            'password' => 'mật khẩu',
            'email' => 'email',
            'phone' => 'số điện thoại',
            'citizen_card' => 'chứng minh nhân dân',
            'start_date' => 'ngày bắt đầu làm',
            'birthday'=>'ngày sinh',
        ];
    }
}
