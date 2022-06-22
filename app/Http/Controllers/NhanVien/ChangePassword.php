<?php

namespace App\Http\Controllers\NhanVien;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\NhanVien\ChangePasswordRequest;
use App\Models\User;

class ChangePassword extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('nhanvien.pages.thaydoimatkhau');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(ChangePasswordRequest $request)
    {
        $request->validated();

        //Check old password
        $user = Auth::guard('user')->user();
        if(!Hash::check($request->oldPassword, $user->password))
        {
            $request->session()->flash('error', 'Mật khẩu cũ không đúng');
            return redirect()->route('nhanvien.thay-doi-mat-khau.index');
        }
        
        //Update password
        $user->update([
            'password' => bcrypt($request->input('newPassword'))
        ]);

        $request->session()->flash('message', 'Thay đổi mật khẩu thành công');
        return redirect()->route('nhanvien.thay-doi-mat-khau.index');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
