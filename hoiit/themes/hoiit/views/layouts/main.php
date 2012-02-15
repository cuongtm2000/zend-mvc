<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="content-language" content="vi, en" />
        <meta name="revisit-after" content="1 days" />
        <meta name="robots" content="noodp,index,follow" />
        <link rel="SHORTCUT ICON" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/x-icon" />
        <link rel="icon" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/gif" />
        <title><?php echo CHtml::encode($this->pageTitle); ?></title>
        <meta name="keywords" content="<?php echo $this->keywords ?>" />
        <meta name="description" content="<?php echo $this->description ?>" />
        <link type="text/css" rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/dosvn.css" />
        <!--[if IE]>
        <style type="text/css">
            fieldset {position: relative; margin-top:10px}
            legend {position: absolute;	top: -0.5em; left: 1em}
        </style>
        <![endif]-->
		<script type="text/javascript">

		  var _gaq = _gaq || [];
		  _gaq.push(['_setAccount', 'UA-25177991-35']);
		  _gaq.push(['_setDomainName', 'hoiit.com']);
		  _gaq.push(['_trackPageview']);

		  (function() {
			var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		  })();

		</script>
    </head>
    <body>
        <div id="header">
            <div class="logo"><a href="<?php echo Yii::app()->request->baseUrl ?>/"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo" /></a></div>
            <?php
            $this->widget('zii.widgets.CMenu', array(
                'id' => 'nav',
                'items' => array(
                    array('label' => 'Register', 'url' => array('/register'), 'visible' => Yii::app()->user->isGuest, 'itemOptions' => array('class' => 'register')),
                    array('label' => 'Login', 'url' => array('/login'), 'visible' => Yii::app()->user->isGuest, 'itemOptions' => array('class' => 'login')),
                    array('label' => 'Dashboard', 'url' => array('/dashboard'), 'visible' => !Yii::app()->user->isGuest, 'itemOptions' => array('class' => 'login')),
                    array('label' => 'Logout (' . Yii::app()->user->name . ')', 'url' => array('/logout'), 'visible' => !Yii::app()->user->isGuest, 'itemOptions' => array('class' => 'register'))
                ),
            ));
            ?>
        </div>

        <?php
        $this->widget('zii.widgets.CMenu', array(
            'id' => 'tabs',
            'linkLabelWrapper' => 'span',
            'items' => array(
                array('label' => 'Home page', 'url' => Yii::app()->request->baseUrl.'/'),
                array('label' => 'Tutorials', 'url' => array('/posts')),
                array('label' => 'Web templates', 'url' => array('/web-templates')),
            ),
        ));
        ?><div class="clear"></div>
        <div class="paddinglr10">
            <div class="menu-bar">
                <?php $this->widget('ext.common.dashBoard') ?>
                <div class="catmenu">
                    <?php $this->widget('ext.common.listCats') ?>
                </div>
            </div><!--End menu bar-->
            <div class="contenter">
                <div class="content">
                    <?php $this->widget('zii.widgets.CBreadcrumbs', array('links' => $this->breadcrumbs,)); ?><!-- breadcrumbs -->
                    <?php echo $content; ?>
                    <div class="clear"></div>
                </div><!--End content-->
                <div id="footer">
                    <p>Copyright &copy; <?php echo date('Y')?> by Hoiit.com. All rights reserved</p>
                </div>
            </div><!--End contenter-->
        </div><!--End paddinglr10-->
    </body>
</html>