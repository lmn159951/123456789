<?php
namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class NhanVienRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return (empty($this->route('nhanvien')) ? $this->createRules() : $this->updateRules());
    }

    public function createRules()
    {
        return [
            'ten_nhan_vien' => 'required|unique:nhan_vien'
        ];
    }

    public function updateRules()
    {
        return [
            'ten_nhan_vien' => ['required', Rule::unique('nhan_vien')->ignore($this->route('nhanvien'), 'ma_nhan_vien')],
        ];
    }

    public function attributes()
    {
        return [
            'ten_nhan_vien' => 'Tên chức vụ'
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
