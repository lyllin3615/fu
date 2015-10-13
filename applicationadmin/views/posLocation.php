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
<div class="roomInfosDiv">
<h2 class="headerLineBackground">牌位相关,房间号:<?php echo $result['location_room_id'];?>,牌位号:<?php echo $result['localtion_id'];?></h2>
<form action="/Room/posLocationDeal" method="post" enctype="multipart/form-data">
<input type="hidden" name="localtion_id" value="<?php echo $result['localtion_id'];?>"  />
<table border="0" cellpadding="5" cellspacing="5">	

	<tr>
		<td width="20%" align="right">牌位价格：</td>
		<td>
		<input type="number" name="location_price" value="<?php echo $result['location_price'];?>" />
		</td>		
	</tr>
	
	<tr>
		<td width="20%" align="right">牌位类型：</td>
		<td>
		<select name="location_type">
		<?php if($result['location_type']) {?>
		<option value="1" selected>高端定制</option>
		<option value="0">随机/生辰八字</option>
		<?php }else {?>
		<option value="0" selected>随机/生辰八字</option>
		<option value="1">高端定制</option>
		<?php } ?>
		</select>
		</td>		
	</tr>	
	
	<tr>
		<td width="20%" align="right">牌位别名：</td>
		<td>
		<input type="text" name="location_alias" value="<?php echo $result['location_alias'];?>" />
		</td>		
	</tr>
		
	<tr>
		<td width="20%" align="right">牌位原图片：</td>
		<td>
		<?php 
		if($result['location_pic']){?>
		<img src="<?php echo $front_domain .'/'. $result['location_pic'];?>" width="40" height="40" />
		<?php } ?>
		</td>		
	</tr>

	<tr>
		<td width="20%" align="right">牌位新图片：</td>
		<td>
		<input type="file" name="location_pic_new" value="" />&nbsp;(不修改则不理会)
		</td>		
	</tr>
		
	<tr>
		<td width="20%" align="right">牌位描述：</td>
		<td>
		<textarea rows="5" cols="60" name="location_details"><?php echo $result['location_details'];?></textarea>
		
		</td>		
	</tr>
	<tr>
		<td width="20%" align="right">&nbsp;</td>
		<td>
		<a href="javascript:history.go(-1);">返回</a>&nbsp;&nbsp;<input type="submit" name="submit" value="提交编辑" />
		</td>		
	</tr>						
</table>
</form>
</div>
</body>
</html>
