<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="content-type" content="text/html" />
	<meta name="author" content="orange" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/> 
	<meta name="renderer" content="webkit">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>系统登陆后台</title>
	<link href="/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body class="roomList">
<?php
if(!$roomList) { ?>
	暂时无相关房间，<a href="/Room/roomOpen">点击增加房间</a>
<?php }else {
?>
<table border="0" cellspacing="5" cellpadding="5" width="100%">
	<tr>
		<td>房间号</td>
		<td>牌位数</td>
		<td>是否开放</td>
		<td>注册时间</td>
		<td>房间号</td>
	</tr>
</table>
<?php } ?>
</body>
</html>
