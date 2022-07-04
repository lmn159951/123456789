<?php

namespace App\Http\Requests\Admin\Tour;

use Illuminate\Foundation\Http\FormRequest;

class StoreTourRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'name' => 'required|unique:tours',
            'file_image' => [
                'required',
                function($attributes, $value, $fail) {
                    if (!in_array($value->getClientOriginalExtension(), ['png', 'jpg', 'jpeg', 'gif'])) {
                        return $fail("File Hình ảnh không hợp lệ");
                    }
                }
            ],
            'file_description' => [
                'required',
                function($attributes, $value, $fail) {
                    if (!in_array($value->getClientOriginalExtension(), ['doc', 'docx', 'pdf'])) {
                        return $fail("File mô tả không hợp lệ");
                    }
                }
            ],
            'registration_start_date' => 'required|after_or_equal:today',
            'registration_end_date' => 'required|after:registration_start_date',
            'tour_start_date' => 'required|after:registration_end_date',
            'tour_end_date' => 'required|after:tour_start_date',
            'price' => 'required|numeric|min:1000|max:1000000000',
            'max_people' => 'required|numeric|min:2|max:1000',
            'region_id'=>'required|numeric|exists:regions,id',
            'agency_ids'    => 'required|exists:agencies,id'
        ];
    }

    public function attributes()
    {
        return [
            'name' => 'Tên tour',
            'file_image' => 'Hình ảnh',
            'file_description' => 'File mô tả',
            'tour_start_date' => 'Ngày bắt đầu tour',
            'tour_end_date' => 'Ngày kết thúc tour',
            'registration_start_date' => 'Ngày bắt đầu đăng ký',
            'registration_end_date' => 'Ngày kết thúc đăng ký',
            'price' => 'Giá tiền',
            'max_people' => 'Số người tối đa',
            'agency_ids' => 'Phần chọn đơn vị'
        ];
    }

    public function messages()
    {
        return [
            'required' => ':attribute không được để trống.',
            'unique' => ':attribute đã tồn tại.',
            'numeric' => ':attribute phải là một số nguyên.',
            'min' => ':attribute phải có giá trị ít nhất là :min.',
            'max' => ':attribute có giá trị lớn nhất là :max.',
            'mimes' => ':attribute có định dạng không hợp lệ.',
            'after' => ':attribute không hợp lệ.',
        ];
    }

}
