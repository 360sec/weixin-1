<?php
class ProductAction extends UserAction{
	public $token;
	public $product_model;
	public $product_cat_model;
	public $isDining;
	public function _initialize() {
		parent::_initialize();
		$this->token=session('token');
		$this->canUseFunction('shop');		
		//查询店铺
		$Companys =M('Company')->where(array('token'=>$this->token))->select();
		if(!$Companys){
			$this->error('请设置lbs公司信息',U('Company/index',array('token'=>$this->token)));
		}
		$this->Companys=$Companys;
		$this->Payment_db=M('payment');		
		$this->assign('Companys',$Companys);
	}
	public function index(){		
		$catid=intval($_GET['catid']);
		$catid=$catid==''?0:$catid;
		$product_model=M('Product');
		$product_cat_model=M('Product_cat');
		$where=array('token'=>session('token'));
		if ($catid){	$where['catid']=$catid;		}
		$where['dining']=0;
		$where['groupon']=0;
        if(IS_POST){
            $key = $this->_post('searchkey');
            if(empty($key)){
                $this->error("关键词不能为空");
            }
            $map['token'] = $this->_get('token'); 
            $map['name|intro|keyword'] = array('like',"%$key%"); 
            $list = $product_model->where($map)->select(); 
            $count      = $product_model->where($map)->count();       
            $Page       = new Page($count,20);
        	$show       = $Page->show();
        }else{
        	$count      = $product_model->where($where)->count();
        	$Page       = new Page($count,20);
        	$show       = $Page->show();
        	$list = $product_model->where($where)->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        }
		foreach($list as $k=>$v){
			$list[$k]['catname']=M('Product_cat')->where(array('id'=>$v['catid']))->getField('name');
		}
		$this->assign('catid',$catid);
		$this->assign('page',$show);		
		$this->assign('list',$list);
		$this->assign('isProductPage',1);
		$this->display();		
	}
	public function cats(){
		$parentid=intval($_GET['parentid']);
		$parentid=$parentid==''?0:$parentid;
		$data=M('Product_cat');
		$where=array('parentid'=>$parentid,'token'=>session('token'));
        if(IS_POST){
            $key = $this->_post('searchkey');
            if(empty($key)){
                $this->error("关键词不能为空");
            }
            $map['token'] = $this->_get('token'); 
            $map['name|des'] = array('like',"%$key%"); 
            $list = $data->where($map)->select(); 
            $count      = $data->where($map)->count();       
            $Page       = new Page($count,20);
        	$show       = $Page->show();
        }else{
        	$count      = $data->where($where)->count();
        	$Page       = new Page($count,20);
        	$show       = $Page->show();
        	$list = $data->where($where)->limit($Page->firstRow.','.$Page->listRows)->select();
        }
		$this->assign('page',$show);		
		$this->assign('list',$list);
		if ($parentid){
			$parentCat = $data->where(array('id'=>$parentid))->find();
		}
		$this->assign('parentCat',$parentCat);
		$this->assign('parentid',$parentid);
		$this->display();		
	}
	public function catAdd(){ 
		if(IS_POST){
			$this->insert('Product_cat','/cats?parentid='.$this->_post('parentid'));
		}else{
			$parentid=intval($_GET['parentid']);
			$parentid=$parentid==''?0:$parentid;
			//查询所有分类
			$catlist =M('product_cat')->where("token='".$this->token."'")->select();
			$this->assign('catlist',$catlist);
			$this->assign('parentid',$parentid);
			$this->display('catSet');
		}
	}
	public function catDel(){
		if($this->_get('token')!=session('token')){$this->error('非法操作');}
        $id = $this->_get('id');
        if(IS_GET){                              
            $where=array('id'=>$id,'token'=>session('token'));
            $data=M('Product_cat');
            $check=$data->where($where)->find();
            if($check==false)   $this->error('非法操作');
            $product_model=M('Product');
            $productsOfCat=$product_model->where(array('catid'=>$id))->select;
            if (count($productsOfCat)){
            	$this->error('本分类下有商品，请删除商品后再删除分类',U('Product/cats',array('token'=>session('token'))));
            }
            $back=$data->where($wehre)->delete();
            if($back==true){
            	$this->success('操作成功',U('Product/cats',array('token'=>session('token'),'parentid'=>$check['parentid'],'dining'=>1)));
            }else{
                 $this->error('服务器繁忙,请稍后再试',U('Product/cats',array('token'=>session('token'))));
            }
        }        
	}
	public function catSet(){
        $id = $this->_get('id'); 
		$checkdata = M('Product_cat')->where(array('id'=>$id))->find();
		if(empty($checkdata)){
            $this->error("没有相应记录.您现在可以添加.",U('Product/catAdd'));
        }
		if(IS_POST){ 
            $data=D('Product_cat');
            $where=array('id'=>$this->_post('id'),'token'=>session('token'));
			$check=$data->where($where)->find();
			if($check==false)$this->error('非法操作');
			if($data->create()){
				if($data->where($where)->save($_POST)){
					
					$this->success('修改成功',U('Product/cats',array('token'=>session('token'),'parentid'=>$this->_post('parentid'),'dining'=>1)));
					
				}else{
					$this->error('操作失败');
				}
			}else{
				$this->error($data->getError());
			}
		}else{ 
			//查询所有分类
			$catlist =M('product_cat')->where("token='".$this->token."' and id <> '$id'")->select();
			$this->assign('catlist',$catlist);
			$this->assign('parentid',$checkdata['parentid']);
			$this->assign('set',$checkdata);
			$this->display();	
		
		}
	}
	//添加商品
	public function add(){ 
		$catid = intval($_GET['catid']);
		$id = intval($_GET['id']);
		if($productCatData = M('Product_cat')->where(array('id' => $catid, 'token' => session('token')))->find()){
			$this->assign('catData', $productCatData);
        } else {
        	$this->error("没有选择相应的分类.", U('Store/index'));
        }
        //产品的规格
        $normsData = M("Product_norms")->where(array('catid' => $catid))->select();
        $colorData = $formatData = array();
        foreach ($normsData as $row) {
        	if ($row['type']) {
        		$colorData[] = $row;
        	} else {
        		$formatData[] = $row;
        	}
        	$normsList[$row['id']] = $row['value'];
        }
        if ($id && ($product = M('Product')->where(array('catid' => $catid, 'token' => session('token'), 'id' => $id))->find())) {
        	$attributeData = M("Product_attribute")->where(array('pid' => $id))->select();
        	$productDetailData = M("Product_detail")->where(array('pid' => $id))->select();
        	$productimage = M("Product_image")->where(array('pid' => $id))->select();
        	$colorList = $formatList = $pData = array();
        	foreach ($productDetailData as $p) {
        		$p['formatName'] = $normsList[$p['format']];
        		$p['colorName'] = $normsList[$p['color']];
        		$formatList[] = $p['format'];
        		$colorList[] = $p['color'];
        		$pData[] = $p;
        	}
        	$this->assign('set', $product);
        	$this->assign('formatList', $formatList);
        	$this->assign('colorList', $colorList);
        	$this->assign('imageList', $productimage);
        	//print_r($productimage);die;
        } else {
	        //分类产品的属性
	        $data = M("Product_attrs")->where(array('catid' => $catid))->select();
	        $attributeData = array();
	        foreach ($data as $row) {
	        	$row['aid'] = $row['id'];
	        	$row['id'] = 0;
	        	$attributeData[] = $row;
	        }
        }
        
        
        // 读取小区号的微站分类
        	/*     本公众号所属的帐号           */
            /*     帐号类型如果是小区，则读取本帐号下的第一个公众号的微站分类        */
            /* 否则查找本帐号的所属小区，再找到该小区的小区帐号，读取该帐号下的第一个公众号的微站分类 */
            /*  因此，关键是找到一个token，再去读取这个token下的微站分类数据 */
        $xq_user = null;
        if ($this->user['account_type'] == 1){
        	$xq_user = $this->user;
        }else{
        	if ($this->user['community_id'] != 0){
        		$xq_user = M('Users')->where(array('community_id'=>$this->user['community_id'],'account_type'=>1))->find();
        	}
        }
        
        $wz_category_data = NULL;
        if (!empty($xq_user)){
        	$xq_wx = M('Wxuser')->where(array('uid'=>$xq_user['id']))->order('createtime asc')->find();
        	if (!empty($xq_wx)){
        		$wz_category_data = M('Classify')->where(array(
        				'token'=>$xq_wx['token'],
        				'navpage_status'=>1
        		))->select();
        	}
        }
        //print_r($xq_user);
        //print_r($xq_wx);
        //print_r($wz_category_data);
        //处理分类的级别显示
        $wz_category_data = $this->makeLevelClassNames($wz_category_data);
        
        $this->assign('wz_cates',$wz_category_data);
        
        
        
        
        
        
        
        /**
         * 读取品牌数据
         */
        
        
        $Brand = M('Brand');
        $brands = $Brand->where(array(
            'status'=>1
        ))->select();
        
        if (empty($brands)) $brands= array();
        
        $brand_casual = true;
        
        if (empty($product['brand'])){
            $brand_casual =false;
        }
        
        foreach ($brands as $brand_item){
            if ($brand_item['id'] == $product['brand']){
                $brand_casual = false;
            }
        }
        
        if ($brand_casual){
            $casual_selected_brand = $Brand->where(array(
                'id'=>$product['brand'],
            ))->find();
            
            array_push($brands, $casual_selected_brand);
        }
        
        $this->assign('brands',$brands);
        
        
        
        
		$this->assign('color', $this->color);
		$this->assign('attributeData', $attributeData);
		$this->assign('normsData', $normsData);
		$this->assign('colorData', $colorData);
		$this->assign('formatData', $formatData);
		$this->assign('productCatData', $productCatData);
		$this->assign('productDetailData', $pData);
		$this->assign('catid', $catid);
		$this->display('set');
	}
	/**
	 * 增加商品
	 */
	public function productSave() {
		
		$token = isset($_POST['token']) ? htmlspecialchars($_POST['token']) : '';
		$catid = isset($_POST['catid']) ? intval($_POST['catid']) : 0;
		$community_catid =  isset($_POST['community_catid']) ? intval($_POST['community_catid']) : 0;
		$brand =  isset($_POST['brand']) ? intval($_POST['brand']) : 0;
		$num = isset($_POST['num']) ? intval($_POST['num']) : 0;
		$pid = isset($_POST['pid']) ? intval($_POST['pid']) : 0;
		$name = isset($_POST['name']) ? htmlspecialchars($_POST['name']) : '';
		$keyword = isset($_POST['keyword']) ? htmlspecialchars($_POST['keyword']) : '';
		$pic = isset($_POST['pic']) ? htmlspecialchars($_POST['pic']) : '';
		$price = isset($_POST['price']) ? htmlspecialchars($_POST['price']) : '';
		$vprice = isset($_POST['vprice']) ? htmlspecialchars($_POST['vprice']) : '';
		$oprice = isset($_POST['oprice']) ? htmlspecialchars($_POST['oprice']) : '';
		$mailprice = isset($_POST['mailprice']) ? htmlspecialchars($_POST['mailprice']) : '';
		$intro = isset($_POST['intro']) ? $_POST['intro'] : '';
		$attribute = isset($_POST['attribute']) ? htmlspecialchars_decode($_POST['attribute']) : '';
		$norms = isset($_POST['norms']) ? htmlspecialchars_decode($_POST['norms']) : '';
		$images = isset($_POST['images']) ? htmlspecialchars_decode($_POST['images']) : '';
		$sort = isset($_POST['sort']) ? intval($_POST['sort']) : 100;
		
		if ($token != session('token')) {
			exit(json_encode(array('error_code' => true, 'msg' => '不合法的数据')));
		}
		if (empty($name)) {
			exit(json_encode(array('error_code' => true, 'msg' => '商品不能为空')));
		}
		if (empty($catid)) {
			exit(json_encode(array('error_code' => true, 'msg' => '商品分类不能为空')));
		}
		
		
		
		if (!empty($_POST['import_catid'])){
			$catid_data = M('Product_cat')->where(array('id'=>$catid))->find();
			$source_cat = M('Product_cat')->where(array('id'=>$_POST['import_catid']))->find();
			if (empty($source_cat) || empty($catid_data)){
				exit(json_encode(array('error_code' => true, 'msg' => '指定的分类数据不存在！')));
			}else{
				
				// 复制分类中的规格、外观名称（如果本店分类已设置有值，将不复制）
				if (empty($catid_data['norms'])){
					M('Product_cat')->where(array('id'=>$catid))->setField('norms',$source_cat['norms']);
				}
				if (empty($catid_data['color'])){
					M('Product_cat')->where(array('id'=>$catid))->setField('color',$source_cat['color']);
				}
				
				//  复制分类中的规格、外观选项数据（如果本店分类已设置有相同名称的选项，将不复制）
				// 读取
				$source_norms = M('Product_norms')->where(array('catid'=>$_POST['import_catid']))->select();
				$target_norms = M('Product_norms')->where(array('catid'=>$catid))->select();
				// 复制
				if (!empty($source_norms)){
					foreach ($source_norms as $source_norms_item){
						
						$has_item = false;
						
						foreach ($target_norms as $target_norms_item){
							if ($source_norms_item['value'] == $target_norms_item['value']) $has_item = true; // 本店分类已设置有相同名称的选项
						}
						
						if (!$has_item){
							M('Product_norms')->add(array(
									'type'	=>$source_norms_item['type'],
									'catid'	=>$catid,
									'value'	=>$source_norms_item['value'],
									'ordid'	=>0
							));
						}
						
					}
				}
				
				// 复制自定义属性选项（如果本店分类已设置有相同名称的选项，将不复制）
				$source_attrs = M('Product_attrs')->where(array('catid'=>$_POST['import_catid']))->select();
				$target_attrs = M('Product_attrs')->where(array('catid'=>$catid))->select();
				
				if (!empty($source_attrs)){
					foreach ($source_attrs as $source_attrs_item){
				
						$has_item = false;
				
						foreach ($target_attrs as $target_attrs_item){
							if ($source_attrs_item['name'] == $target_attrs_item['name']) $has_item = true; // 本店分类已设置有相同名称的选项
						}
				
						if (!$has_item){
							M('Product_attrs')->add(array(
									'token'	=>$token,
									'catid'	=>$catid,
									'name'	=>$source_attrs_item['name'],
									'value'	=>$source_attrs_item['value'],
									'tyle'	=>0
							));
						}
				
					}
				}
				
				
			}
			
		}
		
		
		
		$data = array('token' => $token, 'num' => $num, 'sort' => $sort, 'catid' => $catid, 'community_catid'=>$community_catid, 'brand'=>$brand, 'name'=> $name, 'price' => $price, 'mailprice' => $mailprice, 'vprice' => $vprice, 'oprice' => $oprice, 'intro' => $intro, 'logourl' => $pic, 'keyword' => $keyword, 'time' => time());
		$product = M('Product');
		if ($pid && $obj = $product->where(array('id' => $pid, 'token' => $token))->find()) {
			$product->where(array('id' => $pid, 'token' => $token))->save($data);
			$keywordid=M('keyword')->field('id')->where(array('pid'=>$pid,'token'=>$token,'module'=>'Product'))->find();
			if($keywordid){
				M('keyword')->where(array('id'=>$keywordid['id']))->save(array('keyword'=>$keyword));
			}else{
				M('keyword')->add(array('keyword'=>$keyword,'pid'=>$pid,'token'=>$token,'module'=>'Product'));
			}			
		} else {
			$pid = $product->add($data);
			M('keyword')->add(array('keyword'=>$keyword,'pid'=>$pid,'token'=>$token,'module'=>'Product'));
		}
		
		
		
		if (empty($pid)) {
			exit(json_encode(array('error_code' => false, 'msg' => '商品添加出错了')));
		}
		
		if (!empty($attribute)) {
			$product_attribute = M('Product_attribute');
			$attribute = json_decode($attribute, true);
			foreach ($attribute as $row) {
				$data_a = array('pid' => $pid, 'aid' => $row['aid'], 'name' => $row['name'], 'value' => $row['value']);
				if ($row['id']) {
					$product_attribute->where(array('id' => $row['id'], 'pid' => $pid))->save($data_a);
				} else {
					$product_attribute->add($data_a);
				}
			}
		}
		
		if (!empty($norms)) {
			$product_detail = M('Product_detail');
			$norms = json_decode($norms, true);
			$detailList = $product_detail->field('id')->where(array('pid' => $pid))->select();
			$oldDetailId = array();
			foreach ($detailList as $val) {
				$oldDetailId[$val['id']] = $val['id'];
			}
			foreach ($norms as $row) {
				$data_d = array('pid' => $pid, 'format' => $row['format'], 'color' => $row['color'], 'num' => $row['num'], 'price' => $row['price'], 'vprice' => $row['vprice']);
				if ($row['id']) {
					unset($oldDetailId[$row['id']]);
					$product_detail->where(array('id' => $row['id'], 'pid' => $pid))->save($data_d);
				} else {
					$product_detail->add($data_d);
				}
			}
			//删除上次剩余的库存
			foreach ($oldDetailId as $id) {
				$product_detail->where(array('id' => $id, 'pid' => $pid))->delete();
			}
		}
		if (!empty($images)) {
			$product_image = M('Product_image');
			$images = json_decode($images, true);
			$iamgelist = $product_image->field('id')->where(array('pid' => $pid))->select();
			$oldImageId = array();
			foreach ($iamgelist as $val) {
				$oldImageId[$val['id']] = $val['id'];
			}
			foreach ($images as $row) {
				if (empty($row['image'])) continue;
				$data_d = array('pid' => $pid, 'image' => $row['image']);
				if ($row['id']) {
					unset($oldImageId[$row['id']]);
					$product_image->where(array('id' => $row['id'], 'pid' => $pid))->save($data_d);
				} else {
					$product_image->add($data_d);
				}
			}
			//删除上次剩余的库存
			foreach ($oldImageId as $id) {
				$product_image->where(array('id' => $id, 'pid' => $pid))->delete();
			}
		}
		exit(json_encode(array('error_code' => false, 'msg' => '商品操作成功','pid'=>$pid)));
	}
	
	/**
	 * 商品类别ajax select
	 */
	public function ajaxCatOptions(){
		$parentid=intval($_GET['parentid']);
		$data=M('Product_cat');
		$catWhere=array('parentid'=>$parentid,'token'=>session('token'));
		$cats=$data->where($catWhere)->select();
		$str='';
		if ($cats){
			foreach ($cats as $c){
				$str.='<option value="'.$c['id'].'">'.$c['name'].'</option>';
			}
		}
		$this->show($str);
	}
	public function set(){
        $id = $this->_get('id'); 
        $product_model=M('Product');
        $product_cat_model=M('Product_cat');
		$checkdata = $product_model->where(array('id'=>$id))->find();
		if(empty($checkdata)){
            $this->error("没有相应记录.您现在可以添加.",U('Product/add'));
        }
		if(IS_POST){ 
            $where=array('id'=>$this->_post('id'),'token'=>session('token'));
			$check=$product_model->where($where)->find();
			if($check==false)$this->error('非法操作');
			if($product_model->create()){
				if($product_model->where($where)->save($_POST)){
					$this->success('修改成功',U('Product/index',array('token'=>session('token'))));
					$keyword_model=M('Keyword');
					$keyword_model->where(array('token'=>session('token'),'pid'=>$this->_post('id'),'module'=>'Product'))->save(array('keyword'=>$this->_post('keyword')));
				}else{
					$this->error('操作失败');
				}
			}else{
				$this->error($product_model->getError());
			}
		}else{
			//分类
			$catWhere=array('parentid'=>0,'token'=>session('token'));
			$cats=$product_cat_model->where($catWhere)->select();
			$this->assign('cats',$cats);
			
			$thisCat=$product_cat_model->where(array('id'=>$checkdata['catid']))->find();
			$childCats=$product_cat_model->where(array('parentid'=>$thisCat['parentid']))->select();
			$this->assign('thisCat',$thisCat);
			$this->assign('parentCatid',$thisCat['parentid']);
			$this->assign('childCats',$childCats);
			$this->assign('isUpdate',1);
			$catsOptions=$this->catOptions($cats,$checkdata['catid']);
			$childCatsOptions=$this->catOptions($childCats,$thisCat['id']);
			$this->assign('catsOptions',$catsOptions);
			$this->assign('childCatsOptions',$childCatsOptions);
			//
			$this->assign('set',$checkdata);
			$this->assign('isProductPage',1);
			$this->display();	
		
		}
	}
	//商品类别下拉列表
	public function catOptions($cats,$selectedid){
		$str='';
		if ($cats){
			foreach ($cats as $c){
				$selected='';
				if ($c['id']==$selectedid){
					$selected=' selected';
				}
				$str.='<option value="'.$c['id'].'"'.$selected.'>'.$c['name'].'</option>';
			}
		}
		return $str;
	}
	public function del(){
		$product_model=M('Product');
		if($this->_get('token')!=session('token')){$this->error('非法操作');}
        $id = $this->_get('id');
        if(IS_GET){                              
            $where=array('id'=>$id,'token'=>session('token'));
            $check=$product_model->where($where)->find();
            if($check==false)   $this->error('非法操作');

            $back=$product_model->where($wehre)->delete();
            if($back==true){
            	$keyword_model=M('Keyword');
            	$keyword_model->where(array('token'=>session('token'),'pid'=>$id,'module'=>'Product'))->delete();
                $this->success('操作成功',U('Product/index',array('token'=>session('token'))));
            }else{
                 $this->error('服务器繁忙,请稍后再试',U('Product/index',array('token'=>session('token'))));
            }
        }        
	}
	public function orders(){
		$product_cart_model=M('product_cart');
		if (IS_POST){
			if ($_POST['token']!=$this->_session('token')){
				exit();
			}
			for ($i=0;$i<40;$i++){
				if (isset($_POST['id_'.$i])){
					$thiCartInfo=$product_cart_model->where(array('id'=>intval($_POST['id_'.$i])))->find();
					if ($thiCartInfo['handled']){
					$product_cart_model->where(array('id'=>intval($_POST['id_'.$i])))->save(array('handled'=>0));
					}else {
						$product_cart_model->where(array('id'=>intval($_POST['id_'.$i])))->save(array('handled'=>1));
					}
				}
			}
			$this->success('操作成功',U('Product/orders',array('token'=>session('token'))));
		}else{
			$where=array('token'=>$this->_session('token'));
			$where['dining']=0;
			$where['groupon']=0;
			if(IS_POST){
				$key = $this->_post('searchkey');
				if(empty($key)){
					$this->error("关键词不能为空");
				}

				$where['truename|address'] = array('like',"%$key%");
				$orders = $product_cart_model->where($where)->select();
				$count      = $product_cart_model->where($where)->limit($Page->firstRow.','.$Page->listRows)->count();
				$Page       = new Page($count,20);
				$show       = $Page->show();
			}else {
				if (isset($_GET['handled'])){
					$where['handled']=intval($_GET['handled']);
				}
				$count      = $product_cart_model->where($where)->count();
				$Page       = new Page($count,20);
				$show       = $Page->show();
				$orders=$product_cart_model->where($where)->order('time DESC')->limit($Page->firstRow.','.$Page->listRows)->select();
			}
			$where['handled']=0;
			$unHandledCount=$product_cart_model->where($where)->count();
			$this->assign('unhandledCount',$unHandledCount);

			$this->assign('orders',$orders);
			$this->assign('page',$show);
			$this->display();
		}
	}
	public function orderInfo(){
		$this->product_model=M('Product');
		$this->product_cat_model=M('Product_cat');
		$product_cart_model=M('product_cart');
		$thisOrder=$product_cart_model->where(array('id'=>intval($_GET['id'])))->find();
		//检查权限
		if (strtolower($thisOrder['token'])!=strtolower($this->_session('token'))){
			//exit();
		}
		if (IS_POST){
			$sent=intval($_POST['sent']);
			$product_cart_model->where(array('id'=>$_GET['id']))->save(array('paid'=>intval($_POST['paid']),'sent'=>$sent,'logistics'=>$_POST['logistics'],'logisticsid'=>$_POST['logisticsid'],'handled'=>1));
			/*已付款***/
			if (intval($_POST['paid'])&&intval($thisOrder['price'])){
				$member_card_create_db=M('Member_card_create');
				$wecha_id=$thisOrder['wecha_id'];
				$userCard=$member_card_create_db->where(array('token'=>$this->token,'wecha_id'=>$wecha_id))->find();
				$member_card_set_db=M('Member_card_set');
				$thisCard=$member_card_set_db->where(array('id'=>intval($userCard['cardid'])))->find();
				$set_exchange = M('Member_card_exchange')->where(array('cardid'=>intval($thisCard['id'])))->find();
				if($set_exchange){
					$arr['token']=$this->token;
					$arr['wecha_id']=$wecha_id;
					$arr['expense']=$thisOrder['price'];
					$arr['time']=time();
					$arr['cat']=99;
					$arr['staffid']=0;
					$arr['score']=intval($set_exchange['reward'])*$order['price'];
					M('Member_card_use_record')->add($arr);
					$userinfo_db=M('Userinfo');
					$thisUser = $userinfo_db->where(array('token'=>$thisCard['token'],'wecha_id'=>$arr['wecha_id']))->find();
					$userArr=array();
					$userArr['total_score']=$thisUser['total_score']+$arr['score'];
					$userArr['expensetotal']=$thisUser['expensetotal']+$arr['expense'];
					$userinfo_db->where(array('token'=>$thisCard['token'],'wecha_id'=>$arr['wecha_id']))->save($userArr);
				}
			}
			if($sent){
				//短信通知买家
				$company = D('Company')->where(array('token' => $thisOrder['token'], 'isbranch' => 0))->find();
				$this->Send_sms($thisOrder['tel'],"您在{$company['name']}商城购买的商品，商家已经给您发货了，请您注意查收");
				//微信支付发货通知
				/* 新版微信支付已经取消发货通知接口
				if($thisOrder['payment']=='wxpay'){
					import("@.ORG.Weixinpay.WxpayMyExt");
					$payset = $this->Payment_db->where(array('token'=>$this->token,'pay_code'=>'wxpay'))->find();
					$pay_config = unserialize($payset['pay_config']);
					$orderinfo=array(
							'openid' => $thisOrder['wecha_id'],
							'transid' => $thisOrder['transaction_id'],
							'out_trade_no' => $thisOrder['orderid'],
					);
					
					$wxpay_myext=new WxpayMyExt($pay_config,$orderinfo);
					发送发货通知
					$result=$wxpay_myext->delivernotify_sent();
				}*/
			}
			$this->success('修改成功',U('Product/orderInfo',array('token'=>session('token'),'id'=>$_GET['id'])));
		}else {
			$this->assign('thisOrder',$thisOrder);
			$carts=unserialize($thisOrder['info']);

			$totalFee=0;
			$totalCount=0;
			
			$data = $this->getCat($carts);
			if (isset($data[1])) {
				foreach ($data[1] as $pid => $row) {
					$totalCount += $row['total'];
					$totalFee += $row['totalPrice'];
					$listNum[$pid] = $row['total'];
				}
			}
			$list = $data[0];
			$this->assign('products', $list);
			$this->assign('totalFee',$totalFee);
			$this->assign('totalCount',$totalCount);
			$this->assign('totalMailprice',$data[2]);
			$this->display();
		}
	}
	
	public function modify_order_price(){
		
		$db = M('Product_cart');
		
		$rs = $db->where(array('id'=>intval($_GET['id']),
							   'token'=>$this->token,
				               'paid'=>0)
							)->setField('price',floatval($_GET['price']));
		
		echo floatval($_GET['price']);exit();
	}
	
	

	public function deleteOrder(){
		$product_model=M('product');
		$product_cart_model=M('product_cart');
		$product_cart_list_model=M('product_cart_list');
		$thisOrder=$product_cart_model->where(array('id'=>intval($_GET['id'])))->find();
		//检查权限
		$id=$thisOrder['id'];
		if ($thisOrder['token']!=$this->_session('token')){
			exit();
		}
		//
		//删除订单和订单列表
		$product_cart_model->where(array('id'=>$id))->delete();
		$product_cart_list_model->where(array('cartid'=>$id))->delete();
		//商品销量做相应的减少
		$carts=unserialize($thisOrder['info']);
		foreach ($carts as $k=>$c){
			if (is_array($c)){
				$productid=$k;
				$price=$c['price'];
				$count=$c['count'];
				$product_model->where(array('id'=>$k))->setDec('salecount',$c['count']);
			}
		}
		$this->success('操作成功',$_SERVER['HTTP_REFERER']);
	}
	/**
	 * 商城设置
	 */
	public function setting(){
		$setting = M('Product_setting');
		$obj = $setting->where(array('token' => $this->token))->find();
		if (IS_POST) {
			if ($obj) {
				$t = $setting->where(array('token' => $this->token))->save($_POST);
				if ($t) {
					$this->success('修改成功');
				} else {
					$this->error('操作失败');
				}
			} else {
				$pid = $setting->add($_POST);
				if ($pid) {
					$this->success('操作成功');
				} else {
					$this->error('操作失败');
				}
			}
		} else {
			$this->assign('setting', $obj);
			$this->display();	
		}
	}
	/**
	 * 规格列表
	 */
	public function norms() {
		$type = isset($_GET['type']) ? intval($_GET['type']) : 0;
		$catid = intval($_GET['catid']);
		if($checkdata = M('Product_cat')->where(array('id' => $catid, 'token' => session('token')))->find()){
			$this->assign('catData', $checkdata);
        } else {
        	$this->error("没有选择相应的分类");
        }
        
		$data = M('product_norms');
		$where = array('catid' => $catid, 'type' => $type);
		$count      = $data->where($where)->count();
		$Page       = new Page($count,20);
		$show       = $Page->show();
		$list = $data->where($where)->limit($Page->firstRow.','.$Page->listRows)->order('ordid asc')->select();
		$this->assign('page', $show);		
		$this->assign('list', $list);
		$this->assign('catid', $catid);
		$this->assign('type', $type);
		$this->display();		
	}
	/**
	 * 规格操作
	 */
	public function normsAdd() {
		$type = intval($_REQUEST['type']) ? intval($_REQUEST['type']) : 0;
		if($data = M('Product_cat')->where(array('id' => $this->_get('catid'), 'token' => session('token')))->find()){
			$this->assign('catData', $data);
        } else {
        	$this->error("没有选择相应的分类.", U('Product/index'));
        }
		if (IS_POST) { 
            $data = D('product_norms');
            $id = intval($this->_post('id'));
            if ($id) {
	            $where = array('id' => $id, 'type' => $type, 'catid' => $this->_get('catid'));
				$check = $data->where($where)->find();
				if ($check == false) $this->error('非法操作');
            }
			if ($data->create()) {
				if ($id) {
					if ($data->where($where)->save($_POST)) {
						$this->success('修改成功', U('Product/norms',array('token' => session('token'), 'catid' => $this->_post('catid'), 'type' => $type)));
					} else {
						$this->error('操作失败');
					}
				} else {
					if ($data->add($_POST)) {
						$this->success('添加成功', U('Product/norms',array('token' => session('token'), 'catid' => $this->_post('catid'), 'type' => $type)));
					} else {
						$this->error('操作失败');
					}
				}
			} else {
				$this->error($data->getError());
			}
		} else { 
			$data = M('product_norms')->where(array('id' => $this->_get('id'), 'type' => $type, 'catid' => $this->_get('catid')))->find();
			//print_r($data);die;
			$this->assign('catid', $this->_get('catid'));
			$this->assign('type', $type);
			$this->assign('token', session('token'));
			$this->assign('set', $data);
			$this->display();	
		}
	}
	
	/**
	 *规格的删除 
	 */
	public function normsDel() {
		if($this->_get('token') != session('token')){$this->error('非法操作');}
        $id = intval($this->_get('id'));
        $catid = intval($this->_get('catid'));
        $type = intval($this->_get('type'));
        if(IS_GET){                              
            $where = array('id' => $id, 'type' => $type, 'catid' => $catid);
            $data = M('product_norms');
            $check = $data->where($where)->find();
            if($check == false) $this->error('非法操作');
            if ($back = $data->where($wehre)->delete()) {
            	$this->success('操作成功',U('Product/norms', array('type' => $type, 'catid' => $check['catid'])));
            } else {
				$this->error('操作失败',U('Product/norms', array('type' => $type, 'catid' => $check['catid'])));
            }
        }        
	}
	/**
	 * 分类属性列表
	 */
	public function attrs() {
		$catid = intval($_GET['catid']);
		if($checkdata = M('Product_cat')->where(array('id' => $catid, 'token' => session('token')))->find()){
			$this->assign('catData', $checkdata);
        } else {
        	$this->error("没有选择相应的分类");
        }
		$data = M('Product_attrs');
		$where = array('catid' => $catid, 'token' => session('token'));
		$count      = $data->where($where)->count();
		$Page       = new Page($count,20);
		$show       = $Page->show();
		$list = $data->where($where)->limit($Page->firstRow.','.$Page->listRows)->select();
		$this->assign('page', $show);		
		$this->assign('list', $list);
		$this->assign('catid', $catid);
		$this->display();		
	}
	
	/**
	 * 分类属性的操作
	 */
	public function attrsAdd() {
		if($checkdata = M('Product_cat')->where(array('id' => $this->_get('catid'), 'token' => session('token')))->find()){
			$this->assign('catData', $checkdata);
        } else {
        	$this->error("没有选择相应的分类");
        }
		if (IS_POST) { 
            $data = D('Product_attrs');
            $id = intval($this->_post('id'));
            $catid = intval($this->_post('catid'));
            if ($id) {
	            $where = array('id' => $id, 'token' => session('token'), 'catid' => $catid);
				$check = $data->where($where)->find();
				if ($check == false) $this->error('非法操作');
            }
			if ($data->create()) {
				if ($id) {
					if ($data->where($where)->save($_POST)) {
						$this->success('修改成功', U('Product/attrs',array('token' => session('token'), 'catid' => $this->_post('catid'))));
					} else {
						$this->error('操作失败');
					}
				} else {
					if ($data->add($_POST)) {
						$this->success('添加成功', U('Product/attrs',array('token' => session('token'), 'catid' => $this->_post('catid'))));
					} else {
						$this->error('操作失败');
					}
				}
			} else {
				$this->error($data->getError());
			}
		} else { 
			$data = M('Product_attrs')->where(array('id' => $this->_get('id'), 'token' => session('token'), 'catid' => $this->_get('catid')))->find();
			$this->assign('catid', $this->_get('catid'));
			$this->assign('token', session('token'));
			$this->assign('set', $data);
			$this->display();	
		}
	}
	
	/**
	 *属性的删除 
	 */
	public function attrsDel() {
		if($this->_get('token') != session('token')){$this->error('非法操作');}
        $id = intval($this->_get('id'));
        $catid = intval($this->_get('catid'));
        if(IS_GET){                              
            $where = array('id' => $id, 'token' => session('token'), 'catid' => $catid);
            $data = M('Product_attrs');
            $check = $data->where($where)->find();
            if($check == false) $this->error('非法操作');
            if ($back = $data->where($wehre)->delete()) {
            	$this->success('操作成功',U('Product/attrs', array('token' => session('token'), 'catid' => $catid)));
            } else {
				$this->error('操作失败',U('Product/attrs', array('token' => session('token'), 'catid' => $catid)));
            }
        }        
	}
	
	/**
	 * 批量修改运费
	 */
	public function setexp() {
		
		$cid = empty($_GET['cid']) ? NULL : intval($_GET['cid']);
		if ($cid == NULL) $this->error('非法参数');
		else $this->assign('cid',$cid);
		
		$price = 0;
		
		if (IS_POST){
			
			$cid = intval($_POST['cid']);
			$inc_child = $_POST['inc_child'];
			$exp_price = floatval($_POST['exp']);
			
			$ids = ''.$cid;
			if (!empty($inc_child)) {
				
				$child_ids = $this->getChildCids($cid);
				
				if (!empty($child_ids)){
					foreach ($child_ids as $k=>$v){
						$ids = $ids.','.$v;
					}
				}
				
			}
			
			$rs = M('product')->where('catid in ('.$ids.')')->setField('mailprice',$exp_price);
			$this->assign('rs',intval($rs));
			
			$price = $exp_price;
		}
		
		$this->assign('price',$price);
		
		$this->display();
	}
	
	/**
	 * 递归获取一个类别下的所有子类
	 * @param unknown $cid
	 * @return multitype:
	 */
	private function getChildCids($cid) {
		$data = M('Product_cat')->where(array('parentid'=>$cid))->select();
		$ids = array();
		if (!empty($data)){
			foreach ($data as $k=>$v){
				array_push($ids, $v['id']);
				$child_ids = getChildCids($v['id']);
				$ids = array_merge($ids,$child_ids);
			}
		}
		return $ids;
	}
}


?>