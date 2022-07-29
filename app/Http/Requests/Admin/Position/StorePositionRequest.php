<?php

namespace App\Http\Requests\Admin\Position;

use App\Models\Department;
use App\Models\Position;
use Illuminate\Foundation\Http\FormRequest;

class StorePositionRequest extends FormRequest
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
                    $departmentId = Department::where('slug', $this->route('departmentSlug'))->value('id');
                    $positionSlug = str()->slug("$value $departmentId");

                    if (Position::where('slug', $positionSlug)->exists())
                    {
                        return $fail("Tên chức vụ đã tồn tại.");
                    }

                    return false;
                }
            ],
        ];
    }

    public function attributes()
    {
        return [
            'name' => 'Tên chức vụ',
        ];
    }

    public function messages()
    {
        return [
            'required' => ':attribute không được để trống.',
        ];
    }

}
