<?php
class BrandAction extends UserAction{
    
    public function add(){
        
        $db = M('Brand');
        
        //获取未审核的本级数据
        $perItems_where = array('status'=>0);

        $preItems = $db->where($perItems_where)->order('id desc')->select();
        if (!empty($preItems)){
            $this->assign('preItems',$preItems);
        }else{
            $this->assign('preItems',NULL);
        }
        	
        // 如果是表单提交操作，那么插入数据
        if (IS_POST){
        
            $new_item_name = empty($_POST['new_item_name']) ? NULL : trim($_POST['new_item_name']);
            if (empty($new_item_name)) $this->error('品牌名称不能为空！');
        
            // 检查项是否已经存在
            $check_rs = $db->where(array('name'=>$new_item_name))->select();
            if (count($check_rs) > 0) $this->error('品牌['.$new_item_name.']已经存在！');
        
            // 把数据插入数据库
            $data['name'] = $new_item_name;
        
            if ($db->add($data) ){
                $this->success('数据插入成功！');
            }else{
                $this->error('数据插入失败！');
            }
            
        }
        
        $this->display();
        
    }
    
}