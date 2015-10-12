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
		$datetime = time();
		if($roomNumber <= 0 || $openFlag < 0)
		{
			header("Location:/Index/index");
		}
		$roomId = $this->RoomModel->roomOpenAdd($userId,$roomNumber,$openFlag,$datetime);
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
	    $total = $this->RoomModel->locationNumber($roomId);    
	    if(!$total['total'])
	    {
	      exit('暂无相关数据!');  
	    }
	    
	    $totalPage = ceil($total['total']/PAGESIZE);
	    $page = $this->input->post_get('page');
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
	    $view['total'] = $total['total'];
	    $result = $this->RoomModel->roomInfos($roomId,$page,PAGESIZE);
	    $view['list'] = $result;
	    print_r($view); exit;
	    $this->load->view('roomInfos', $view);
	}   
}
