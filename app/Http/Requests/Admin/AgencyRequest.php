<?php
namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class AgencyRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return (empty($this->route('agency')) ? $this->createRules() : $this->updateRules());
    }

    public function createRules()
    {
        return [
            'name' => 'required|unique:agencies',
            'address' => 'required'
        ];
    }

    public function updateRules()
    {
        return [
            'name' => ['required', Rule::unique('agencies')->ignore($this->route('agency'), 'id')],
            'address' => 'required'
        ];
    }

    public function attributes()
    {
        return [
            'agency_id' => 'Mã đơn vị',
            'name' => 'Tên đơn vị',
            'address' => 'Địa chỉ',
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
