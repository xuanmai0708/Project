<form name="frmLogin" action="index.php?a=10" method="post" onsubmit="return KiemTraDangNhap()">
    Tài khoản: <input name="txtUS" type="text" id="txtUS" size="15" maxlength="20" width="15"><br/>
    Mật khẩu: <input name="txtPS" type="password" id="txtPS" size="15" maxlength="20" width="15"><br/>
    <input type="submit" value="Đăng nhập" style="color: white; font-weight: bold; background: #009900">
    <input type="button" value="Đăng ký" onclick="ChuyenTrangDangKy()" style="color: white; font-weight: bold; background: #0066FF">
</form>
<script type="text/javascript">
    function KiemTraDangNhap()
    {
        var control = document.getElementById("txtUS");
        if(control.value == "")
        {
            control.focus();
            alert("Tên đăng nhập không được rỗng");
            return false;
        }

        control = document.getElementById("txtPS");
        if(control.value == "")
        {
            control.focus();
            alert("Mật khẩu không được rỗng");
            return false;
        }

        return true;
    }
</script>