<?php

namespace App\Http\Requests\Admin\Agency;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class UpdateAgencyRequest extends FormRequest
{

    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'name' => ['required', Rule::unique('agencies')->ignore($this->route('agency'), 'id')],
            'address' => 'required'
        ];
    }

    public function attributes()
    {
        return [
            'name' => 'Tên đơn vị',
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
