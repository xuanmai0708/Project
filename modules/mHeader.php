<div id="logo">
        <h1>Shop NMN</h1> <p>THIÊN ĐƯỜNG SON</p>
</div>
<div id="login">
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
<img src="img/cover.jpg" width="1000px" height="200px">