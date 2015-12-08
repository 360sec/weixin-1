<?php
class ServiceAction  extends Action
{
	protected function _initialize()
	{
		
		// 每一个服务方法都执行的内容
		
	    // 只接爱POST
	    if (!IS_POST){
	        exit ('你没有权限访问！');
	    }
	    
	    // 认证
	    $this->login($_SERVER['PHP_AUTH_USER'],$_SERVER['PHP_AUTH_PW']);
		
	}
	
	private function auth()
	{
	    header('WWW-Authenticate: Basic realm="My Realm"');
	    header('HTTP/1.0 401 Unauthorized');
	    echo '你没有权限访问！'; //Text to send if user hits Cancel button
	    exit;
	}
	
	private function login($u,$p)
	{
	    if ($u != 'admin' || $p != 'adminpass') {
	        $this->auth();
	    } else {
	        //echo $_SERVER['PHP_AUTH_USER'].PHP_EOL.$p;
	    }
	}
	
	protected function send($type,$data) 
	{
	    $r = array(
	        'type'=>$type,
	        'data'=>$data
	    );
	    exit(json_encode($r));
	}
	
}