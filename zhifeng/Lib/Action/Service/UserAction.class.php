<?php
class UserAction extends ServiceAction{
	
    /**
     * 输入 username & pw ，如果存在用户并且密码配对，则返回用户数据
     */
	public function login() {
	    
	    $user_rs = M('users')->where(array(
	        'username'=>$_POST['username'],
	        'password'=>$_POST['password'],
	    ))->find();
	    
	    if (!empty($user_rs)){
	        $this->send('success',$user_rs);
	    }else{
	        $this->send('error','帐号或密码错误');
	    }
		
	}
	
	public function getShops() {
	    $user_id = $_POST['user_id'];
	    
	    $shops_rs = M('');
	}
	
}