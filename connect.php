<?php
    $mysqli = new mysqli('localhost','root','','bookstore');
    if($mysqli->connect_errno) {
        echo $mysqli->connect_errno.": ".$mysqli->connect_error;
    }
?>