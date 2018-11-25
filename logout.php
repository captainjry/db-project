<?php

if (isset($_POST['submit'])){
    session_unset();
    session_destroy();
    header("Location: D:\xampp\htdocs\dbproject_php\index.php");
    exit();
}
?>