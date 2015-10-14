<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Article extends CI_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model('Article_model');
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
	 * 发表文章
	 */
	function addArticle()
	{
		$this->load->view('addArticle');
	}
	
	/**
	 * 处理文章入库
	 */
	function addArticleDeal()
	{
		// 标题
		$article_title = $this->input->post_get('article_title');
		// 内容
		$content = $this->input->post_get('content');
		if(!$article_title || !$content)
		{
			$this->load->view('failure');
			exit;
		}
		$article_title = addslashes($article_title); 
		$content = addslashes($content);
		$article_flag = intval($this->input->post_get('article_flag'));
		$article_headline = addslashes($this->input->post_get('article_headline'));
		$article_keywords = addslashes($this->input->post_get('article_keywords'));
		$article_description = addslashes($this->input->post_get('article_description'));
		$article_click = 1;
		$article_datetime = time();
		$res = $this->Article_model->addArticleDeal($article_title,$article_flag,$article_datetime,$article_headline,$article_keywords,$article_description,$article_click,$content);
		if($res)
		{
			$this->load->view('success');
		}else {
			$this->load->view('failure');
		}
	}
	
	/**
	 * 文章列表
	 */
	function listArticle()
	{
		$total = $this->Article_model->listArticleTotal();
		if(!$total)
		{
			echo '没有相关数据！';
			echo "&nbsp;<a href=\"javascript:history.go(-1);\">点击返回</a>";
			exit;			
		}
		$page = $this->input->get_post('page');
		if(!$page)
		{
			$page = 1;
		}else {
			$page = intval($page);
		}
		$totalPage = ceil($total/PAGESIZE);
		$result = $this->Article_model->listArticle($page,PAGESIZE);
		print_r($result);
	}

}