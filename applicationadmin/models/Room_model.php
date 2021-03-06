<?php
class Room_model extends CI_Model
{
	/**
	 * 获取最大的房间号
	 */
	function roomMax()
	{
		$sql = "select max(room_id) as roomId from fu_room_list";
		$roomResult = $this->db->query($sql);
		if(!$roomResult)
		{
			return '';
		}else {
			$idResult= $roomResult->row();
			return $idResult->roomId;
		}
	}
	
	/**
	 * 
	 * @param int $userId 用户id
	 * @param int $number 房间数
	 * @param int $flag 是否开放房间，1开放,0-不开放
	 * @param int $datetime 设置房间时间
	 * @param int $alias 设置房间别名
	 * @param int $description 设置房间描述
	 */
	function roomOpenAdd($userId,$number,$flag,$datetime,$alias,$description)
	{
		$sql = "insert into fu_room_list(room_number,room_flag,user_id,room_time,room_alias,room_description) values
				(".$number.", ".$flag.", ".$userId.", ".$datetime.",'".$alias."', '".$description."')";
		$this->db->query($sql);
		return $this->roomMax();
	}
	
	/**
	 * @deprecated 房间的总数目
	 */
	function roomTotal()
	{
		$sql = "select count(*) as total from fu_room_list";
		$result = $this->db->query($sql);
		if($result->num_rows() <= 0)
		{
			return '';
		}
		$rowResult = $result->row();
		return $rowResult->total;
	}
	
	/**
	 * @deprecated 对应的房间牌位数目
	 * @param int $roomId 房间号
	 */
	function posTotal($roomId)
	{
		$sql = "select count(*) as total from fu_location_list where location_room_id=".$roomId;
		$result = $this->db->query($sql);
		if($result->num_rows() <= 0)
		{
			return '';
		}
		$rowResult = $result->row();
		return $rowResult->total;		
	}
	
	/**
	 * @deprecated 牌位列表
	 * @param int $roomId 房间号
	 * @param int $page 页码
	 * @param int $pageSize 每页大小
	 */
	function posList($roomId,$page,$pageSize)
	{
		$sql = "select * from fu_location_list where location_room_id = " . $roomId . " limit " .
				($page-1) * $pageSize . "," . $pageSize;
		$result = $this->db->query($sql);
		return $result->result_array();
	}
	/**
	 * @param int $page 页码数
	 * 房间列表
	 */
	function roomList($page)
	{
		$startNumber = ($page - 1) * PAGESIZE;
		$sql = "select * from fu_room_list order by room_flag desc,room_id desc limit " . $startNumber . ", " . PAGESIZE;
		$res = $this->db->query($sql);
		return $res->result_array();
	}
	
	/**
	 * @deprecated 删除房间及牌位
	 * @param int $roomId 房间位
	 */
	function delRoom($roomId)
	{
		$this->db->trans_start();
		$sqlDel = "delete from fu_room_list where room_id = " . $roomId;
		$sqlDelPos = "delete from fu_location_list where location_room_id = " . $roomId;
		$this->db->query($sqlDel);
		$this->db->query($sqlDelPos);
		$this->db->trans_complete();
		// 操作失败
		if ($this->db->trans_status() === FALSE)
		{
			return '';
		}
		return 1;
	}
	
	/**
	 * @deprecated 牌位开设
	 * @param int $roomId 房间号
	 * @param int $roomNumber 牌位数
	 * @param float $price 价格
	 */
	function roomOpenPosition($roomId,$roomNumber,$price)
	{
		$roomNum = '';
		$sql = "insert into fu_location_list(location_room_id,location_price) values ";
		for($i=0; $i<$roomNumber; $i++)
		{
			$roomNum .= "(" .$roomId . ",".$price."),";
		}
		$roomNum = substr($roomNum,0,-1);
		$sql .= $roomNum;
		$this->db->query($sql);
	}
	
	/**
	 * @deprecated 房间相关信息
	 * @param int $roomId 房间号码
	 */
	function roomInfos($roomId)
	{
	    $sql = "select * from fu_room_list where room_id = " . $roomId;
	    $res = $this->db->query($sql);
	    return $res->row_array();	    
	}
	
	/**
	 * @deprecated 对应的房间牌位总数
	 * @param int $pageSize 每页大小
	 */
	function locationNumber($roomId)
	{
	    $sql = "select count(*) as total from fu_location_list where location_room_id = " . $roomId;
	    $res = $this->db->query($sql);
	    return $res->row_array();
	}
	
	/**
	 * @deprecated 查询相关管理员
	 * @param int $userId 用户ID
	 */
	function adminUser($userId)
	{
		$sql = "select * from fu_admin where admin_id =" . $userId;
		$res = $this->db->query($sql);
		return $res->row_array();
	}
	
	/**
	 * @deprecated 修改房间信息
	 * @param int $roomId 房间id
	 * @param string $room_alias 房间别名
	 * @param string $room_description 房间描述
	 * @param int $room_flag 是否开启
	 */
	function updateRoomDeal($roomId,$room_alias,$room_description,$room_flag)
	{
		$sql = "update fu_room_list set room_alias = '".$room_alias."', room_description = '".$room_description."',
				room_flag = " . $room_flag . " where room_id = " . $roomId;
		$this->db->query($sql);
		return $this->db->affected_rows();
	}
	
	/**
	 * @deprecated 牌位查询
	 * @param int $locationId 牌位号码
	 */
	function posLocation($locationId)
	{
		$sql = "select * from fu_location_list where localtion_id = " . $locationId;
		$res = $this->db->query($sql);
		return $res->row_array();
	}
	
	/**
	 * @deprecated 牌位设置
	 * @param int $localtion_id 牌位
	 * @param float $location_price 价格
	 * @param int $location_type 类型
	 * @param string $location_alias 名称
	 * @param string $location_details 描述
	 * @param string $filePic 图片名
	 */
	function posLocationDeal($localtion_id,$location_price,$location_type,$location_alias,$location_details,$filePic)
	{
		$sql = "update fu_location_list set location_price = " . $location_price .",location_type = " . $location_type .
		",location_alias = '" . $location_alias . "',location_details = '".$location_details."'";
		if($filePic)
		{
			$sql .= ",location_pic = '".$filePic."'";
		}
		$sql .= " where localtion_id = " . $localtion_id;
		$this->db->query($sql);
		return $this->db->affected_rows();
	}
	
	/**
	 * @deprecated 删除牌位
	 * @param int $locationId 牌位
	 */
	function delPos($locationId)
	{
		$sql = "delete from fu_location_list where localtion_id = " . $locationId;
		$this->db->query($sql);
		return $this->db->affected_rows();
	}
	
	/**
	 * 获取房间号
	 */
	function roomPosList()
	{
	    $sql = "select room_id from fu_room_list";
	    $res = $this->db->query($sql);
	    return $res->result_array();
	}
	
	/**
	 * 
	 * @param array $param 条件查询
	 */
	function roomLocationTotal($param)
	{
		$where = "";
		foreach($param as $k=>$v)
		{
			if($v != 'all')
			{
				$where .= $k ."='" . $v ."' and ";
			}
		}
		$sql = "select count(*) as total from fu_location_list";
		if($where)
		{
			$where = " where " . substr($where,0,-4);
			$sql .= $where;
		}
		$result = $this->db->query($sql);
		$rowResult = $result->row();
		return $rowResult->total;
	}
	
	/**
	 * @deprecated 根据查询相关数据
	 * @param unknown $param
	 */
	function roomPosListSearch($param)
	{
		$where = "";
		foreach($param as $k=>$v)
		{
			if($k == 'page' || $k == 'pageSize')
			{
				continue;
			}
			if($v != 'all')
			{
				$where .= $k . " = '" . $v ."' and ";
			}
		}
		if($where)
		{
			$where = " where " . substr($where,0,-4);
		}
		$startNumber = ($param['page'] - 1) * $param['pageSize'];
		$sql = "select * from fu_location_list " . $where . " limit " . $startNumber . ", " . $param['pageSize'];
		$res = $this->db->query($sql);
		return $res->result_array();		
	}
	
	
}