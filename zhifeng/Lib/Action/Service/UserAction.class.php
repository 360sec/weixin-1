<?php
class UserAction extends ServiceAction{
	
    /**
     * 输入 username & pw ，如果存在用户并且密码配对，则返回用户数据
     */
	public function login() {
		
	    $this->send('error','登录失败');
		
	}
}