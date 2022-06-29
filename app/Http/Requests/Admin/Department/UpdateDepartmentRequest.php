<?php

namespace App\Http\Requests\Admin\Department;

use Illuminate\Foundation\Http\FormRequest;

class UpdateDepartmentRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'name' => 'required|unique:departments',
        ];
    }

    public function attributes()
    {
        return [
            'name' => 'Tên phòng ban',
        ];
    }
}
