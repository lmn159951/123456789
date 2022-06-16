Đăng nhập
<form action="{{ route('dangnhapPost') }}" method="POST">
    @csrf
    <input type="text" value="" placeholder="Tên đăng nhập" name="username">
    <input type="password" value="" placeholder="Mật khẩu" name="password">
    <button type="submit">Đăng nhập</button>
</form>