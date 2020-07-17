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
            <li class="active">Danh sách bình luận</li>
        </ol>
    </div>
    <!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Danh sách bình luận</h1>
        </div>
    </div>
    <!--/.row-->
    <div id="toolbar" class="btn-group">
        <a href="index.php?page_layout=add_comment" class="btn btn-success">
            <i class="glyphicon glyphicon-plus"></i> Thêm bình luận
        </a>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <table data-toolbar="#toolbar" data-toggle="table">

                        <thead>
                            <tr>
                            
                                <th data-field="id" data-sortable="true">ID</th>
                                <th>Sản phẩm</th>
                                <th data-field="name" data-sortable="true">Người bình luận</th>
                                <th data-field="date" data-sortable="true">Thời gian bình luận</th>
                                <th>Email</th>
                                <th>Bình luận</th>
                                <th>Trạng thái</th>
                                
                                <th>Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            if (isset($_GET["page"])) {
                                $page = $_GET["page"];
                            } else {
                                $page = 1;
                            }
                            $rows_per_page = 3;
                            $per_row = $page * $rows_per_page - $rows_per_page;
                            $total_rows = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM comment"));
                            $total_pages = ceil($total_rows / $rows_per_page);
                            $list_pages = '<ul class="pagination">';

                            // Page Prev
                            $page_prev = $page - 1;
                            if ($page_prev == 0) {
                                $page_prev = 1;
                            }
                            $list_pages .= '<li class="page-item"><a class="page-link" href="index.php?page_layout=comment&page=' . $page_prev . '">&laquo;</a></li>';

                            for ($i = 1; $i <= $total_pages; $i++) {
                                $list_pages .= '<li class="page-item"><a class="page-link" href="index.php?page_layout=comment&page=' . $i . '">' . $i . '</a></li>';
                            }
                            // Page Next
                            $page_next = $page + 1;
                            if ($page_next > $total_pages) {
                                $page_next = $total_pages;
                            }
                            $list_pages .= '<li class="page-item"><a class="page-link" href="index.php?page_layout=comment&page=' . $page_next . '">&raquo;</a></li>';
                            $list_pages .= '</ul>';
                            echo $list_pages;

                            $sql = "SELECT * FROM comment
                                    INNER JOIN product
                                    ON comment.prd_id = product.prd_id
                                    ORDER BY comm_id DESC
                                    LIMIT $per_row, $rows_per_page ";
                            $query = mysqli_query($conn, $sql);
                            while ($row = mysqli_fetch_array($query)) {
                            ?>
                                <tr>
                                    <td style=""><?php echo $row["comm_id"]; ?></td>
                                    <td style="text-align: center" ><?php echo $row["prd_name"]; ?></br>  <img width="130" height="180" src="img/products/<?php echo $row["prd_image"]; ?>" /></td>
                                    <td style=""><?php echo $row["comm_name"]; ?></td>
                                    <td style=""><?php echo $row["comm_date"]; ?></td>
                                    <td style=""><?php echo $row["comm_mail"]; ?></td>
                                    <td style=""><?php echo filter($row["comm_details"]); ?></td>
                                    <td><span class="label label-<?php if ($row["comm_status"] == 1) {
                                                                        echo "success";
                                                                    } else {
                                                                        echo "danger";
                                                                    } ?>"><?php if ($row["comm_status"] == 1) {
                                                                                echo "Hiện";
                                                                            } else {
                                                                                echo "Ẩn";
                                                                            } ?></span></td>
                                    <!-- <td><?php echo $row["prd_name"] ?></td> -->
                                    <td class="form-group">
                                        <a href="index.php?page_layout=edit_comment&comm_id=<?php echo $row["comm_id"]; ?>" class="btn btn-primary"><i class="glyphicon glyphicon-pencil"></i></a>
                                        <a href="del_comment.php?comm_id=<?php echo $row["comm_id"]; ?>" class="btn btn-danger"><i class="glyphicon glyphicon-remove"></i></a>
                                    </td>
                                </tr>
                            <?php
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
                <div class="panel-footer">
                    <nav aria-label="Page navigation example">
                        <?php echo $list_pages ?>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!--/.row-->
</div>
<!--/.main-->

<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-table.js"></script>