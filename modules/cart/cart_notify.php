<div id="cart" class="col-lg-3 col-md-3 col-sm-12">
    <a class="mt-4 mr-2" href="index.php?page_layout=cart">giỏ hàng</a><span class="mt-3">
        <?php
                                if(isset($_POST["sbm"])){
                                    if(isset($_POST["qtt"])){
                                        foreach($_POST["qtt"] as $prd_id => $qtt){
                                            $_SESSION["cart"][$prd_id] = $qtt;
                                        };
                                    };
                                };
        if (isset($_SESSION["cart"])) {
            // echo count($_SESSION["cart"]);
            echo array_sum($_SESSION["cart"]);
        } else {
            echo 0;
        };
        ?>
    </span>
</div>