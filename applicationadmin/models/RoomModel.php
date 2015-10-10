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
	 */
	function RoomOpenAdd($userId,$number,$flag,$datetime)
	{
		$sql = "insert into fu_room_list(room_number,room_flag,user_id,room_time) values
				(".$number.", ".$flag.", ".$userId.", ".$datetime.")";
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
		$startNumber = ($page - 1) * 20;
		$sql = "select * from fu_room_list order by room_flag desc,room_id desc limit " . $startNumber . ", 20";
		$res = $this->db->query($sql);
		return $res->result_array();
	}
	
	
}