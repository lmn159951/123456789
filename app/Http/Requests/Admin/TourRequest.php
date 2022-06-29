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
            'file_image' => 'required|mimes:jpeg,jpg,png,gif',
            'file_description' => 'required|mimes:doc,pdf,docx',
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

    public function updateRules()
    {
        return [
            'name' => ['required', Rule::unique('tours')->ignore($this->route('tour'), 'id')],
            'file_image' => 'nullable|mimes:jpeg,jpg,png,gif',
            'file_description' => 'nullable|mimes:doc,pdf,docx',
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
