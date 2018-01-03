
<div class="container spmoi">
    <a href="#" id="spmoi">SẢN PHẨM MỚI</a>
    <hr>
    <div class="row">
      <?php
            $sql = "SELECT SanPham.MaSanPham, SanPham.TenSanPham, SanPham.GiaSanPham, SanPham.HinhURL
                    FROM SanPham
                    ORDER BY SanPham.NgayNhap DESC
                    LIMIT 0, 3";
            $result = DataProvider::ExecuteQuery($sql);
            while($row = mysqli_fetch_array($result))
            {
                $hinhURL = $row["HinhURL"];
                $tenSanPham = $row["TenSanPham"];
                $giaSanPham = $row["GiaSanPham"];
                $maSanPham = $row["MaSanPham"];
                include ("templates/tempThumbProduct.php");
            }
        ?>
    </div> <!-- end row -->
  </div> <!-- end container -->