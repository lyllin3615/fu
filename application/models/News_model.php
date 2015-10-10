<?php
class News_model extends CI_Model
{
	/*
	public function __construct()
	{
		$this->load->database();
	}
	*/
	function get_news()
	{
		$query = $this->db->query("select * from user");
		return $query->result_array();
	}
}