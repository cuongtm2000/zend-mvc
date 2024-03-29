<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="content-language" content="vi, en" />
        <meta name="revisit-after" content="1 days" />
        <meta name="robots" content="noodp,index,follow" />
        <link rel="SHORTCUT ICON" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/x-icon" />
        <link rel="icon" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/gif" />
        <title><?php echo CHtml::encode($this->pageTitle); ?> - Hoiit.com</title>
        <meta name="keywords" content="<?php echo $this->keywords ?>" />
        <meta name="description" content="<?php echo $this->description ?>" />
        <link type="text/css" rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/hoiit.css" />
        <!--[if IE]>
        <style type="text/css">
            fieldset {position: relative; margin-top:10px}
            legend {position: absolute;	top: -0.5em; left: 1em}
        </style>
        <![endif]-->
		<script type="text/javascript">

			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', 'UA-30169391-1']);
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
            <div class="logo"><a href="<?php echo Yii::app()->request->baseUrl ?>/"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo" /></a> <?php if($this->topCatname):?><span><strong><?php echo $this->topCatname?></strong></span><?php endif?></div>
            <?php
            $this->widget('zii.widgets.CMenu', array(
                'id' => 'nav',
                'items' => array(
                    array('label' =>  Yii::t('main', 'register'), 'url' => array('/register'), 'visible' => Yii::app()->user->isGuest, 'itemOptions' => array('class' => 'register')),
                    array('label' =>  Yii::t('main', 'login'), 'url' => array('/login'), 'visible' => Yii::app()->user->isGuest, 'itemOptions' => array('class' => 'login')),
                    array('label' => 'Dashboard', 'url' => array('/dashboard'), 'visible' => !Yii::app()->user->isGuest, 'itemOptions' => array('class' => 'login')),
					array('label' => 'Profile', 'url' => array('/dashboard/user/edit'), 'visible' => !Yii::app()->user->isGuest, 'itemOptions' => array('class' => 'user')),
                    array('label' => 'Logout (' . Yii::app()->user->name . ')', 'url' => array('/logout'), 'visible' => !Yii::app()->user->isGuest, 'itemOptions' => array('class' => 'register'))
                ),
            ));
            ?>
            <div class="lang"><a href="<?php echo Yii::app()->request->baseUrl ?>/vn" title="Viet nam"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/vn.gif" alt="Viet nam" /></a> <a href="<?php echo Yii::app()->request->baseUrl ?>/en" title="English"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/en.gif" alt="English" /></a></div>
        </div>

		<ul id="tabs">
			<li><a<?php echo ($this->ID =='site') ? ' class="select"' : ''?> href="<?php echo Yii::app()->request->baseUrl?>/"><span><?php echo Yii::t('main', 'home')?></span></a></li>
			<li><a<?php echo ($this->ID =='posts') ? ' class="select"' : ''?> href="<?php echo Yii::app()->request->baseUrl?>/posts"><span><?php echo Yii::t('main', 'tutorials')?></span></a></li>
			<!-- <li><a<?php echo ($this->ID =='templates') ? ' class="select"' : ''?> href="<?php echo Yii::app()->request->baseUrl?>/templates"><span>Web templates</span></a></li> -->
            <li><a<?php echo ($this->ID =='request') ? ' class="select"' : ''?> href="<?php echo Yii::app()->request->baseUrl?>/request"><span><?php echo Yii::t('main', 'sendRequest')?></span></a></li>
		</ul>
        <div class="clear paddinglr10">
            <div class="menu-bar">
                <?php if($this->ID =='user'):?>
                <div class="catmenu">
                    <ul class="menu-li">
                        <li><a href="" title="User Control">User Control</a>
                            <ul>
                                <li><a href="<?php echo Yii::app()->request->baseUrl ?>/dashboard/user/edit" title="Edit information">Edit information</a></li>
                                <li><a href="<?php echo Yii::app()->request->baseUrl ?>/dashboard/user/changepass" title="Change password">Change password</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <?php endif;?>

                <?php $this->widget('ext.common.dashBoard') ?>

				<?php if($this->ID =='templates'):?>
				<div class="catmenu">
					<h4>Web templates</h4>
					<ul class="menu-li">
						<?php foreach($this->listCatTemplates as $value):?>
						<li><a href="templates/<?php echo $value['tag']?>"><?php echo $value['cat_name']?></a></li>
						<?php endforeach?>
					</ul>
				</div>
				<?php endif;?>

                <div class="catmenu">
                    <?php $this->widget('ext.common.listCats') ?>
                </div>

				<div class="catmenu">
					<h4><?php echo Yii::t('main', 'topPoster')?></h4>
					<ul class="top-user">
                        <?php foreach($this->listTopPostUsers as $values):?>
                            <li><a href="#" title="<?php echo $values['username']?>"><?php if($values['picture']):?><img src="<?php echo Yii::app()->request->baseUrl?>/public/userfiles/image/usernames/<?php echo $values['picture']?>" alt="<?php echo $values['username']?>" /><?php else:?><img src="<?php echo Yii::app()->theme->baseUrl?>/images/no-avatar.png" alt="<?php echo $values['username']?>" /><?php endif;?></a></li>
                        <?php endforeach?>
					</ul><div class="clear"></div>
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