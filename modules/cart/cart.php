<?php
include "PHPMailer-master/src/PHPMailer.php";
include "PHPMailer-master/src/Exception.php";
include "PHPMailer-master/src/OAuth.php";
include "PHPMailer-master/src/POP3.php";
include "PHPMailer-master/src/SMTP.php";

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;	
?>

<script>
function buyNow() {
    document.getElementById("buy-now").submit();
}
</script>
 
 <!--	Cart	-->
                <div id="my-cart">
                    <?php
                    if (isset($_SESSION["cart"])) {
                        $arr_id= array();
                        foreach($_SESSION["cart"] as $prd_id => $qtt){
                            $arr_id[] = $prd_id;
                        };
                        $str_id = implode(', ', $arr_id);
                        $sql="SELECT * from product
                                WHERE prd_id IN ($str_id)";
                        $query= mysqli_query($conn, $sql);
                    ?>
                    <div class="row">
                        <div class="cart-nav-item col-lg-7 col-md-7 col-sm-12">Thông tin sản phẩm</div>
                        <div class="cart-nav-item col-lg-2 col-md-2 col-sm-12">Tùy chọn</div>
                        <div class="cart-nav-item col-lg-3 col-md-3 col-sm-12">Giá</div>
                    </div>
                    <form method="post">
                        <?php
                        $total_price_all =0;
                        while($row = mysqli_fetch_array($query)){
                            $total_price_id = $_SESSION["cart"][$row['prd_id']]*$row['prd_price'];
                            $total_price_all += $total_price_id;
                        ?>
                        <div class="cart-item row">
                            <div class="cart-thumb col-lg-7 col-md-7 col-sm-12">
                                <img src="admin/img/<?php echo $row['prd_image'];?>">
                                <h4><?php echo $row['prd_name'];?></h4>
                            </div>

                            <div class="cart-quantity col-lg-2 col-md-2 col-sm-12">
                                <input name="qtt[<?php echo $row["prd_id"];?>]" type="number" id="quantity" class="form-control form-blue quantity" value=<?php echo $_SESSION["cart"][$row['prd_id']]; ?> min="1">
                            </div>
                            <div class="cart-price col-lg-3 col-md-3 col-sm-12"><b><?php echo formatPrice($total_price_id); ?> đ</b><a href="modules/cart/cart_del.php?prd_id=<?php echo $row['prd_id']; ?>">Xóa</a></div>
                        </div>
                        <?php
                        };
                        ?>
                        <div class="row">
                            <div class="cart-thumb col-lg-7 col-md-7 col-sm-12">
                                <button id="update-cart" class="btn btn-success" type="submit" name="sbm">Cập nhật giỏ hàng</button>
                            </div>
                            <div class="cart-total col-lg-2 col-md-2 col-sm-12"><b>Tổng cộng:</b></div>
                            <div class="cart-price col-lg-3 col-md-3 col-sm-12"><b><?php echo formatPrice($total_price_all); ?> đ</b></div>
                        </div>
                    </form>
                    <?php
                    } else{
                    ?>
                    <div class="alert alert-danger">Giỏ hàng của bạn hiện chưa có sản phẩm nào!</div>
                    <?php
                    };
                    ?>
                </div>
                <!--	End Cart	-->

                <?php
                if(isset($_POST["name"]) && isset($_POST["add"]) && isset($_POST["phone"]) && isset($_POST["mail"])){
                    $name = $_POST["name"];
                    $phone = $_POST["phone"];
                    $add = $_POST["add"];
                    $email = $_POST["mail"];
                    $str_body = '';
                    
                    $str_body .= '
                    <p>
                        <b>Khách hàng:</b> '.$name.'<br>
                        <b>Điện thoại:</b> '.$phone.'<br>
                        <b>Địa chỉ:</b> '.$add.'<br>
                    </p>
                    <table border="1" cellspacing="0" cellpadding="10" bordercolor="#305eb3" width="100%">
                        <tr bgcolor="#305eb3">
                            <td width="70%"><b><font color="#FFFFFF">Sản phẩm</font></b></td>
                            <td width="10%"><b><font color="#FFFFFF">Số lượng</font></b></td>
                            <td width="20%"><b><font color="#FFFFFF">Tổng tiền</font></b></td>
                        </tr>';
                    $query= mysqli_query($conn, $sql);
                    while($row = mysqli_fetch_array($query)){
                        $total_price_id = $_SESSION["cart"][$row['prd_id']]*$row['prd_price'];
                        $str_body .= '
                        <tr>
                            <td width="70%">'.$row["prd_name"].'</td>
                            <td width="10%">'.$_SESSION["cart"][$row["prd_id"]].'</td>
                            <td width="20%">'.formatPrice($total_price_id).' đ</td>
                        </tr>';
                    };
                    $str_body .= '
                        <tr>
                            <td colspan="2" width="70%"></td>
                            <td width="20%"><b><font color="#FF0000">'.formatPrice($total_price_all).' đ</font></b></td>
                        </tr>
                    </table>
                    ';
                    echo $str_body;

                    ////
                    $sql = "SELECT * FROM config_mail";
                    $query = mysqli_query($conn, $sql);
                    $row = mysqli_fetch_array($query);
                    $mail = new PHPMailer(true);                              // Passing 'true' enables exceptions
                    try {
                        //Server settings


                        $mail->SMTPDebug = 2;                                 // Enable verbose debug output
                        $mail->isSMTP();                                      // Set mailer to use SMTP
                        $mail->Host = $row['mail_host'];  // Specify main and backup SMTP servers
                        $mail->SMTPAuth = true;                               // Enable SMTP authentication
                        $mail->Username = $row["mail_username"];                 // SMTP username
                        // $mail->Password = 'vietpr0sh0p';                           // SMTP password
                        $mail->Password = $row["mail_password"];                           // SMTP password
                        $mail->SMTPSecure = $row["mail_smtpsecure"];                            // Enable TLS encryption, 'ssl' also accepted
                        $mail->Port = $row["mail_port"] ;                                   // TCP port to connect to
                    
                        //Recipients
                        $mail->CharSet = 'UTF-8';
                        $mail->setFrom($row["mail_setform"]);				// Gửi mail tới Mail Server
                        $mail->addAddress($email);               // Gửi mail tới mail người nhận
                        //$mail->addReplyTo('ceo.vietpro@gmail.com', 'Information');
                        $mail->addCC( $row["mail_addcc"]);
                        //$mail->addBCC('bcc@example.com');
                    
                        //Attachments
                        //$mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
                        //$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
                    
                        //Content
                        $mail->isHTML(true);                                  // Set email format to HTML
                        $mail->Subject = $row["mail_subject"];
                        $mail->Body    = $str_body;
                        $mail->AltBody = $row["mail_altbody"];
                    
                        $mail->send();
                        unset($_SESSION["cart"]);
                        header('location:index.php?page_layout=success');
                    } catch (Exception $e) {
                        echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
                    }
                    /////
                };
                ?>
                <!--	Customer Info	-->
                <div id="customer">
                    <form method="post" id="buy-now">
                        <div class="row">

                            <div id="customer-name" class="col-lg-4 col-md-4 col-sm-12">
                                <input placeholder="Họ và tên (bắt buộc)" type="text" name="name" class="form-control" required>
                            </div>
                            <div id="customer-phone" class="col-lg-4 col-md-4 col-sm-12">
                                <input placeholder="Số điện thoại (bắt buộc)" type="text" name="phone" class="form-control" required>
                            </div>
                            <div id="customer-mail" class="col-lg-4 col-md-4 col-sm-12">
                                <input placeholder="Email (bắt buộc)" type="text" name="mail" class="form-control" required>
                            </div>
                            <div id="customer-add" class="col-lg-12 col-md-12 col-sm-12">
                                <input placeholder="Địa chỉ nhà riêng hoặc cơ quan (bắt buộc)" type="text" name="add" class="form-control" required>
                            </div>

                        </div>
                    </form>
                    <div class="row">
                        <div class="by-now col-lg-6 col-md-6 col-sm-12">
                            <a onclick="buyNow()" href="#">
                                <b>Mua ngay</b>
                                <span>Giao hàng tận nơi siêu tốc</span>
                            </a>
                        </div>
                        <div class="by-now col-lg-6 col-md-6 col-sm-12">
                            <a href="#">
                                <b>Trả góp Online</b>
                                <span>Vui lòng call (+84) 0988 550 553</span>
                            </a>
                        </div>
                    </div>
                </div>
                <!--	End Customer Info	-->