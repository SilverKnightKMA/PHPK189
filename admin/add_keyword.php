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
			<li><a href="">Quản lý từ xấu</a></li>
			<li class="active">Thêm từ khoá</li>
		</ol>
	</div>
	<!--/.row-->

	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Thêm từ khoá</h1>
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
							$sql = "INSERT INTO rep_cmt(rep_keyword)
							VALUES ('$rep_keyword')";
							$query = mysqli_query($conn, $sql);
							if ($query === true) {
								header("location:index.php?page_layout=rep_comment");
							} else {
								echo '<div  class="alert alert-danger"> Từ khoá đã tồn tại !</div>';
							}
						}

						?>

						<form role="form" method="post">
							<div class="form-group">
								<label>Tên từ khoá:</label>
								<input required type="text" name="rep_keyword" class="form-control" placeholder="Từ khoá...">
							</div>
							<button type="submit" name="sbm" class="btn btn-success">Thêm mới</button>
							<button type="reset" class="btn btn-default">Làm mới</button>
					</div>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div>
	<!--/.main-->