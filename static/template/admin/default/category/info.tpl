﻿<?php require_once(HResponse::path('admin') . '/common/header.tpl'); ?>
	</head>
	<body>
        <?php require_once(HResponse::path('admin') . '/common/navmenu.tpl'); ?>
		<div class="container-fluid" id="main-container">
            <?php require_once(HResponse::path('admin') . '/common/sidebar.tpl'); ?>
			<div id="main-content" class="clearfix">
                <?php
                    $copyRecord     = HResponse::getAttribute('copyRecord'); 
                    $record         = HResponse::getAttribute('record'); 
                ?>    
                <?php require_once(HResponse::path('admin') . '/common/cur-location.tpl'); ?>
                    <div class="row-fluid">
                    <!-- PAGE CONTENT BEGINS HERE -->
                        <form action="<?php echo HResponse::url($modelEnName . '/' . HResponse::getAttribute('nextAction') ); ?>" method="post" enctype="multipart/form-data" id="info-form">
                            <div class="row-fluid">
                                <div class="span9 content-box">
                                <!-- PAGE CONTENT BEGINS HERE -->
                                    <?php $field = 'id'; require(HResponse::path('admin') . '/fields/hidden.tpl'); ?>
                                    <?php $record = !$record ? $copyRecord : $record; ?>
                                    <?php $field = 'name'; require(HResponse::path('admin') . '/fields/text.tpl'); ?>
                                    <?php $field = 'parent_id'; require(HResponse::path('admin') . '/fields/category.tpl'); ?>
                                    <?php $field = 'parent_path'; require(HResponse::path('admin') . '/fields/hidden.tpl'); ?>
                                    <?php $field = 'description'; require(HResponse::path('admin') . '/fields/textarea.tpl'); ?>
                                    <?php $field = 'image_path'; require(HResponse::path('admin') . '/fields/image.tpl'); ?>
                                <!-- PAGE CONTENT ENDS HERE -->
                                </div>
                                <div class="span3">
                                    <div class="widget-box">
                                        <div class="widget-header">
                                            <h4>发布</h4>
                                            <div class="widget-toolbar">
                                                <a href="#" data-action="collapse">
                                                    <i class="icon-chevron-up"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="widget-body">
                                            <div class="widget-main">
                                                <?php $field = 'sort_num'; require(HResponse::path('admin') . '/fields/text.tpl'); ?>
                                                <?php $field = 'identifier'; require(HResponse::path('admin') . '/fields/text.tpl'); ?>
                                                <?php $field = 'is_recommend'; require(HResponse::path('admin') . '/fields/checkbox.tpl'); ?>
                                                <?php require_once(HResponse::path('admin') . '/common/info-buttons.tpl');  ?>
                                            </div>
                                        </div>
                                    </div>
                                    <hr/>
                                    <div class="widget-box">
                                        <div class="widget-header">
                                            <h4>维护</h4>
                                            <div class="widget-toolbar">
                                                <a href="#" data-action="collapse">
                                                    <i class="icon-chevron-up"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="widget-body">
                                            <div class="widget-main">
                                                <?php $field = 'total_use'; require(HResponse::path('admin') . '/fields/text.tpl'); ?>
                                                <?php $field = 'create_time'; require(HResponse::path('admin') . '/fields/datetime.tpl'); ?>
                                                <?php $field = 'author'; require(HResponse::path('admin') . '/fields/select.tpl'); ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                             </div><!--/row-->
                         </form>
                    <!-- PAGE CONTENT ENDS HERE -->
                     </div><!--/row-->
                </div><!--/#page-content-->
			</div><!-- #main-content -->
		</div><!--/.fluid-container#main-container-->
        <?php require_once(HResponse::path('admin') . '/common/footer.tpl'); ?>
        <script type="text/javascript" src="<?php echo HResponse::uri('admin'); ?>/js/info.js"></script>
	</body>
</html>
