<?php

namespace App\Http\Requests\DonVi;

use Illuminate\Foundation\Http\FormRequest;

class CreateDonViRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'ma_don_vi' => 'nullable',
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
