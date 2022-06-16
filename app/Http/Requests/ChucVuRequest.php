<?php
namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class ChucVuRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return (empty($this->route('chucvu')) ? $this->createRules() : $this->updateRules());
    }

    public function createRules()
    {
        return [
            'ten_chuc_vu' => 'required|unique:chuc_vu'
        ];
    }

    public function updateRules()
    {
        return [
            'ten_chuc_vu' => ['required', Rule::unique('chuc_vu')->ignore($this->route('chucvu'), 'ma_chuc_vu')],
        ];
    }

    public function attributes()
    {
        return [
            'ten_chuc_vu' => 'Tên chức vụ'
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
