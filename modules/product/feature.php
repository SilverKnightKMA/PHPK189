                <!--	Feature Product	-->
                <div class="products">
                    <h3>Sản phẩm nổi bật</h3>
                    <?php
                    $sql = "SELECT * FROM product
                    WHERE prd_featured = 1
                    ORDER BY prd_id DESC
                    LIMIT 6";
                    $query = mysqli_query($conn, $sql);
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
                            <h4><a href="index.php?page_layout=product&prd_id=<?php echo $row['prd_id']; ?>"><?php echo $row['prd_name']; ?></a></h4>
                            <p>Giá Bán: <span><?php echo formatPrice($row['prd_price']); ?> đ</span></p>
                        </div>
                    <?php
                    $dem ++;
                    if($dem == 3){
                    ?>
                    </div>
                    <?php
                        $dem = 0;
                    };
                    };
                    ?>
                </div>
                <!--	End Feature Product	-->