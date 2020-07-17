<?php
if (!defined("TEMPLATE")) {
	die("Bạn không có quyền truy cập vao file này!");
}
?>
<?php
$comm_id = $_GET["comm_id"];
$sql = "SELECT * FROM comment
		WHERE comm_id = $comm_id";
$query = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($query);
?>

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
	<div class="row">
		<ol class="breadcrumb">
			<li><a href="#"><svg class="glyph stroked home">
						<use xlink:href="#stroked-home"></use>
					</svg></a></li>
			<li><a href="">Quản lý bình luận</a></li>
			<li class="active">Bình luận số: <?php echo $row["comm_id"]; ?></li>
		</ol>
	</div>
	<!--/.row-->

	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Bình luận:<?php echo $row["comm_id"]; ?></h1>
		</div>
	</div>
	<!--/.row-->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="col-md-8">
					<?php 
                            if(isset($_POST["sbm"])){
                                $comm_name=$_POST["comm_name"];
                                $comm_mail=$_POST["comm_mail"];
                                $comm_date=$_POST["comm_date"];
                                $comm_details=$_POST["comm_details"];
                                $comm_status=$_POST["comm_status"];
                                $sql= "UPDATE comment
                                    	SET comm_name = '$comm_name' ,
                                    		comm_mail = '$comm_mail',
                                    		comm_date = '$comm_date',
                                            comm_details = '$comm_details',
                                            comm_status =$comm_status
                                        WHERE comm_id = $comm_id";
                                
                                mysqli_query($conn,$sql);   
                                 header("location:index.php?page_layout=comment");
                            }
                                // <div class="alert alert-danger">Email đã tồn tại !</div>
                                ?>
						<!-- <div class="alert alert-danger">Email đã tồn tại, Mật khẩu không khớp !</div> -->
						<form role="form" method="post">
							<div class="form-group">
								<label>Tên người bình luận</label>
								<input type="text" name="comm_name" required class="form-control" value="<?php echo $row["comm_name"]; ?>" placeholder="">
							</div>
							<div class="form-group">
								<label>Email</label>
								<input type="text" name="comm_mail" required value="<?php echo $row["comm_mail"]; ?>" class="form-control">
							</div>
							<div class="form-group">
								<label>Thời gian</label>
								<input type="date time" name="comm_date" required value="<?php echo $row["comm_date"]; ?>" class="form-control">
							</div>
							<div class="form-group">
								<label>Bình luận</label>
								<textarea id="comm_details" required name="comm_details" class="form-control" rows="3"><?php echo $row["comm_details"];?></textarea>
                            <script>
                                CKEDITOR.replace( 'comm_details' );
                            </script>
							</div>
							<div class="form-group">
								<label>Trạng thái</label>
								<select name="comm_status" class="form-control">
									<option <?php if($row["comm_status"] == 1) {echo 'selected';} ?> value=1>Hiện</option>
									<option <?php if($row["comm_status"] == 0) {echo 'selected';} ?> value=0 >Ẩn</option>
								</select>
							</div>
							<button type="submit" name="sbm" class="btn btn-primary">Cập nhật</button>
							<button type="reset" class="btn btn-default">Làm mới</button>
					</div>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->

</div>
<!--/.main-->