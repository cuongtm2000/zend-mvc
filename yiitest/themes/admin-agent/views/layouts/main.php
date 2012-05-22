<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="content-language" content="vi, en" />
        <link rel="SHORTCUT ICON" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/x-icon" />
        <link rel="icon" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/gif" />
        
        <title><?php echo CHtml::encode($this->pageTitle); ?></title>
        <link type="text/css" rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/dosvn.css" />
    </head>
    <body>
        <div id="wapper">
            <div id="header">
                <div class="logo"><a href="/agent"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo" /></a> <strong>Reseller</strong></div>
                <div class="frmlogin">
                    Chào <strong><?php echo Yii::app()->agentUser->name ?></strong>
                    <a href="#" title="Hộp thư">Hộp thư (0)</a>
                    <a href="<?php echo Yii::app()->request->baseUrl ?>/agent/logout" title="Thoát">Thoát</a>
                </div>
            </div>
            <ul id="tabs">
                <li><a href="<?php echo Yii::app()->request->baseUrl ?>/agent"><span>Trang chủ</span></a></li>
            </ul><div class="clear"></div>
            <div class="paddinglr10">
                <div class="menu-bar">
                    <div id="catmenu">
                        <ul class="menu-li">
                            <li><a href="<?php echo Yii::app()->request->baseUrl ?>/agent/usernames">Thành viên</a>
                                <ul>
                                    <li><a href="<?php echo Yii::app()->request->baseUrl ?>/agent/usernames">Danh sách</a></li>
                                </ul>
                            </li>
                        </ul> 
                    </div>
                </div>
                <div class="contenter">
                    <?php echo $content ?>
                    <div id="footer">
                        <p>Copyright &copy; <?php echo date('Y'); ?> by <a href="http://dos.vn" title="Dos.vn">Dos.vn</a>. All rights reserved</p>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>