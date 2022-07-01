<?php

namespace App\Http\Requests\Admin\Tour;

use App\Models\Tour;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class UpdateTourRequest extends FormRequest
{

    public function authorize()
    {
        return $this->user()->can('update', $this->route('tour'));
    }

    public function rules()
    {
        return [
            'name' => ['required', Rule::unique('tours')->ignore($this->route('tour'), 'id')],
            'file_image' => [
                'nullable',
                function($attributes, $value, $fail) {
                    $extension = pathinfo($value, PATHINFO_EXTENSION);
                    $allowedExtensions = explode(',', 'jpeg,jpg,png,gif');

                    if (!in_array($extension, $allowedExtensions))
                    {
                        return $fail("$attributes không hợp lệ");
                    }
                }
            ],
            'file_description' => [
                'nullable',
                function($attributes, $value, $fail) {
                    $extension = pathinfo($value, PATHINFO_EXTENSION);
                    $allowedExtensions = explode(',', 'doc,pdf,docx');

                    if (!in_array($extension, $allowedExtensions))
                    {
                        return $fail("$attributes không hợp lệ");
                    }
                }
            ],
            'registration_start_date' => 'required|after:now',
            'registration_end_date' => 'required|after:registration_start_date',
            'tour_start_date' => 'required|after:registration_end_date',
            'tour_end_date' => 'required|after:tour_start_date',
            'price' => 'required|numeric|min:1000|max:1000000000',
            'max_people' => 'required|numeric|min:2|max:1000',
            'region_id'=>'required|numeric|exists:regions,id'
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
