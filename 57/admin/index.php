<script src="../ckeditor/ckeditor.js"></script>
<?php
include_once("connect.php");
session_start();
define("TEMPLATE", True);
if(isset($_SESSION["user_level"]) && $_SESSION["user_level"] == 1){
    include_once("admin.php");
}
else{
    include_once("login.php");
}

?>