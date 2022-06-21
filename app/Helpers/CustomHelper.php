<?php
if (!function_exists('convertName'))
{
    function convertName($str) {
		$str = preg_replace("/(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)/", 'a', $str);
		$str = preg_replace("/(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)/", 'e', $str);
		$str = preg_replace("/(ì|í|ị|ỉ|ĩ)/", 'i', $str);
		$str = preg_replace("/(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ)/", 'o', $str);
		$str = preg_replace("/(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)/", 'u', $str);
		$str = preg_replace("/(ỳ|ý|ỵ|ỷ|ỹ)/", 'y', $str);
		$str = preg_replace("/(đ)/", 'd', $str);
		$str = preg_replace("/(À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ)/", 'A', $str);
		$str = preg_replace("/(È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ)/", 'E', $str);
		$str = preg_replace("/(Ì|Í|Ị|Ỉ|Ĩ)/", 'I', $str);
		$str = preg_replace("/(Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ)/", 'O', $str);
		$str = preg_replace("/(Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ)/", 'U', $str);
		$str = preg_replace("/(Ỳ|Ý|Ỵ|Ỷ|Ỹ)/", 'Y', $str);
		$str = preg_replace("/(Đ)/", 'D', $str);
		$str = preg_replace("/(\“|\”|\‘|\’|\,|\!|\&|\;|\@|\#|\%|\~|\`|\=|\_|\'|\]|\[|\}|\{|\)|\(|\+|\^)/", '-', $str);
		$str = preg_replace("/( )/", ' ', $str);
		return $str;
	}
}

if (!function_exists('getFirstName'))
{
    function getFirstName(string $fullName)
    {
        $explodedFullName = explode(' ', $fullName);
        $firstName = end($explodedFullName);
		return strtolower($firstName);
	}
}

if (!function_exists('getName'))
{
    function getName(string $fullName)
    {
        $explodedFullName = explode(' ', $fullName);
        $numberWords = count($explodedFullName);
        $fullname = $explodedFullName[$numberWords - 2].' '.$explodedFullName[$numberWords - 1];
		return strtolower($fullname);
	}
}

if (!function_exists('getFullName'))
{
    function getFullName(string $fullName)
    {
        $explodedFullName = explode(' ', $fullName);
        $explodedFullName = array_map('strtolower', $explodedFullName);
		return implode('', $explodedFullName);
	}
}

if (!function_exists('paddingNumberLeadingZeros'))
{
    function paddingNumberLeadingZeros(int $number, int $length = 2)
    {
		return str_pad($number,$length,'0',STR_PAD_LEFT);
	}
}

if (!function_exists('currency_format')) {
    function currency_format($number, $suffix = 'đ')
    {
        if (!empty($number))
        {
            return number_format($number, 0, ',', '.') . "{$suffix}";
        }
    }
}

?>

