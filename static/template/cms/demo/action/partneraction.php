<?php 

/**
 * @version $Id$
 * @create 2013-8-6 10:20:09 By xjiujiu
 * @description HongJuZi Framework
 * @copyRight Copyright (c) 2011-2012 http://www.xjiujiu.com.All right reserved
 */
defined('_HEXEC') or die('Restricted access!');

HClass::import(HResponse::getCurThemePath() . '.action.pageaction');

/**
 * 商家合作信息类 
 * 
 * @author xjiujiu <xjiujiu@foxmail.com>
 * @package app.site.action
 * @since 1.0.0
 */
class PartnerAction extends PageAction
{

    /**
     * 构造函数
     * 
     * @desc
     * 
     * @author xjiujiu <xjiujiu@foxmail.com>
     * @access public
     */
    public function __construct()
    {
        parent::__construct();
        $this->_identifier          = 'partner';
        $this->_popo->modelZhName   = '商家合作';
    }

}

?>
