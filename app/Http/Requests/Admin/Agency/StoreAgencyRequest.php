<?php

namespace App\Http\Requests\Admin\Agency;

use Illuminate\Foundation\Http\FormRequest;

class StoreAgencyRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'name' => 'required|unique:agencies',
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

    /**
     * Attach callbacks to be run after validation is completed.
     *
     * @param  \Illuminate\Contracts\Validation\Validator $validator
     * @return callback
     */
    public function after($validator)
    {
    }
}
