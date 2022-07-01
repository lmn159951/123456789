<?php

namespace App\Http\Requests\Admin\Support;

use Illuminate\Foundation\Http\FormRequest;

class StoreSupportRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'start_year' => 'required',
            'end_year' => 'required|gt:start_year',
            'min_condition'=>'nullable|numeric|min:1|max:1000',
            'max_condition'=>'nullable|numeric|min:1|max:1000',
            'price'=>'required|numeric|min:1|max:100000000',
        ];
    }

    public function attributes()
    {
        return [
            'start_year' =>  'Năm bắt đầu',
            'end_year' =>  'Năm kết thúc',
            'min_condition'=> 'Điều kiện tối thiểu',
            'max_condition'=> 'Điều kiện tối đa',
            'price'=> 'Số tiền',
        ];
    }

    public function messages()
    {
        return [
            'required' => ':attribute không được để trống.',
            'gt' => ':attribute phải lớn hơn :start_year.',
            'numeric' => ':attribute phải là một số nguyên.',
            'min' => ':attribute phải có giá trị ít nhất là :min.',
            'max' => ':attribute có giá trị lớn nhất là :max.',
        ];
    }
}
