  <?php
        if(isset($_POST['g-recaptcha-response']) && $_POST['g-recaptcha-response'] ){
            $secret = "6LfxWD4UAAAAANVsgSNnsuZGa4bHnQXU291mQslx";
            $ip = $_SERVER['REMOTE_ADDR'];
            $captcha = $_POST['g-recaptcha-response'];
            $rps = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=6LfxWD4UAAAAANVsgSNnsuZGa4bHnQXU291mQslx&response=$captcha&remoteip=$ip");
        }
    ?>
	<!DOCTYPE html>
	<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Document</title>
		<script src='https://www.google.com/recaptcha/api.js'></script>
	<body>
		<!-- </form> -->
		<form action="../pages/exDangKy.php" method="post" class="frmdk">
			<h5>Thông tin cá nhân</h5>
			Họ và tên của bạn: <input type="text" name="txtHoTen"> <br>
			Ngày sinh: <select name="txtNgaySinh">
							  <option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7</option><option>8</option><option>9</option><option>10</option><option>11</option><option>12</option><option>13</option><option>14</option><option>15</option><option>16</option><option>17</option><option>18</option><option>19</option><option>20</option><option>21</option><option>22</option><option>23</option><option>24</option><option>25</option><option>26</option><option>27</option><option>28</option><option>29</option><option>30</option>
						</select>
						<select>
						  		<option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7</option><option>8</option><option>9</option><option>10</option><option>11</option><option>12</option>
						  
						</select>
						<select>
						  <option >2017</option>
						</select> <br>

			Bạn sống tại: <input type="text" name="txtNoiSinh"> <br><br>
			<h5>Thông tin tài khoản</h5>
			Tên đăng nhập: <input type="text" name="txtTenDangNhap"> <br>
			Mật khẩu: <input type="password" name="txtMatKhau"> <br>
			Xác nhận mật khẩu: <input type="password" name="txtMatKhau"> <br> <br>
			<h5>Mã kiểm tra </h5> <div class="g-recaptcha" data-sitekey="6LfrWD4UAAAAAN75Kyfphzv8yEDC5fky_MFzv67M"></div>

			<h5></h5>
			<input type="submit" value="Đăng Ký">
			<input type="reset" value="Nhập lại" />
		</form>
			
	</body>
	</html>