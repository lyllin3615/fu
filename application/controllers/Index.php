<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Index extends CI_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model('News_model');
	}
	public function index()
	{
		$views['lin'] = 'lin3615';
		$res = $this->News_model->get_news();
		$views['res'] = $res[0];
		$this->load->view('index',$views);
		//$this->load->view('welcome_message');
		
	}
}
