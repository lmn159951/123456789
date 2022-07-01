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
            'agency_id'=>'required|exists:agencies,id',
            'gender' => 'required',
        ];
    }

    public function attributes()
    {
        return [
            'fullname' => 'Họ tên',
            'username' => 'Tên tài khoản',
            'password' => 'Mật khẩu',
            'email' => 'Email',
            'phone' => 'Số điện thoại',
            'citizen_card' => 'Chứng minh nhân dân',
            'start_date' => 'Ngày bắt đầu làm',
            'birthday'=>'Ngày sinh',
        ];
    }

    public function messages()
    {
        return [
            'required' => ':attribute không được để trống.',
            'unique' => ':attribute đã tồn tại.',
            'email' => ':attribute phải có định dạng hợp lệ.',
            'before' => ':attribute phải trước ngày hiện tại.',
            'regex' => ':attribute không hợp lệ.',
            'numeric' => ':attribute phải là số.',
            'before_or_equal' => ':attribute phải bằng hoặc trước ngày hiện tại.',
        ];
    }
}
