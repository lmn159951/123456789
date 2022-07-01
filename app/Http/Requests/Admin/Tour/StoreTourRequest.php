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
                    $extension = pathinfo($value, PATHINFO_EXTENSION);
                    $allowedExtensions = explode(',', 'jpeg,jpg,png,gif');

                    if (!in_array($extension, $allowedExtensions))
                    {
                        return $fail("File Hình ảnh không hợp lệ");
                    }
                }
            ],
            'file_description' => [
                'required',
                function($attributes, $value, $fail) {
                    $extension = pathinfo($value, PATHINFO_EXTENSION);
                    $allowedExtensions = explode(',', 'doc,pdf,docx');

                    if (!in_array($extension, $allowedExtensions))
                    {
                        return $fail("File mô tả không hợp lệ");
                    }
                }
            ],
            'registration_start_date' => 'required|after:now',
            'registration_end_date' => 'required|after:registration_start_date',
            'tour_start_date' => 'required|after:registration_end_date',
            'tour_end_date' => 'required|after:tour_start_date',
            'price' => 'required|numeric|min:1000|max:1000000000',
            'max_people' => 'required|numeric|min:2|max:1000',
            'region_id'=>'required|numeric|exists:regions,id',
            "agency_ids"    => "required|array"
        ];
    }

    public function attributes()
    {
        return [
            'name' => 'tên tour',
            'image' => 'hình ảnh',
            'description_file' => 'file mô tả',
            'tour_start_date' => 'ngày bắt đầu tour',
            'tour_end_date' => 'ngày kết thúc tour',
            'registration_start_date' => 'ngày bắt đầu đăng ký',
            'registration_end_date' => 'ngày kết thúc đăng ký',
            'price' => 'giá tiền',
            'max_people' => 'số người tối đa',
        ];
    }

}
