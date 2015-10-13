<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Room extends CI_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model('RoomModel');
		$this->isLogin();
	}
	
	/**
	 * 检测是否登陆
	 */
	function isLogin()
	{
	    if(!($this->session->userId) || ($this->session->userId) <= 0)
	    {
	        header("Location:/Index/login");
	    }
	    return true;
	}
	
	/**
	 * 房间开设
	 */
	function roomOpen()
	{
		$view = array();
		// 获取房间号码
		$roomId = $this->RoomModel->roomMax();
		if(!$roomId)
		{
			$roomId = 1;
		}else {
			$roomId = $roomId + 1;
		}
		$view['roomId'] = $roomId;
		$this->load->view('roomOpen', $view);
	}
	
	/**
	 * 增加房间处理
	 */
	function roomOpenAdd()
	{
		$userId = $this->session->userId;
		$roomNumber = intval($this->input->post_get('number'));
		$openFlag = intval($this->input->post_get('openFlag'));
		$price = $this->input->post_get('price');
		$alias = $this->input->post_get('alias');
		$description = $this->input->post_get('description');
		$datetime = time();
		if($roomNumber <= 0 || $openFlag < 0)
		{
			header("Location:/Index/index");
		}
		$roomId = $this->RoomModel->roomOpenAdd($userId,$roomNumber,$openFlag,$datetime,$alias,$description);
		//增加牌位
		$this->RoomModel->roomOpenPosition($roomId,$roomNumber,$price);
		$this->load->view('success');
	}
	
	/**
	 * 房间列表
	 */
	function roomList()
	{
		// 总房间数
		$roomTotal = $this->RoomModel->roomTotal();
		if(!$roomTotal)
		{
			echo '暂时没有相关房间,请先开设房间';
			echo "<a href='/Room/roomOpen'>点击开设房间</a>";
			exit;
		}
		$totalPage = ceil($roomTotal/PAGESIZE);
		$page = $this->input->post_get('page');
		if(!$page)
		{
			$page = 1;
		}elseif($page > $totalPage)
		{
			$page = $totalPage;
		}
		
		$view['roomList'] = array();
		$roomList = $this->RoomModel->roomList($page);
		if($roomList)
		{
			$view['roomList'] = $roomList;
			if($page > 1)
			{
				$view['indexPage'] = 1;
			}
			if($page < $totalPage)
			{
				$view['endPage'] = $totalPage;
			}	
			$view['page'] = $page;	
			$view['totalPage'] = $totalPage;
			$view['roomTotal'] = $roomTotal;
		}
		$this->load->view('roomList', $view);
	}
	
	/**
	 * 删除房间及牌位
	 */
	function delRoom()
	{
		$roomId = intval($this->input->post_get('roomId'));
		$delResult = $this->RoomModel->delRoom($roomId);
		if($delResult)
		{
			$this->load->view('success');
		}else {
			$this->load->view('failure');
		}
	}
    /**
     * 房间对应的牌位列表
     */
	function roomInfos()
	{
	    $roomId = intval($this->input->post_get('roomId'));
	    $result = $this->RoomModel->roomInfos($roomId);
	    if(!$result)
	    {
	    	exit('出错了，暂时没有相关数据！');
	    }
	    $view['roomInfos'] = $result;
	    $adminInfos = $this->RoomModel->adminUser($result['user_id']);
	    $view['userInfos'] = $adminInfos;
	    $this->load->view('roomInfos', $view);
	}  
	
	/**
	 * 房间编辑信息
	 */
	function updateRoom()
	{
		$roomId = intval($this->input->post_get('roomId'));
		$result = $this->RoomModel->roomInfos($roomId);
		if(!$result)
		{
			exit('出错了，暂时没有相关数据！');
		}	
		$view['roomInfos'] = $result;
		$this->load->view('updateRoom', $view);
	}
	
	/**
	 * 处理房间信息
	 */
	function updateRoomDeal()
	{
		$roomId = intval($this->input->post_get('room_id'));
		$room_flag = intval($this->input->post_get('room_flag'));
		if(!$roomId || $roomId < 1)
		{
			exit('出错了，暂时没有相关数据！');
		}
		$room_alias = addslashes($this->input->post_get('room_alias'));
		$room_description = addslashes($this->input->post_get('room_description'));
		$result = $this->RoomModel->updateRoomDeal($roomId,$room_alias,$room_description,$room_flag);
		if($result)
		{
			$this->load->view('success');
		}else {
			$this->load->view('failure');
		}
	}
	
	function roomOpenPosition()
	{
		// 总房间数
		$roomTotal = $this->RoomModel->roomTotal();
		if(!$roomTotal)
		{
			echo '暂时没有相关房间,请先开设房间';
			echo "<a href='/Room/roomOpen'>点击开设房间</a>";
			exit;
		}
		$totalPage = ceil($roomTotal/PAGESIZE);
		$page = $this->input->post_get('page');
		if(!$page)
		{
			$page = 1;
		}elseif($page > $totalPage)
		{
			$page = $totalPage;
		}
		
		$view['roomList'] = array();
		$roomList = $this->RoomModel->roomList($page);
		if($roomList)
		{
			$view['roomList'] = $roomList;
			if($page > 1)
			{
				$view['indexPage'] = 1;
			}
			if($page < $totalPage)
			{
				$view['endPage'] = $totalPage;
			}	
			$view['page'] = $page;	
			$view['totalPage'] = $totalPage;
			$view['roomTotal'] = $roomTotal;
		}
		$this->load->view('roomOpenPosition', $view);
	}
	
	/**
	 * 房间对应的牌位列表
	 */
	function postionList()
	{
		$roomId = intval($this->input->post_get('id'));
		$total = $this->RoomModel->posTotal($roomId);	
		if(!$total)
		{
			echo '该房间暂时没有牌位，请删除该房间，然后';
			echo "<a href='/Room/roomOpen'>点击开设房间</a>";
			exit;			
		}
		$page = $this->input->post_get('page');
		$totalPage = ceil($total/PAGESIZE);
		if(!$page)
		{
			$page = 1;
		}elseif($page > $totalPage)
		{
			$page = $totalPage;
		}
		
		if($page > 1)
		{
			$view['indexPage'] = 1;
		}
		if($page < $totalPage)
		{
			$view['endPage'] = $totalPage;
		}
		$view['page'] = $page;
		$view['totalPage'] = $totalPage;
		$view['total'] = $total;
		$view['roomId'] = $roomId;
		$posList = $this->RoomModel->posList($roomId,$page,PAGESIZE);	
		$view['result'] = $posList;
		$this->load->view('postionList', $view);
	}
	
	/**
	 * 牌位编辑
	 */
	function posLocation()
	{
		$locationId = $this->input->post_get('id');
		if($locationId < 1)
		{
			echo '没有相关数据！';
			echo "<a href=\"javascript:history.go(-1)\">点击返回</a>";	
			exit;		
		}
		$locationId = intval($locationId);
		$result = $this->RoomModel->posLocation($locationId);
		if(!$result)
		{
			echo '没有相关数据！';
			echo "<a href=\"javascript:history.go(-1)\">点击返回</a>";
			exit;			
		}
		$view['result'] = $result;
		$view['front_domain'] = FRONT_DOMAIN;
		$this->load->view('posLocation', $view);
	}
	
	/**
	 * 处理牌位编辑
	 */
	function posLocationDeal()
	{
		
		$localtion_id = $this->input->post_get('localtion_id');
		if(!$localtion_id)
		{
			echo '出错了！';
			echo "<a href=\"javascript:history.go(-1);\">点击返回</a>";
			exit;
		}
		$location_price = $this->input->post_get('location_price');
		$location_type = $this->input->post_get('location_type');
		$location_alias = $this->input->post_get('location_alias');
		$location_details = $this->input->post_get('location_details');
	
		// 上传图片
		$filePic = '';
		if($_FILES['location_pic_new']['name'])
		{
			$filePic = fileUpload($_FILES['location_pic_new']);
		}
		$result = $this->RoomModel->posLocationDeal($localtion_id,$location_price,$location_type,$location_alias,$location_details,$filePic);
		if($result)
		{
			$this->load->view('success');
		}else {
			$this->load->view('failure');
		}
	}
	
	/**
	 * 删除牌位
	 */
	function delPos()
	{
		$localtion_id = $this->input->post_get('id');
		if(!$localtion_id)
		{
			echo '出错了！';
			echo "<a href=\"javascript:history.go(-1);\">点击返回</a>";
			exit;
		}
		$result = $this->RoomModel->delPos($localtion_id);
		if($result)
		{
			$this->load->view('success');
		}else {
			$this->load->view('failure');
		}
	}
	
	
}
