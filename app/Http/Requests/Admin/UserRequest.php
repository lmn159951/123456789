<?php
namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class UserRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return (empty($this->route('user')) ? $this->createRules() : $this->updateRules());
    }

    public function createRules()
    {
        return [
            'fullname' => 'required',
            'username' => 'required|unique:users',
            'password' => 'required',
            'email' => 'nullable|email|unique:users',
            'phone' => 'nullable|regex:/0[0-9]{9}/',
            'citizen_card' => 'nullable|regex:/0[0-9]{8}/|numeric|unique:users',
            'start_date' => 'nullable|before_or_equal:now',
        ];
    }

    public function updateRules()
    {
        return [
            'fullname' => 'required',
            'username' => ['required', Rule::unique('users')->ignore($this->route('user'), 'id')],
            'password' => 'nullable',
            'email' => ['nullable', 'email', Rule::unique('users')->ignore($this->route('user'), 'id')],
            'phone' => 'nullable|regex:/0[0-9]{9}/',
            'citizen_card' => ['nullable', 'regex:/[0-9]{9}/', 'numeric', Rule::unique('users')->ignore($this->route('user'), 'id')],
            'start_date' => 'nullable|before_or_equal:now',
        ];
    }

    public function attributes()
    {
        return [
            'fullname' => 'Họ tên',
            'username' => 'Tên tài khoản',
            'password' => 'Mật khẩu',
            'email' => 'Email',
            'phone' => 'Số diể',
            'citizen_card' => 'Chứng minh nhân dân',
            'start_date' => 'Ngày bắt đầu làm',
        ];
    }

    public function messages()
    {
        return [
            'required' => ':attribute không được để trống.',
            'unique' => ':attribute đã tồn tại.',
            'email' => ':attribute không hợp lệ',
            'regex' => ':attribute không hợp lệ',
            'size' => ':attribute vui lòng nhập đúng :size ký tự',
            'numeric' => ':attribute không được nhập ký tự',
            'before_or_equal' => ':attribute không hợp lệ',
        ];
    }
}
