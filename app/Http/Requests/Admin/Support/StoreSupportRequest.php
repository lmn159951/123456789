<?php

namespace App\Http\Requests\Admin\Support;

use App\Models\Support;
use Illuminate\Foundation\Http\FormRequest;

class StoreSupportRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'start_year' => 'required',
            'end_year' => 'required|gt:start_year',
            'min_condition'=>'nullable|numeric|min:1|max:50',
            'max_condition'=>'nullable|numeric|min:1|max:100',
            'price'=>'required|numeric|min:1|max:100000000',
        ];
    }

    public function attributes()
    {
        return [
            'start_year' =>  'năm bắt đầu',
            'end_year' =>  'năm kết thúc',
            'min_condition'=> 'điều kiện tối thiểu',
            'max_condition'=> 'điều kiện tối đa',
            'price'=> 'số tiền',
        ];
    }

    protected function getValidatorInstance()
    {
        return parent::getValidatorInstance()->after(function ($validator) {
            if ($this->validated()) {
                $this->after($validator);
            }
        });
    }

    protected function after($validator)
    {
        $isExistedSupport = Support::where('start_year', $this->start_year)->where('end_year', $this->end_year)
                                ->orderBy('start_year', 'ASC')->orderBy('min_condition', 'ASC');

        if ($isExistedSupport->exists())
        {
            foreach ($isExistedSupport->get() as $key => $supportDetails)
            {
                $minCondition = $supportDetails->min_condition ?? 0;
                $maxCondition = $supportDetails->max_condition ?? 99;
                $inputMinCondition = $this->min_condition ?? 0;
                $inputMaxCondition = $this->max_condition ?? 99;

                $condition = range($minCondition, $maxCondition);
                $inputCondition = range($inputMinCondition, $inputMaxCondition);

                if (array_intersect($condition, $inputCondition))
                {
                    return $validator->errors()->add('baseError', 'Điều kiện tối thiểu hoặc điều kiện tối đa không hợp lệ!');
                }
            }

            $this->merge(['support_id' => $isExistedSupport->first()->support_id]);
        }
        else
        {
            $currentYear = date('Y');
            $currentSupport = Support::where('start_year', '<=', $currentYear)->where('end_year', '>=', $currentYear)->first();
            $supports = Support::where('start_year', '>=', $currentSupport->start_year)->orderBy('start_year', 'ASC');

            foreach ($supports->get() as $key => $supportDetails)
            {
                $condition = range($supportDetails->start_year, $supportDetails->end_year);
                $inputCondition = range($this->start_year, $this->end_year);

                if (array_intersect($condition, $inputCondition))
                {
                    return $validator->errors()->add('baseError', 'Năm bắt đầu hoặc năm kết thúc không hợp lệ!');
                }
            }

            $this->merge(['support_id' => Support::max('support_id') + 1]);
        }
    }
}
