<?php
class Article_model extends CI_Model
{
	/**
	 * @deprecated 增加文章入库
	 * @param string $article_title 文章标题
	 * @param int $article_flag 文章状态
	 * @param unknown $article_datetime
	 * @param unknown $article_headline
	 * @param unknown $article_keywords
	 * @param unknown $article_description
	 * @param unknown $article_click
	 * @param unknown $content
	 */
	function addArticleDeal($article_title,$article_flag,$article_datetime,$article_headline,$article_keywords,$article_description,$article_click,$content)
	{
		$sql = "insert into fu_article(article_title,article_flag,article_datetime,article_headline,
				article_keywords,article_description,article_click,article_content) values(
				'".$article_title."', '".$article_flag."', '".$article_datetime."', '".$article_headline."',
				'".$article_keywords."','" . $article_description ."','".$article_click."','".$content."')";
		$this->db->query($sql);	
		 return $this->db->affected_rows();
	}
	
	/**
	 * @deprecated 文章列表
	 * @param unknown $page
	 * @param unknown $pageSize
	 */
	function listArticle($page,$pageSize)
	{
		$startNumber = ($page-1) * $pageSize;	
		$sql = "select * from fu_article order by article_id desc limit " . $startNumber . ", " . $pageSize;
	    $res = $this->db->query($sql);
	    return $res->result_array();
	}
	
	function listArticleTotal()
	{
		$sql = "select count(*) as total from fu_article";
		$result = $this->db->query($sql);
		$rowResult = $result->row();
		return $rowResult->total;
	}
}