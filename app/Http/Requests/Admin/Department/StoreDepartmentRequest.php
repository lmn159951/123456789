<?php

namespace App\Http\Requests\Admin\Department;

use App\Models\Agency;
use App\Models\Department;
use Illuminate\Foundation\Http\FormRequest;

class StoreDepartmentRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'name' => [
                'required',
                function ($attributes, $value, $fail) {
                    $agencyId = Agency::where('slug', $this->route('agencySlug'))->value('id');
                    $departmentSlug = str()->slug("$value $agencyId");

                    if (Department::where('slug', $departmentSlug)->exists()) {
                        return $fail("Tên phòng ban đã tồn tại.");
                    }

                    return false;
                }
            ],
        ];
    }

    public function attributes()
    {
        return [
            'name' => 'Tên phòng ban',
        ];
    }

    public function messages()
    {
        return [
            'required' => ':attribute không được để trống.',
        ];
    }
}
