
<div>
      <?php
          if(isset($_SESSION['maTaiKhoan']))
          {
              include ("modules/mThongTinTaiKhoan.php");
          }
          else
          {
              include ("modules/mDangNhapTaiKhoan.php");
          }
      ?>
  </div>

  <div id="Header">
      <div class="row">
          <div class="logo">
              <a href="index.php"><img src="images/logo.jpg" ></a>                
          </div>
          <h1 >PALLADIUM STORE</h1>
          <div id="hr"></div>
          <p id="sub">PALLADIUM STORE VIỆT NAM</p>
      </div>
  </div>

  <div class="bottomheader">
    <div class="container">
          <nav class="navbar navbar-light bg-faded trongsuot">
            <button class="navbar-toggler hidden-sm-up" type="button" data-toggle="collapse" data-target="#mtren">
            </button>
            <div class="collapse navbar-toggleable-xs">
              <ul class="nav nav-pills">
              <li class="nav-item">
                <a class="nav-link active" href="#">Trang chủ</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Thông tin</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Tài khoản</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Liên hệ</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Admin</a>
              </li>
                <form class="form-inline navbar-form pull-right sr" action="index.php?a=5" method="post">
                  <input class="form-control " type="text" placeholder="Search.." name="search">
                  <input class="fa fa-search btn btn-primary" name="ok" type="submit" value="search">
                </form>
              </ul>
            </div>
          </nav>
    </div> <!-- end container -->
  </div> <!-- end bottomheader -->

	<div class="top">
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox"> 
            <div class="carousel-item active">
              <img src="images/1.jpg" alt="First slide" style="width: 1920px;height: 450px;" >  
            </div>
            <div class="carousel-item">
              <img src="images/2.jpg" alt="First slide" style="width: 1920px;height: 450px;">
            </div>
            <div class="carousel-item">
              <img src="images/3.jpg" alt="First slide" style="width: 1920px;height: 450px;">
            </div>
          </div>
          <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="icon-prev" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="icon-next" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div> <!-- het carousel -->
	</div> <!-- end top -->	