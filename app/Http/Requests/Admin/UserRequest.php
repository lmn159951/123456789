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
            'username' => 'required',
            'password' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'citizen_card' => 'required',
            'start_date' => 'required',
            'is_admin' => 'required',
        ];
    }

    public function updateRules()
    {
        return [
            'name' => ['required', Rule::unique('users')->ignore($this->route('agency'), 'id')],
            'address' => 'required'
        ];
    }

    public function attributes()
    {
        return [
            'name' => 'Tên nhân viên',
            'address' => 'Địa chỉ',
        ];
    }

    public function messages()
    {
        return [
            'required' => ':attribute không được để trống.',
            'unique' => ':attribute đã tồn tại.',
        ];
    }
}
