<?php
function formatPrice($price){
    $price = number_format($price, 0, ",", ".");
    return$price;
};
function filter($comm_details){
    $conn = mysqli_connect(
		"localhost",
		"root",
		"",
		"vietpro_mobile_shop"
    );
    $sql_cmt = "SELECT * FROM rep_cmt";
    $query_cmt = mysqli_query($conn, $sql_cmt);
    $arr_comm = [];
    while ($row= mysqli_fetch_array($query_cmt)){
        array_push($arr_comm, "#".$row['rep_keyword']."#");
    };
    $replace = "****";
    $comm_details = preg_replace($arr_comm , $replace , $comm_details  ) ;
    return $comm_details;
};
?>