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
	<script type="text/javascript" src="/js/jquery-1.8.3.min.js"></script>
</head>
<body>
<div class="loginBox">
	<form method="post" action="/Index/loginValidate">
	<table border="0" cellpadding="5" cellspacing="5">
	<tr>
		<td width="20%" align="right">登陆名：</td>
		<td><input type="text" name="username" value="" maxlength="30" /></td>
	</tr>
	<tr>
		<td width="20%" align="right">密码：</td>
		<td><input type="password" name="password" value="" maxlength="30" /></td>
	</tr>
	<tr>
		<td width="20%" align="right">&nbsp;</td>
		<td>
			<input type="reset" name="reset" value="重置" />&nbsp;
			<input type="submit" name="submit" value="登陆" />		
		</td>
	</tr>
	</table>
	</form>
</div>
<script type="text/javascript">
$(document).ready(function(){
	$("input[name='submit']").click(function(){
		var username = $("input[name='username']").val();
		var password = $("input[name='password']").val();
		if(username == '' || password == '')
		{
			alert("账号和密码都不能为空!");
			return false;
		}
		if(username.length < 5 || username.length > 30)
		{
			alert("请输入正确的账号!");
			return false;
		}
		if(password.length < 5 || password.length > 30)
		{
			alert("请输入正确的密码!");
			return false;
		}
			
	});

});
</script>
</body>
</html>
