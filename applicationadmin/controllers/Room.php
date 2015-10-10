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
		$datetime = time();
		if($roomNumber <= 0 || $openFlag < 0)
		{
			header("Location:/Index/index");
		}
		$roomId = $this->RoomModel->RoomOpenAdd($userId,$roomNumber,$openFlag,$datetime);
		$this->load->view('success');
	}
	
	function roomList()
	{
		// 总房间数
		$roomTotal = $this->RoomModel->roomTotal();
		$totalPage = ceil($roomTotal/20);
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
			$view['page'] = $page;
			$view['totalPage'] = $totalPage;
		}
		$this->load->view('roomList', $view);
	}

}
