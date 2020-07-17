<!-- <?php
if(!defined("TEMPLATE")){
	die("Bạn không có quyền truy cập vao file này!");
}
?> -->
<?php
$rep_id = $_GET["rep_id"];
$sql = "SELECT * FROM rep_cmt
		WHERE rep_id = $rep_id";
$query = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($query);
?>
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
	<div class="row">
		<ol class="breadcrumb">
			<li><a href="#"><svg class="glyph stroked home">
						<use xlink:href="#stroked-home"></use>
					</svg></a></li>
			<li><a href="">Quản lý từ khoá</a></li>
			<li class="active"><?php echo $row["rep_keyword"];?></li>
		</ol>
	</div>
	<!--/.row-->

	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Từ khoá:<?php echo $row["rep_keyword"];?></h1>
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
							$rep_keyword = $_POST["rep_keyword"];
							$sql = "UPDATE rep_cmt
							SET rep_keyword ='$rep_keyword'
							WHERE rep_id = $rep_id";
							$query = mysqli_query($conn, $sql);
							if ($query === true) {
								header("location:index.php?page_layout=rep_comment");
							} else {
								echo '<div  class="alert alert-danger"> Từ khoá đã tồn tại !</div>';
							}
						}

						?>
						<!-- <div class="alert alert-danger">từ khoá đã tồn tại !</div> -->
						<form role="form" method="post">
							<div class="form-group">
								<label>Tên từ khoá:</label>
								<input type="text" name="rep_keyword" required value="<?php echo $row["rep_keyword"];?>" class="form-control" placeholder="Tên từ khoá...">
							</div>
							<button type="submit" name="sbm" class="btn btn-primary">Cập nhật</button>
							<button type="reset" class="btn btn-default">Làm mới</button>
					</div>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div>
	<!--/.main-->