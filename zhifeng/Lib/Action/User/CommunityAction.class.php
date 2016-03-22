<?php
class CommunityAction extends UserAction {
    
    protected function _initialize()
    {
        parent::_initialize();
        
        $this->checkPermission();
        
    }
    
    /**
     * 社区内所有店铺的订单查询
     */
    public function orderList()
    {
        $community_id = $this->user['community_id'];
        
        // 找出社区ID下的所有帐号下的所有店铺的token
        $m = new Model();
        $orders = $m->query('SELECT `zfwx_product_cart`.id as id,
                                    `zfwx_product_cart`.orderid as orderid,
                                    `zfwx_product_cart`.paid as paid,
                                    `zfwx_product_cart`.token as token,
                                    `zfwx_product_cart`.total as total,
                                    `zfwx_product_cart`.price as price,
                                    `zfwx_wxuser`.headerpic as headerpic,
                                    `zfwx_wxuser`.wxname as wxname
                                   FROM `zfwx_product_cart` 
                                   right join `zfwx_wxuser` on `zfwx_product_cart`.`token`=`zfwx_wxuser`.`token`
                                   WHERE `zfwx_product_cart`.`token` in (SELECT `token` FROM `zfwx_wxuser` WHERE `uid` in (
                                                                         SELECT `id` FROM `zfwx_users` WHERE `community_id`='.$community_id.'))');
        
        $this->assign('orders',$orders);
        
        $this->display();
        
    }
    
    /**
     * 检查是否有权限使用社区管理模块
     */
    private function checkPermission()
    {
        // 必须是社区号
        // 已经关联了社区
        if ($this->user['account_type'] != 1 || empty($this->user['community_id'])) {
            throw_exception('你没有权限访问');
        }
    }
    
}