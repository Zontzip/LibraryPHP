<?php
$connect_error = 'Sorry, could not connect';

mysql_connect('localhost', 'root', 'root') or die($connect_error);
mysql_select_db('library') or die($connect_error);
?>