<h1>
    <?php
        $id = 1;
        if(isset($_GET['id']))
            $id = $_GET['id'];
        switch ($id)
        {
            case 1:
                echo "Chức năng không hỗ trợ";
                break;
            case 2:
                echo "Bạn không có quyền truy cập chức năng này";
                break;
            case 3:
                echo "Thiếu thông tin để thực hiện chức năng này";
                break;
            case 4:
                echo "Tên đăng nhập hoặc mật khẩu bị sai";
                break;
            default:
                echo "Lỗi ngoại lệ :(( !";
        }
    ?>
</h1>
<img src='images/error.jpg' width="98%" />