<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="content-type" content="text/html" />
	<meta name="author" content="orange" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/> 
	<meta name="renderer" content="webkit">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>系统登陆后台菜单</title>
	<link href="/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body class="adminMenu">
<ul class="menuList">
	<li>
		<h3>房间/牌位管理中心</h3>
		<ul>
			<li><a href="/Room/roomList" target="mainFrame">房间列表</a></li>
			<li><a href="/Room/roomOpen" target="mainFrame">房间开设</a></li>
			<li><a href="/Room/roomOpenPosition" target="mainFrame">房间牌位设置</a></li>
			<li><a href="/Room/roomPosList" target="mainFrame">房间牌位查询</a></li>
		</ul>
	</li>


	<li>
		<h2>文章管理中心</h2>
		<ul>
			<li><a href="/Article/addArticle" target="mainFrame">发表文章</a></li>
		</ul>
	</li>

	<li>
		<h2>会员管理中心</h2>
		<ul>
			<?php for($i=0; $i < 3; $i++) { ?>
			<li><a href="">***********</a></li>
			<?php } ?>
		</ul>
	</li>
	
	<li>
		<h2>管理员中心</h2>
		<ul>
			<?php for($i=0; $i < 3; $i++) { ?>
			<li><a href="">***********</a></li>
			<?php } ?>
		</ul>
	</li>	

</ul>
</body>
</html>
