<?php
class PeopleAction extends XiaoquAction {
    
    const QQ_APPKEY = '101282915';
    const QQ_APPSERCET = '958939f3ec471c72bfabb64f1a19c609';
    
    const WEIBO_APPKEY = '2291716182';
    const WEIBO_APPSERCET = 'e359231ec74530e389702fefc3a233cd';
    
	public $token;
	
	/**
	 * 消费者用户注册
	 */
	public function register() {
		
		//检查提交 
		$error = '';
		if (IS_POST){
			
			$code = session('code');
			$post_code = trim($_POST['code']);
			
			if ( $code != $_POST['code'] || empty($post_code) ){
				
				$error = '手机验证码不正确';
				
			}else{
			
			    //如果是QQ登录注册，则提前生成随机密码
			    $TPAuth = session('TPAuth');
			    $msg = '';
			    if (!empty($TPAuth)) {
			        $_POST['password'] = 'pass'.time();
			        $_POST['password_c'] = $_POST['password']; 
			    }
			    
			    // 检查是否已存在些手机帐户，是则直接绑定
			    $user_id = M('people')->where(array('phone'=>$_POST['phone']))->getField('id');
			    if (!empty($user_id)) {
			        
			         if ($this->bindTPAuth($TPAuth['vendor'],$user_id, $TPAuth['openid'])) {
			             
			             $TPAuth_msg = null;
			             
			             if ($TPAuth['vendor'] == 'qq') $TPAuth_msg = 'QQ帐号('.$TPAuth['info']->nickname.')';
			             elseif ($TPAuth['vendor'] == 'weibo') $TPAuth_msg = '微博帐号('.$TPAuth['info']->nickname.')';
			             
			             $this->sendSMS(array($_POST['phone']),'您刚刚完成了'.$TPAuth_msg.'与手机的绑定操作，您以后可以直接使用此帐户来登录了。');
			             
			         }else{
			             exit('绑定出错');
			         }
			         
			         $this->login($user_id);
			         
			    } else {
			        
			        // 不存在，全完注册手机帐户
			        $db = D('People');
			        if ($rs = $db->create()){
			            if ($id = $db->add()){
			                
			                
			                $bind_msg = '';
			                if (!empty($TPAuth)) {
			                    
			                    if ($this->bindTPAuth($TPAuth['vendor'],$id, $TPAuth['openid'])) {
			                        
			                        $TPAuth_msg = null;
			                        
			                        if ($TPAuth['vendor'] == 'qq') $TPAuth_msg = 'QQ帐号('.$TPAuth['info']->nickname.')';
			                        elseif ($TPAuth['vendor'] == 'weibo') $TPAuth_msg = '微博帐号('.$TPAuth['info']->nickname.')';
			                        
			                        $bind_msg = $TPAuth_msg.'已经与您的手机帐户绑定，您以后也可以直接使用此QQ帐户来登录。';
			                        
			                    }else{
			                        exit('绑定出错');
			                    }
			                    
			                }
			                
			                $this->sendSMS(array($_POST['phone']),'您刚刚完成了注册，你的登录密码是'.$_POST['password'].'，请妥善保管。'.$bind_msg, $err);
			                
			                $this->login($id);
			                
			            }else{
			                $error = $db->getDbError();
			            }
			        }else{
			            $error = $db->getError();
			        }
			        
			        
			        
			    }
			    
				
			
			}
		}
		
		$this->assign('error',$error);
		
		$this->display();
	}
	
	private function bindTPAuth($vendor,$user_id,$openid)
	{
	    $c_name = 'openid_';
	    if ($vendor == 'qq') $c_name .= 'qc';
	    if ($vendor == 'weibo') $c_name .= 'wb';
	    
	    // 绑定QQ帐号
	    $Set_rs = M('people')->where(array('id'=>$user_id))->setField($c_name,$openid);
	    if ($Set_rs) {
	        return true;
	    }else{
	        return false;
	    }
	}

	/**
	 * 消费者用户登录
	 */
	public function login( $people_id = 0, $redirect = true){
		$this->token=$this->_get('token','trim');
		//如果已经登录，跳到$_GET['re']或者个人中心
		if ($this->is_logined()){
			if (empty($_GET['re'])) $this->redirect(U('home'));
			else header('Location:'.$_GET['re'] ); 
		}
		
		// 读取帐号信息，生成虚拟wecha_id
		$db = D('People');
		$error = '';
		
		if ($people_id !== 0) {
			// 程序调用登录，免认证
			$people = $db->where(array('id'=>$people_id))->find();
			$error = '找不到用户数据';
		}else{
			if (IS_POST){
				// 表单提交登录
				$people = $db->login($_POST['phone'],$_POST['password'],$error);
			}
		}
		
		if (!empty($people)){
			//设置会话数据
			$this->setPeopleSession($people);
			
			//跳转
			if ($redirect){
				if (empty($_GET['re'])) $this->redirect('home');
				else header('Location:'.$_GET['re'] ); 
			}else{
				return true;
			}
		}
		
		$this->assign('error',$error);
		
		$this->display();
	}
	
	public function home() {
		
	    if (IS_POST) {
	        
	        // 查找所有商家门店信息
	        $companys = M('company')->select();
	        
	        exit(json_encode($companys));
	        
	    } else {
	        
	        $wxusers = $this->getCommunityTokens($_GET['token']);
	         
	        $this->assign('community_shops',$wxusers);
	         
	        $district_communitysites = $this->getCommunitysitesOfDistrictByToken($_GET['token']);
	        
	        $this->assign('district_communitysites',$district_communitysites);
	         
	        // if (!$this->is_logined()) $this->error('您还没有登录！',U('login',array('token'=>$_GET['token'],'re'=>urlencode($_GET['re']))));
	        $this->display();
	        
	    }
	    
	    
	}
	
	public function logout(){
		$this->setPeopleSession();
		$this->clearTPAuthSession();
		$this->display();
	}
	
	/**
	 * 用户登录后修改密码
	 */
	public function modifypw(){
		
		if (!$this->is_logined()) $this->error('您还没有登录！',U('login',array('token'=>$_GET['token'],'re'=>urlencode($_GET['re']))));
		
		$error = '';
		$status = false;
		
		if (IS_POST){
			
			//检查密码是否为空
			if (empty($_POST['newpw'])){
				$error = '新密码不能为空';
			}else{
			
				//检查两次新密码是否一致
				if ($_POST['newpw'] != $_POST['newpw2']){
					$error = '两次密码输入不一致';
				}else{
					
					//检查旧密码是否正确
					$db = D('People');
					$session_people = session('people');
					$people = $db->login($session_people['phone'],$_POST['oldpw'],$error);
					
					if (empty($people)){
						//旧密码不正确
						$error = '旧密码不正确';
					}else{
						//设置新密码
						$rs = $db->setPassword($session_people['id'],$_POST['newpw']);
						
						if ($rs){
							$error = '修改成功';
							$status = true;
							$this->refreshPeopleSession();
						}else{
							$error = '修改失败，请联系服务人员';
						}
					}
					
				}
			
			}
			
		}
		
		$this->assign('error',$error);
		$this->assign('status',$status);
		
		$this->display();
	}
	
	/**
	 * 用户登录后修改名字
	 */
	public function modifyname(){

		if (!$this->is_logined()) $this->error('您还没有登录！',U('login',array('token'=>$_GET['token'],'re'=>urlencode($_GET['re']))));
		
		$error = '';
		$status = false;
		
		if (IS_POST){
			//检查密码是否为空
			if (empty($_POST['name'])){
				$error = '新名字不能为空';
			}else{
				//设置新密码
				
				$db = D('People');
				$session_people = session('people');
				
				$rs = $db->setName($session_people['id'],$_POST['name']);

				if ($rs){
					$error = '修改成功';
					$status = true;
					$this->refreshPeopleSession();
				}else{
					$error = '修改失败，请联系服务人员';
				}
			}
		}
		
		$this->assign('error',$error);
		$this->assign('status',$status);
		
		$this->display();
	}
	
	/**
	 * 消费者用户找回密码
	 */
	public function retrieve(){
		
		$error = '';
		$retrieve_status = false;
		
		if (IS_POST){
			//检查验证码
			if (session('code') != $_POST['code']){
				$error = '验证码不正确';
			}else{
				$new_pw = D('People')->retrieve($_POST['phone']);
				
				if (empty($new_pw)){
					$error = '找回密码失败，可能你的手机号并没有在本站注册';
				}else{
					// 把新密码发送到手机
					$status = $this->sendSMS(array($_POST['phone']), '您刚刚执行了找回密码操作，您现在的新密码是'.$new_pw, $err);
					if ($status){
						
						$error = '您已经成功找回密码！新的密码已经发送到号码为['.$_POST['phone'].']的手机，请查看手机短信，并妥善保管您的新密码！<br/>';
						$retrieve_status = true;
						
						//获取用户id进行登录
						$people = D('People')->getPeople($_POST['phone']);
						if (!empty($people)){
							$error = $error.'<h5>同时，您已经自动登录了系统！</h5>';
							$this->login( $people['id'], false );
						}else{
							$error = $error.'<h5>但是，你需要前往登录页面手动登录！</h5>';
						}
					}
					else  $error = '找回密码失败了，短信发送服务器方面出了问题，请联系客服人员！错误：'.$err;
				}
			}
		}
		
		$this->assign('retrieve_status',$retrieve_status);
		$this->assign('error',$error);
		$this->display(); 
	}
	
	/**
	 * ajax 方法发送验证码
	 * @return boolean
	 */
	public function getcode(){
		if (empty($_GET['phone'])){
			echo '手机号码不正确';
			return false;
		}
		
		$code = mt_rand(100000,999999);
		session('code',$code);
		
		$this->sendSMS(array($_GET['phone']), "您的验证码是$code", $error);
		
		echo $error;
	}
	
	/**
	 * ajax方法，检查输入的验证码是否正确
	 */
	public function checkcode() {
		echo session('code');
	}
	
	private function setPeopleSession($people = NULL) {
		session('people',$people);
	}
	
	public function clearTPAuthSession(){
	    $TPAuth = session('TPAuth');
	    if (!empty($TPAuth)) {
	        session('TPAuth',null);
	    }
	}
	
	private function refreshPeopleSession(){
		$people = session('people');
		$new_people = D('People')->where(array('id'=>$people['id']))->find();
		$this->setPeopleSession($new_people);
	}
	
	/**
	 * 检查是否已经登录
	 */
	public function is_logined() {
		$s = session('people');
		if (empty($s))  return false;
		else return true;
	}
	
	public function qqlogin() 
	{
	    $authorize_url = 'https://graph.qq.com/oauth2.0/authorize?response_type=code&client_id='.self::QQ_APPKEY.'&redirect_uri='.urlencode('http://www.malruco.cn/qqloginredirect').'&state=hahagogo';
	    
	    header('Location: '.$authorize_url);
	}
	
	Public function qqloginredirect() 
	{
	    if (!empty($_GET['code'])) {
	        
	        $AuthorizationCode = $_GET['code'];
	        
	        $AccessToken_url = 'https://graph.qq.com/oauth2.0/token'.
	            '?grant_type=authorization_code'.
	            '&client_id='.self::QQ_APPKEY.
	            '&client_secret='.self::QQ_APPSERCET.
	            '&code='.$AuthorizationCode.
	            '&redirect_uri='.urlencode('http://www.malruco.cn/qqloginredirect');
	        
	        $AccessToken_rs = $this->curl($AccessToken_url);
	        
	        $pattern = '/^'.preg_quote('access_token=').'(.+?)'.preg_quote('&').'/i';
	        $reg_rs = preg_match($pattern, $AccessToken_rs, $matches);
	        
	        $AccessToken = null;
	        if ($reg_rs){
	            $AccessToken = $matches[1];
	        }else{
	            exit('无法取得$AccessToken');
	        }
	        
	        $OpenID_url = 'https://graph.qq.com/oauth2.0/me?access_token='.$AccessToken;
	        
	        $OpenID_url_rs = $this->curl($OpenID_url);
	        
	        eval (str_replace(')','\')',str_replace('callback(','$js_data = json_decode(\'',$OpenID_url_rs)));
	        
	        $OpenID = null;
	        $UserInfo = null;
	        if (!empty($js_data)){
	            
	            $OpenID = $js_data->openid;
	            
	            // 获取用户信息
	            $get_user_info_url = 'https://graph.qq.com/user/get_user_info'.
	            '?access_token='.$AccessToken.
	            '&oauth_consumer_key='.self::QQ_APPKEY.
	            '&openid='.$OpenID;
	            
	            $get_user_info_rs = $this->curl($get_user_info_url);
	            
	            if (!empty($get_user_info_rs)) {
	                $UserInfo = json_decode($get_user_info_rs);
	            }else{
	                exit('无法取得QQ用户信息');
	            }
	            
	            
	            // 保存到session备用
	            session('TPAuth',array(
	                'vendor'=>'qq',
	                'openid'=>$OpenID,
	                'info'=>$UserInfo,
	            ));
	            
	        } else {
	            exit('无法取得openid');
	        }
	        
	        // 查找peopel数据表，得到people_id
	        $people_id = M('people')->where("openid_qc='$OpenID'")->getField('id');
	        
	        if ($people_id){
	            
	            $this->login($people_id,false);
	            header('Location: /index.php?g=Xiaoqu&m=People&a=home');
	        }else{
	            
	            // 没有注册手机，进入注册流程
	            header('Location: /index.php?g=Xiaoqu&m=People&a=register');
	            
	        }
	        
	    }
	    
	    
	    
	}
	
	public function wblogin()
	{
	    $authorize_url = 'https://api.weibo.com/oauth2/authorize?client_id='.self::WEIBO_APPKEY.'&response_type=code&redirect_uri='.urlencode('http://www.malruco.cn/wbloginredirect');
	     
	    header('Location: '.$authorize_url);
	}
	
	Public function wbloginredirect()
	{
	    if (!empty($_GET['code'])) {
	         
	        $AuthorizationCode = $_GET['code'];
	        $AccessToken_url = 'https://api.weibo.com/oauth2/access_token'.
	            '?client_id='.self::WEIBO_APPKEY.
	            '&client_secret=0fa6190fddd99593ebd7beb738d00e5f'.self::WEIBO_APPSERCET.
	            '&grant_type=authorization_code'.
	            '&redirect_uri='.urlencode('http://www.malruco.cn/wbloginredirect').
	            '&code='.$AuthorizationCode;
	         
	        $AccessToken_rs = $this->curl($AccessToken_url,'post');
	         
	        $AccessToken_json = json_decode($AccessToken_rs);
	        
	        $AccessToken = null;
	        if ($AccessToken_rs){
	            $AccessToken = $AccessToken_json->access_token;
	        }else{
	            exit('无法取得$AccessToken');
	        }
	         
	        $OpenID_url = 'https://api.weibo.com/2/account/get_uid.json?source='.self::WEIBO_APPKEY.'&access_token='.$AccessToken;
	         
	        $OpenID_url_rs = $this->curl($OpenID_url);
	         
	        $OpenID_url_json = json_decode($OpenID_url_rs);
	         
	        $OpenID = null;
	        $UserInfo = null;
	        if (!empty($OpenID_url_json)){
	             
	            $OpenID = $OpenID_url_json->uid;
	             
	            // 获取用户信息
	            $get_user_info_url = 'https://api.weibo.com/2/users/show.json'.
	                '?access_token='.$AccessToken.
	                '&source='.self::WEIBO_APPKEY.
	                '&uid='.$OpenID;
	             
	            $get_user_info_rs = $this->curl($get_user_info_url);
	             
	            if (!empty($get_user_info_rs)) {
	                $UserInfo = json_decode($get_user_info_rs);
	            }else{
	                exit('无法取得QQ用户信息');
	            }
	             
	             
	            // 保存到session备用
	            session('TPAuth',array(
	                'vendor'=>'weibo',
	                'openid'=>$OpenID,
	                'info'=>$UserInfo,
	            ));
	             
	        } else {
	            exit('无法取得openid');
	        }
	         
	        // 查找peopel数据表，得到people_id
	        $people_id = M('people')->where("openid_wb='$OpenID'")->getField('id');
	         
	        if ($people_id){
	             
	            $this->login($people_id,false);
	            header('Location: /index.php?g=Xiaoqu&m=People&a=home');
	        }else{
	             
	            // 没有注册手机，进入注册流程
	            header('Location: /index.php?g=Xiaoqu&m=People&a=register');
	             
	        }
	         
	    }
	     
	     
	     
	}
	
	private function curl($url,$method = 'get'){
	    // 创建一个cURL资源
	    $ch = curl_init($url);
	    
	    // 设置URL和相应的选项
	    curl_setopt($ch, CURLOPT_HEADER, 0);
	    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	    
	    if ($method == 'post') curl_setopt ( $ch, CURLOPT_POST, 1 );
	    
	    // 抓取URL并把它传递给浏览器
	    $rs = curl_exec($ch);
	    
	    if ($rs === false){
	        if($errno = curl_errno($ch)) {
	            $error_message = curl_strerror($errno);
	            echo "cURL error ({$errno}):\n {$error_message}";
	        }
	    }else{
	        //echo '正常';
	    }
	    
	    // 关闭cURL资源，并且释放系统资源
	    curl_close($ch);
	    
	    return $rs;
	    
	}
}