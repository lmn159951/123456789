<?php

namespace App\Http\Requests\Admin\User;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class UpdateUserRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'fullname' => 'required',   
            'username' => ['required', Rule::unique('users')->ignore($this->route('user'), 'id')],
            'password' => 'nullable',
            'email' => ['nullable', 'email', Rule::unique('users')->ignore($this->route('user'), 'id')],
            'birthday'=>'required|before:now',
            'phone' => 'nullable|regex:/0[0-9]{9}/|numeric',
            'citizen_card' => ['nullable', 'regex:/3[0-9]{8}/', 'numeric', Rule::unique('users')->ignore($this->route('user'), 'id')],
            'start_date' => 'nullable|before_or_equal:now',
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
