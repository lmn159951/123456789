<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class SupportRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return (empty($this->route('support')) ? $this->createRules() : $this->updateRules());
    }

    public function createRules()
    {
        return [
            'start_year' => 'required|integer|gt:2022',
            'end_year' => 'required|integer|gt:start_year',
            'min_condition'=>'nullable',
            'max_condition'=>'nullable',
            'price'=>'required|numeric|min:1',
        ];
    }

    public function updateRules()
    {
        return [
            'start_year' => 'required|integer|gt:2022',
            'end_year' => 'required|integer|gt:start_year',
            'min_condition'=>'nullable|integer',
            'max_condition'=>'nullable|integer',
            'price'=>'required|numeric|min:1',
        ];
    }

    public function attributes()
    {
        return [
            'start_year' => 'Năm bắt đầu',
            'end_year' => 'Năm kết thúc',
            'min_condition'=>'Điều kiện tối thiểu',
            'max_condition'=>'Điều kiện tối đa',
            'price'=>'Số tiền',
        ];
    }
}
