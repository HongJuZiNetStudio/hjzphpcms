<?php 
/**
 * @version $Id$
 * @author xjiujiu <xjiujiu@foxmail.com>
 * @description HongJuZi Framework
 * @copyright Copyright (c) 2011-2012 http://www.xjiujiu.com.All right reserved
 */
defined('_HEXEC') or die('Restricted access!');

HClass::import(HResponse::getCurThemePath() . '.action.articleAction');

/**
 * 成功案例控制器
 * 
 * @author xjiujiu <xjiujiu@foxmail.com>
 * @package demo.action
 * @since 1.0.0
 */
class CasesAction extends ArticleAction
{

    /**
     * 初始化数据
     * 
     * {@inheritdoc}
     * 
     * @author xjiujiu <xjiujiu@foxmail.com>
     */
    public function __construct()
    {
        parent::__construct();

        $this->_popo->modelEnName   = 'cases';
        $this->_catIdentifier       = 'cases-cat';
    }

    /**
     * 执行其他任务
     * 
     * {@inheritdoc}
     * 
     * @author xjiujiu <xjiujiu@foxmail.com>
     */
    protected function _otherJobs()
    {
        parent::_otherJobs();

        $this->_assignContactInfo();
    }

}

?>
