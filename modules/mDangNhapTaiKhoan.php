<form class="frmdn" name="frmLogin" action="index.php?a=10" method="post" onsubmit="return KiemTraDangNhap()">
    Tài khoản: <input class="frm" name="txtUS" type="text" id="txtUS" size="15" maxlength="20" width="15">
    Mật khẩu: <input class="frm" name="txtPS" type="password" id="txtPS" size="15" maxlength="20" width="15">
    <input type="submit" value="Đăng nhập" class="fa fa-user">
    <input type="button" value="Đăng ký" class="fa fa-file-text-o" onclick="ChuyenTrangDangKy()" >
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
    function ChuyenTrangDangKy()
    {
        window.location = "modules/mDangKyTaiKhoan.php";
    }
</script>