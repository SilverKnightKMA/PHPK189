<?php
if (!defined("TEMPLATE")) {
    die("Bạn không có quyền truy cập vao file này!");
}
?>
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#"><svg class="glyph stroked home">
                        <use xlink:href="#stroked-home"></use>
                    </svg></a></li>
            <li><a href="">Quản lý bình luận</a></li>
            <li class="active">Thêm bình luận</li>
        </ol>
    </div>
    <!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Thêm bình luận</h1>
        </div>
    </div>
    <!--/.row-->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="col-md-8">
                        <?php
                        if (isset($_POST["sbm"])) {
                            $prd_id = $_POST["prd_id"];
                            $comm_name = $_POST["comm_name"];
                            $comm_mail = $_POST["comm_mail"];
                            date_default_timezone_set("Asia/Bangkok");
                            $comm_date = date("Y-m-d H:i:s");
                            $comm_details = $_POST["comm_details"];
                            $comm_status = $_POST["comm_status"];
                            $sql = "INSERT INTO comment(
                                    prd_id,
                                    comm_name,
                                    comm_mail,
                                    comm_date,
                                    comm_details,
                                    comm_status)
                                        VALUES(
                                     $prd_id,
                                    '$comm_name',
                                    '$comm_mail',
                                    '$comm_date',
                                    '$comm_details',
                                    '$comm_status')";
                            // echo $sql;        
                            mysqli_query($conn,$sql);
                            header("location:index.php?page_layout=comment");
                        }
                        ?>
                        <form role="form" method="post">
                            <div class="form-group">
                                <label>Mã sản phẩm</label>
                                <input name="prd_id" required class="form-control" placeholder="">
                            </div>
                            <div class="form-group">
                                <label>Tên người bình luận</label>
                                <input name="comm_name" required class="form-control" placeholder="">
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input name="comm_mail" required type="text" class="form-control">
                            </div>
                            <!-- <div class="form-group">
                                <label>Thời gian bình luận</label>
                                <input name="comm_date" required type="datetime-local" class="form-control">
                            </div> -->
                            <div class="form-group">
                                <label>Bình luận</label>
                                <textarea id="comm_details" required name="comm_details" class="form-control" rows="3"></textarea>
                                <script>
                                    CKEDITOR.replace('comm_details');
                                </script>
                            </div>
                            <div class="form-group">
                                <label>Trạng thái</label>
                                <select name="comm_status" class="form-control">
                                    <option value=1>Hiện</option>
                                    <option value=0>Ẩn</option>
                                </select>
                            </div>
                            <button name="sbm" type="submit" class="btn btn-success">Thêm mới</button>
                            <button type="reset" class="btn btn-default">Làm mới</button>
                    </div>
                    </form>
                </div>
            </div>
        </div><!-- /.col-->
    </div><!-- /.row -->

</div>
<!--/.main-->