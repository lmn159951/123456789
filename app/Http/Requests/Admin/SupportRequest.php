<?php

namespace App\Http\Requests\Admin;

use App\Models\Support;
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
            'start_year' => 'required',
            'end_year' => 'required|gt:start_year',
            'min_condition'=>'nullable|numeric|min:1|max:1000',
            'max_condition'=>'nullable|numeric|min:1|max:1000',
            'price'=>'required|numeric|min:1|max:100000000',
        ];
    }

    public function updateRules()
    {
        return [
            'start_year' => 'required',
            'end_year' => 'required|gt:start_year',
            'min_condition' => 'nullable|numeric|min:1|max:1000',
            'max_condition' => 'nullable|numeric|min:1|max:1000',
            'price' => 'required|numeric|min:1|max:100000000',
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
