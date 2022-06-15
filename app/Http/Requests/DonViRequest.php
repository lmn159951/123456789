<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class DonViRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'ten_don_vi' => 'required|unique:don_vi',
            'dia_chi' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'required' => ':attribute không được để trống.',
            'unique' => ':attribute đã tồn tại.',
        ];
    }

    public function attributes()
    {
        return [
            'ten_don_vi' => 'Tên đơn vị',
            'dia_chi' => 'Địa chỉ',
        ];
    }
}
