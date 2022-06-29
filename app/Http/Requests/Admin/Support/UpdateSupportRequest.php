<?php

namespace App\Http\Requests\Admin\Support;

use Illuminate\Foundation\Http\FormRequest;

class UpdateSupportRequest extends FormRequest
{

    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'start_year' => 'required|integer|gt:2022',
            'end_year' => 'required|integer|gt:start_year',
            'min_condition'=>'nullable|numeric|min:1|max:1000',
            'max_condition'=>'nullable|numeric|min:1|max:1000',
            'price'=>'required|numeric|min:1|max:100000000',
        ];
    }

    public function attributes()
    {
        return [
            'start_year' =>  'năm bắt đầu',
            'end_year' =>  'năm kết thúc',
            'min_condition'=> 'điều kiện tối thiểu',
            'max_condition'=> 'điều kiện tối đa',
            'price'=> 'số tiền',
        ];
    }
}
