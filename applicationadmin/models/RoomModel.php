<?php
class RoomModel extends CI_Model
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
	 * @deprecated 房间牌位列表
	 * @param int $roomId 房间号码
	 * @param int $roomId 房间号
	 * @param int $page 当前页
	 */
	function roomInfos($roomId,$page,$pageSize)
	{
	    $start = ($page-1) * $pageSize;
	    $sql = "select * from fu_location_list where location_room_id = " . $roomId . " limit " . $start . "," . $pageSize;
	    $res = $this->db->query($sql);
	    return $res->result_array();	    
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
	
	
}