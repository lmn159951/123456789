<?php

namespace App\Http\Controllers\NhanVien;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Str;
use App\Mail\ForgotPassword;
use Mail;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\NhanVien\RecoveryAccountRequest;
use Illuminate\Support\Facades\Password;
use Illuminate\Support\Facades\Hash;


class QuenMatKhauController extends Controller
{
    //
    public function index()
    {
        return view('nhanvien.pages.quenmatkhau');
    }

    public function forgotpassword(Request $request)
    {
        // $request->validate(['email' => 'required|email']);
 
        //     $status = Password::sendResetLink(
        //         $request->only('email')
        //     );
        
        //     return $status === Password::RESET_LINK_SENT
        //         ? back()->with(['status' => __($status)])
        //         : back()->withErrors(['email' => __($status)]);

        if(! $request->isMethod('post'))
            return redirect()->route('forgotpassword');

        // $request->fulfill();
        $email = $request->post('email');
        $user = User::where('email', $email);
        $randomToken = Str::random(40);
        $user->update(['user_token' => $randomToken]);
        
        //Send token to mail
        $mailData = [
            'link' => route('recoveryaccount', $randomToken),
        ];

        Mail::to($email)->send(new ForgotPassword($mailData));

        $request->session()->flash('message', 'Truy cập '.$email.' để thay đổi mật khẩu');
        return redirect()->route('forgotpassword');
    }

    public function recoveryaccount($token)
    {
        $user = User::where('user_token', $token);

        if($user->count() == 0)
            return redirect()->route('login');

        
        return view('nhanvien.pages.khoiphuctaikhoan')->with('token', $token);
    }

    public function recoveryaccountPost(RecoveryAccountRequest $request)
    {
        $user = User::where('user_token', $request->post('user_token'));
        if($user->count() == 0)
            return redirect()->route('login');
        $user->update(['password' => Hash::make($request->post('newPassword')), 'user_token' => '']);

        return redirect()->route('login');
    }
}
