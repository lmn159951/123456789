<?php
namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class TourRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return (empty($this->route('tour')) ? $this->createRules() : $this->updateRules());
    }

    public function createRules()
    {
        return [
            'name' => 'required|unique:tours',
            'image' => 'required|mimes:jpeg,jpg,png,gif',
            'description_file' => 'required|mimes:doc,pdf,docx',
            'tour_start_date' => 'required|after:now',
            'tour_end_date' => 'required|after_or_equal:tour_start_date',
            'registration_start_date' => 'required|after:now',
            'registration_end_date' => 'required|after_or_equal:registration_start_date|before:tour_start_date',
            'price' => 'required|numeric|min:1000|max:1000000000',
            'max_people' => 'required|numeric|min:2|max:1000',
        ];
    }

    public function updateRules()
    {
        return [
            'name' => ['required', Rule::unique('tours')->ignore($this->route('tour'), 'id')],
            'image' => 'nullable|mimes:jpeg,jpg,png,gif',
            'description_file' => 'nullable|mimes:doc,pdf,docx',
            'tour_start_date' => 'required|after:now',
            'tour_end_date' => 'required|after_or_equal:tour_start_date',
            'registration_start_date' => 'required',
            'registration_end_date' => 'required|after_or_equal:registration_start_date|before:tour_start_date',
            'price' => 'required|numeric|min:1000|max:1000000000',
            'max_people' => 'required|numeric|min:2|max:1000',
        ];
    }

    public function messages()
    {
        return [
            'required' => ':attribute không được để trống.',
            'unique' => ':attribute đã tồn tại.',
            'after' => ':attribute phải sau ngày hiện tại.',
            'after_or_equal' => ':attribute phải bằng hoặc sau ngày bắt đầu.',
            'before'=>':attribute phải trước ngày bắt đầu tour.',
            'mimes' => ':attribute có định dạng không hợp lệ.',
            'min' => ':attribute phải lớn hơn hoặc bằng :min',
            'numeric' => ':attribute phải là số',
            'max' => ':attribute phải nhỏ hơn hoặc bằng :max'
        ];
    }

    public function attributes()
    {
        return [
            'tour_id' => 'Mã tour',
            'name' => 'Tên tour',
            'image' => 'Hình ảnh',
            'description_file' => 'File mô tả',
            'tour_start_date' => 'Ngày bắt đầu tour',
            'tour_end_date' => 'Ngày kết thúc tour',
            'registration_start_date' => 'Ngày bắt đầu đăng ký',
            'registration_end_date' => 'Ngày kết thúc đăng ký',
            'price' => 'Giá tiền',
            'max_people' => 'Số người tối đa',
        ];
    }
}
