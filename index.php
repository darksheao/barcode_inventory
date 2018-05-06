<?php
include 'controllers/user.php';

session_start();

$db = new PDO('mysql:host=localhost;dbname=inventory','barcode_app', 'secretPass42');

$sessionId = $_SERVER['HTTP_X_SESSIONID'] ?: $_REQUEST['session_id'];

if (!$sessionId)
{
	$sessionId = $_COOKIE[session_name()];
}

$user = User::fromSession($sessionId);

$res = $db->query('SELECT * FROM items;');

while ($row = $res->fetch())
{
	print_r($row);
}