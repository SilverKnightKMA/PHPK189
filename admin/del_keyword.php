<?php
include_once('connect.php');
$rep_id = $_GET["rep_id"];
$sql = "DELETE FROM rep_cmt
        WHERE  rep_id = $rep_id";
    mysqli_query($conn,$sql);
    header("location:index.php?page_layout=rep_comment");
    ?>