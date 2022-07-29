<?php

namespace App\Http\Requests\Admin\Position;

use App\Models\Department;
use App\Models\Position;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class UpdatePositionRequest extends FormRequest
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
                    $positionId = $this->route('position');
                    $positionSlug = str()->slug("$value $departmentId");

                    $positionSlugs = Position::where('department_id', $departmentId)->get()->filter(function ($item) use ($positionId) {
                        return $item->id != $positionId;
                    })->pluck('slug');

                    if ($positionSlugs->contains($positionSlug))
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
            'unique' => ':attribute đã tồn tại.',
        ];
    }
}
