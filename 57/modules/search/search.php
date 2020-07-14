<?php
if (isset($_POST["keyword"]) && $_POST["keyword"] != "") {
    $keyword = $_POST["keyword"];
}
else if (isset($_GET["keyword"]) && $_GET["keyword"] != "") {
    $keyword = $_GET["keyword"];
};
if (isset($_GET['page_number'])) {
    $page_num = $_GET['page_number'];
} else {
    $page_num = 1;
};

$arr = explode(" ", $keyword);
$str = "%".implode("%", $arr)."%";
$rows = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM product WHERE prd_name LIKE '$str'"));
$rows_per_page = 6;
$total_rows = $rows;
$total_page = ceil($total_rows / $rows_per_page);
$per_row = $page_num * $rows_per_page - $rows_per_page;
$sql = "SELECT * FROM product
WHERE prd_name LIKE '$str'
LIMIT $per_row, $rows_per_page";
$query = mysqli_query($conn, $sql);


$list_pages = '<nav aria-label="Page navigation example">
<ul class="pagination">';
$page_prev = $page_num - 1;
if ($page_prev == 0) {
$page_prev = 1;
}
$list_pages .= '<li class="page-item"><a class="page-link" href="index.php?page_layout=search&keyword=' . $keyword . '&page_number=' . $page_prev . '">Trước</a></li>';

for ($i = 1; $i <= $total_page; $i++) {
$list_pages .= '<li class="page-item"><a class="page-link" href="index.php?page_layout=search&keyword=' . $keyword . '&page_number=' . $i . '">' . $i . '</a></li>';
}
$page_next = $page_num  + 1;
if ($page_next > $total_page) {
$page_next = $total_page;
}
$list_pages .= '<li class="page-item"><a class="page-link" href="index.php?page_layout=search&keyword=' . $keyword . '&page_number=' . $page_next . '">Sau</a></li>
</ul>
</nav>';
?>
<!--	List Product	-->
<div class="products">
    <div id="search-result">Kết quả tìm kiếm với sản phẩm <span><?php echo $keyword;?></span></div>
    <?php
        $sp = 0;
        $dem = 0;
        while ($row = mysqli_fetch_array($query)) {
        if($dem == 0) {
        ?>
        <div class="product-list card-deck">
        <?php
        };
        ?>
        <div class="product-item card text-center">
            <a href="index.php?page_layout=product&prd_id=<?php echo $row['prd_id']; ?>"><img src="admin/img/<?php echo $row['prd_image']; ?>"></a>
            <h4><a href="#"><?php echo $row['prd_name']; ?></a></h4>
            <p>Giá Bán: <span><?php echo formatPrice($row['prd_price']); ?> đ</span></p>
        </div>
        <?php
        $dem ++;
        $sp ++;
        if($dem == 3){
        ?>
        </div>
        <?php
            $dem = 0;
        };
        };
        if ($sp %3 != 0){
        ?>
        </div>
        <?php
        }
        ?>

</div>
<!--	End List Product	-->

<?php echo $list_pages; ?>