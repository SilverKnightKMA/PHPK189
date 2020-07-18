<!--	List Product	-->
<?php
if (isset($_GET["page_layout"])) {
    $prd_id = $_GET["prd_id"];
};
if (isset($_GET['page_number'])) {
    $page_num = $_GET['page_number'];
} else {
    $page_num = 1;
};

$sql = "SELECT * 
FROM product
WHERE prd_id = $prd_id";
$query = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($query);
?>
<div id="product">
    <div id="product-head" class="row">
        <div id="product-img" class="col-lg-6 col-md-6 col-sm-12">
            <img src="admin/img/<?php echo $row['prd_image']; ?>">
        </div>
        <div id="product-details" class="col-lg-6 col-md-6 col-sm-12">
            <h1><?php echo $row['prd_name']; ?></h1>
            <ul>
                <li><span>Bảo hành:</span> <?php echo $row['prd_warranty']; ?></li>
                <li><span>Đi kèm:</span> <?php echo $row['prd_accessories']; ?></li>
                <li><span>Tình trạng:</span> <?php echo $row['prd_new']; ?></li>
                <li><span>Khuyến Mại:</span> <?php echo $row['prd_promotion']; ?></li>
                <li id="price">Giá Bán (chưa bao gồm VAT)</li>
                <li id="price-number"><?php echo formatPrice($row['prd_price']); ?> đ</li>
                <li id="status" <?php if ($row['prd_status'] == 0) { ?> class="text-danger" <?php }; ?>> <?php if ($row['prd_status'] == 1) {
                                                                                                                echo 'Còn hàng';
                                                                                                            } else {
                                                                                                                echo 'Hết hàng';
                                                                                                            } ?></li>
            </ul>
            <div id="add-cart"><a href="modules/cart/cart_add.php?prd_id=<?php echo $row['prd_id']; ?>">Mua ngay</a></div>
        </div>
    </div>
    <div id="product-body" class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <h3>Đánh giá về <?php echo $row['prd_name']; ?></h3>
            <?php echo $row['prd_details']; ?>
            <br>
            <h3>Đánh giá của bạn</h3>
            <?php
            $select_rating = mysqli_query($conn, "select rate from rating_prd WHERE prd_id = $prd_id ");
            $total = mysqli_num_rows($select_rating);
            if ($total == 0) {
            ?>
                <p>Chưa có lượt đánh giá nào</p>
                <form method="post" action="modules/product/insert_star.php?prd_id=<?php echo $prd_id; ?>">
                    <div class="rating-box">
                        <div class="ratings">
                            <span class="fa fa-star-o"></span>
                            <span class="fa fa-star-o"></span>
                            <span class="fa fa-star-o"></span>
                            <span class="fa fa-star-o"></span>
                            <span class="fa fa-star-o"></span>
                        </div>
                        <input type="hidden" name="rating" id="rating-value" value="">
                        <input type="submit" value="Đánh giá" name="submit_rating">
                    <?php } else {
                    while ($row = mysqli_fetch_array($select_rating)) {
                        $rate[] = $row['rate'];
                    }
                    $total_rate = round((array_sum($rate) / $total), 2);
                    ?>
                        <p>Trung bình đánh giá : (<?php echo $total_rate; ?>)</p>
                        <p id="total_votes">Số lượt đánh giá :<?php echo $total; ?></p>
                        <form method="post" action="modules/product/insert_star.php?prd_id=<?php echo $prd_id; ?>">
                            <div class="rating-box">
                                <div class="ratings">
                                    <?php
                                    for ($i = 1; $i <= 5; $i++) {
                                        if ($i <= $total_rate) {
                                    ?>
                                            <span class="fa fa-star"></span>
                                        <?php
                                        } else {
                                        ?>
                                            <span class="fa fa-star-o"></span>
                                    <?php
                                        }
                                    }
                                    ?>

                                </div>
                                <input type="hidden" name="rating" id="rating-value" value="">
                                <input type="submit" value="Đánh giá" name="submit_rating">
                            <?php } ?>
                            </div>
                        </form>
                    </div>
        </div>

        <!--	Comment	-->
        <?php
        if (isset($_POST["sbm"])) {
            $comm_name = $_POST["comm_name"];
            $comm_mail = $_POST["comm_mail"];
            $comm_details = $_POST["comm_details"];
            date_default_timezone_set("Asia/Bangkok");
            $comm_date = date("Y-m-d H:i:s");
            $sql = "INSERT INTO comment(prd_id, comm_name, comm_mail, comm_date, comm_details, comm_status)
                    VALUES ('$prd_id', '$comm_name', '$comm_mail', '$comm_date', '$comm_details', 0)";
            $query = mysqli_query($conn, $sql);
        };
        ?>
        <div id="comment" class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <h3>Bình luận sản phẩm</h3>
                <form method="post">
                    <div class="form-group">
                        <label>Tên:</label>
                        <input name="comm_name" required type="text" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Email:</label>
                        <input name="comm_mail" required type="email" class="form-control" id="pwd">
                    </div>
                    <div class="form-group">
                        <label>Nội dung:</label>
                        <textarea name="comm_details" required rows="8" class="form-control"></textarea>
                        <script>
                                CKEDITOR.replace( 'comm_details' );
                            </script>
                    </div>
                    <button type="submit" name="sbm" class="btn btn-primary">Gửi</button>
                </form>
            </div>
        </div>
        <!--	End Comment	-->

        <!--	Comments List	-->
        <?php
        $rows = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM comment WHERE prd_id = $prd_id"));
        $rows_per_page = 10;
        $total_rows = $rows;
        $total_page = ceil($total_rows / $rows_per_page);
        $per_row = $page_num * $rows_per_page - $rows_per_page;
        $sql_cmt = "SELECT * FROM comment
    WHERE prd_id = $prd_id
    ORDER BY comm_date DESC
    LIMIT $per_row, $rows_per_page";
    $query_cmt = mysqli_query($conn, $sql_cmt);
    if (!$rows == 0) {
        ?>
            <div id="comments-list" class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <?php
                    
                    while ($row_cmt = mysqli_fetch_array($query_cmt)) {
                    if($row_cmt["comm_status"]==1){
                    ?>
                        <div class="comment-item">
                            <ul>
                                <li><b><?php echo $row_cmt['comm_name']; ?></b></li>
                                <li><?php echo $row_cmt['comm_date']; ?></li>
                                <li><?php echo filter($row_cmt['comm_details']); ?></li>
                            </ul>
                        </div>
                    <?php
                    };
                     };
                    ?>
                </div>
            </div>
            <div id="pagination">
                <ul class="pagination">
                    <?php
                    $list_pages = '<nav aria-label="Page navigation example">
        <ul class="pagination">';
                    $page_prev = $page_num - 1;
                    if ($page_prev == 0) {
                        $page_prev = 1;
                    }
                    $list_pages .= '<li class="page-item"><a class="page-link" href="index.php?page_layout=product&prd_id=' . $prd_id . '&page_number=' . $page_prev . '">Trước</a></li>';

                    for ($i = 1; $i <= $total_page; $i++) {
                        $list_pages .= '<li class="page-item"><a class="page-link" href="index.php?page_layout=product&prd_id=' . $prd_id . '&page_number=' . $i . '">' . $i . '</a></li>';
                    }
                    $page_next = $page_num  + 1;
                    if ($page_next > $total_page) {
                        $page_next = $total_page;
                    }
                    $list_pages .= '<li class="page-item"><a class="page-link" href="index.php?page_layout=cproduct&prd_id=' . $prd_id . '&page_number=' . $page_next . '">Sau</a></li>
            </ul>
        </nav>';
                    echo $list_pages; ?>
                </ul>
            </div>
        <?php
        } else {
        ?>
            <div id="comments-list" class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="comment-item">
                        <div class="alert alert-danger">Sản phẩm này hiện chưa có bình luận nào!</div>
                    </div>
                </div>
            </div>
        <?php
        };
        ?>

        <!--	End Comments List	-->
    </div>
    <!--	End Product	-->
    <script>
        const stars = document.querySelector(".ratings").children;
        const ratingValue = document.querySelector("#rating-value");
        let index;

        for (let i = 0; i < stars.length; i++) {
            stars[i].addEventListener("mouseover", function() {
                // console.log(i)
                for (let j = 0; j < stars.length; j++) {
                    stars[j].classList.remove("fa-star");
                    stars[j].classList.add("fa-star-o");
                }
                for (let j = 0; j <= i; j++) {
                    stars[j].classList.remove("fa-star-o");
                    stars[j].classList.add("fa-star");
                }
            })
            stars[i].addEventListener("click", function() {
                ratingValue.value = i + 1;
                index = i;
            })
            stars[i].addEventListener("mouseout", function() {

                for (let j = 0; j < stars.length; j++) {
                    stars[j].classList.remove("fa-star");
                    stars[j].classList.add("fa-star-o");
                }
                for (let j = 0; j <= index; j++) {
                    stars[j].classList.remove("fa-star-o");
                    stars[j].classList.add("fa-star");
                }
            })
        }
    </script>