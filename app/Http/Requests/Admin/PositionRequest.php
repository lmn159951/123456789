<?php
namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class PositionRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return (empty($this->route('position')) ? $this->createRules() : $this->updateRules());
    }

    public function createRules()
    {
        return [
            'name' => 'required|unique:positions',
        ];
    }

    public function updateRules()
    {
        return [
            'name' => ['required', Rule::unique('positions')->ignore($this->route('position'), 'id')],
        ];
    }

    public function attributes()
    {
        return [
            'name' => 'Tên chức vụ',
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
