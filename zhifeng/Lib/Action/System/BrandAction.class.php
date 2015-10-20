<?php
class BrandAction extends Action{
	
	public function index() {
 
		$brand_data 	= M('Brand')->select();
		
		$this->assign('brand_data',$brand_data);
		
		$this->display();
	}
	
	public function ok() {
		$id = NULL;
		if ( !empty($_GET['id']) ) $id = $_GET['id'];
		
		if (M('Brand')->where(array('id'=>$id))->setField('status',1)){
			$this->success("审核成功！");
		}else {
			$this->error("审核失败！");
		} 
	}
	
	Public function del() {
		$id = NULL;
		if ( !empty($_GET['id']) ) $id = $_GET['id'];
		
		if (M('Brand')->where(array('status'=>0,'id'=>$id))->delete()){
			$this->success("删除成功！");
		}else {
			$this->error("删除失败！");
		}
	}
	
}