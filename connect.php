<?php
    $socket="/cloudsql/bookstore-236508:asia-southeast1:ta2tkwra";
    $mysqli = new mysqli('null','root','','bookstore','',$socket);
    if($mysqli->connect_errno) {
        echo $mysqli->connect_errno.": ".$mysqli->connect_error;
    }
    mysqli_set_charset($mysqli, 'utf8');
?>
