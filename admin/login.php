<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="google-signin-client_id" content="172101516885-p3ip8sbbqio29ubojj4f7so5a257pnlt.apps.googleusercontent.com">
	<title>Vietpro Mobile Shop - Administrator</title>

	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/datepicker3.css" rel="stylesheet">
	<link href="css/bootstrap-table.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
	<script src="https://apis.google.com/js/platform.js" async defer></script>

	<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

</head>

<body>
	<?php
	if (isset($_POST["sbm"])) {
		$mail = $_POST["mail"];
		$pass = $_POST["pass"];
		$sql = "SELECT * FROM user WHERE `user_mail` = '$mail' AND `user_pass` = '$pass'";
		$query = mysqli_query($conn, $sql);
		$row = mysqli_fetch_array($query);
		$rows = mysqli_num_rows($query);
		if ($rows > 0) {
			$_SESSION["user_level"] = $row["user_level"];
			header('Location: index.php');
		} else {
			$error = '<div class="alert alert-danger">Tài khoản không hợp lệ !</div>';
		};
	};
	if (isset($_POST["email"])) {
		$mail = $_POST["email"];
		$sql = "SELECT * FROM user WHERE `user_mail` = '$mail'";
		$query = mysqli_query($conn, $sql);
		$row = mysqli_fetch_array($query);
		$rows = mysqli_num_rows($query);
		if ($rows > 0) {
			$_SESSION["user_level"] = $row["user_level"];
			header('Location: index.php');
		} else {
			$error = '<div class="alert alert-danger">Tài khoản không hợp lệ !</div>';
		};
	};
	if (isset($_POST["rst"])) {
		header('Location: rst.php');
	};
	?>
	<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Vietpro Mobile Shop - Administrator</div>
				<div class="panel-body">
					<?php
					if (isset($error)) {
						echo $error;
					};
					?>
					<form role="form" method="post">
						<fieldset>
							<div class="form-group">
								<input require class="form-control" placeholder="E-mail" name="mail" type="email" autofocus>
							</div>
							<div class="form-group">
								<input require class="form-control" placeholder="Mật khẩu" name="pass" type="password" value="">
							</div>
							<div class="checkbox">
								<label>
									<input name="remember" type="checkbox" value="Remember Me">Nhớ tài khoản
								</label>
							</div>
							<button type="submit" name="sbm" class="btn btn-primary">Đăng nhập</button>
							<button type="submit" name="rst" class="btn btn-danger">Quên mật khẩu</button>
							<hr>
							<div class="g-signin2" data-onsuccess="onSignIn"></div>
							<script>
								function onSignIn(googleUser) {
									var profile = googleUser.getBasicProfile();
									var email = profile.getEmail();
									var xhr = new XMLHttpRequest();
									xhr.open('POST', 'index.php');
									xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
									xhr.send('email=' + email);
									window.location.href = "index.php";
								}
							</script>
						</fieldset>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->
</body>

</html>