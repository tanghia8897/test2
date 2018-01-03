<?php
        include_once "DataProvider.php"
        // Nếu không phải là sự kiện đăng ký thì không xử lý
        if(!isset($_POST['txtHoTen']))die();
        //Nhúng file kết nối với database
        
        //Khai báo utf-8 để hiển thị được tiếng việt
        header('Content-Type: text/html; charset=UTF-8');
              
        //Lấy dữ liệu từ file dangky.php
        $hoten = addslashes($_POST['txtHoTen']);
        $ngaysinh   = addslashes($_POST['txtNgaySinh']);
        $noisinh      = addslashes($_POST['txtNoiSinh']);
        $tendangnhap   = addslashes($_POST['txtTenDangNhap']);
        $matkhau   = addslashes($_POST['txtMatKhau']);
        
              
        //Kiểm tra người dùng đã nhập liệu đầy đủ chưa
        if (!$hoten || !$ngaysinh || !$noisinh || !$tendangnhap || !$matkhau)
        {
            echo "Vui lòng nhập đầy đủ thông tin. <a href='javascript: history.go(-1)'>Trở lại</a>";
            exit;
        }
            // Mã hóa mật khẩu
            $matkhau = md5($matkhau);    
        //Kiểm tra tên đăng nhập này đã có người dùng chưa
        if (mysqli_num_rows(mysqli_query($connection,"SELECT TenDangNhap FROM taikhoan WHERE TenDangNhap ='$tendangnhap'")) > 0){
            echo "Tên đăng nhập này đã có người dùng. Vui lòng chọn tên đăng nhập khác. <a href='javascript: history.go(-1)'>Trở lại</a>";
            exit;
        }
       
        //Lưu thông tin thành viên vào bảng
        @$addmember = mysqli_query($connection,"
            INSERT INTO taikhoan (
                TenHienThi,
                TenDangNhap,
                MatKhau,
                DiaChi    
            )
            VALUES (
                '{$hoten}',
                '{$tendangnhap}',
                '{$matkhau}',
                '{$noisinh}'
            )
        ");
                              
        //Thông báo quá trình lưu
        if ($addmember)
            echo "Quá trình đăng ký thành công. <a href='index.php'>Về trang chủ</a>";
        else
            echo "Có lỗi xảy ra trong quá trình đăng ký. <a href='exDangKy.php'>Thử lại</a>";
?>