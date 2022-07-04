<?php

namespace App\Http\Controllers\NhanVien;

use App\Http\Controllers\Controller;
use App\Http\Requests\SendMailRequest;
use Mail;
use App\Mail\MailNotify;

class MailUser
{
    public string $name;
    public string $email;
    public string $comment;
}

class SendMailController extends Controller
{
    public function index(SendMailRequest $request)
    {   
        $user = new MailUser();
        $user->name = $request->post('name');
        $user->email = $request->post('email');
        $user->comment = $request->post('comment');

        $mailData = [
            'name' => $user->name,
            'email' => $user->email,
            'comment' => $user->comment
        ];

        Mail::to('lmn741236985@gmail.com')->send(new MailNotify($mailData));
           
        return redirect()->route('contact')->with('message', 'Đóng góp ý kiến thành công');
    }
}
