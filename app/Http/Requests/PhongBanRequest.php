<?php
namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class PhongBanRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return (empty($this->route('phongban')) ? $this->createRules() : $this->updateRules());
    }

    public function createRules()
    {
        return [
            'ten_phong_ban' => 'required|unique:phong_ban'
        ];
    }

    public function updateRules()
    {
        return [
            'ten_phong_ban' => ['required', Rule::unique('phong_ban')->ignore($this->route('phongban'), 'ma_phong_ban')],
        ];
    }

    public function attributes()
    {
        return [
            'ten_phong_ban' => 'Tên phòng ban'
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
