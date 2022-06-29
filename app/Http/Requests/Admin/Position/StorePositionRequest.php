<?php

namespace App\Http\Requests\Admin\Position;

use Illuminate\Foundation\Http\FormRequest;

class StorePositionRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'name' => 'required|unique:positions',
        ];
    }

    public function attributes()
    {
        return [
            'name' => 'Tên chức vụ',
        ];
    }

}
