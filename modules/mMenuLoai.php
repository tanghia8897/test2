
    <h4 class="hang">Loại sản phẩm</h4>
    <?php
        $sql = "SELECT LoaiSanPham.MaLoaiSanPham, LoaiSanPham.TenLoaiSanPham
                FROM LoaiSanPham
                WHERE LoaiSanPham.BiXoa = FALSE";
        $result = DataProvider::ExecuteQuery($sql);
        while($row = mysqli_fetch_array($result))
        {
            $name = $row["TenLoaiSanPham"];
            $url = "index.php?a=3&id=".$row["MaLoaiSanPham"];
            include "templates/tempMenu.php";
        }
    ?>
 