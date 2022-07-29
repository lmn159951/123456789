<?php

namespace App\Http\Requests\Admin\Department;

use App\Models\Agency;
use App\Models\Department;
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
            'name' => [
                'required',
                function ($attributes, $value, $fail) {
                    $agencyId = Agency::where('slug', $this->route('agencySlug'))->value('id');
                    $departmentId = $this->route('department');
                    $departmentSlug = str()->slug("$value $agencyId");

                    $departmentSlugs = Department::where('agency_id', $agencyId)->get()->filter(function ($item) use ($departmentId) {
                        return $item->id != $departmentId;
                    })->pluck('slug');

                    if ($departmentSlugs->contains($departmentSlug))
                    {
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
            'unique' => ':attribute đã tồn tại.',
        ];
    }
}
