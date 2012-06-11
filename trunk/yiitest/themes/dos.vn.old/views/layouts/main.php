<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="content-language" content="vi, en" />
        <meta name="revisit-after" content="1 days" />
        <meta name="robots" content="noodp,index,follow" />
        <link rel="SHORTCUT ICON" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/x-icon" />
        <link rel="icon" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.ico" type="image/gif" />
        <link href="<?php echo Yii::app()->theme->baseUrl; ?>/css/dosvn.css" rel="stylesheet" type="text/css" />

        <title><?php echo CHtml::encode($this->pageTitle); ?><?php echo ($this->title) ? ' - '.CHtml::encode($this->title) : '' ?></title>
        <meta name="keywords" content="<?php echo $this->keywords ?>" />
        <meta name="description" content="<?php echo $this->description ?>" />
        <!--[if IE 6]>
        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/pngfix.js"></script>
        <script type="text/javascript">DD_belatedPNG.fix('img');</script>
        <![endif]-->

<?php echo $this->analytics?>
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <div class="header-left"><a href="<?php echo Yii::app()->request->baseUrl.'/'.Yii::app()->session['lang']?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo" /></a></div>
				<ul id="lang">
					<li><a href="/en" title="English"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/en.gif" alt="English" /> English</a></li>
					<li><a href="/" title="Việt Nam"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/vi.gif" alt="Việt Nam" /> Việt Nam</a></li>
				</ul>
				<ul id="nav">
					<li<?php echo (Yii::app()->controller->id == 'site') ? ' class="active"' : ''?>><a href="<?php echo Yii::app()->request->baseUrl.'/'.Yii::app()->session['lang']?>" title="<?php echo Yii::t('main', 'home')?>"><?php echo Yii::t('main', 'home')?></a></li>
					<li<?php echo (Yii::app()->controller->id == 'templates') ? ' class="active"' : ''?>><a href="<?php echo LANGURL.'/'.Yii::t('main', 'templates.link')?>" title="<?php echo Yii::t('main', 'templates.name')?>"><?php echo Yii::t('main', 'templates.name')?></a></li>
					<li<?php echo (Yii::app()->controller->id == 'articles') ? ' class="active"' : ''?>><a href="<?php echo LANGURL.'/'.Yii::t('main', 'articles.link')?>" title="<?php echo Yii::t('main', 'articles.name')?>"><?php echo Yii::t('main', 'articles.name')?></a></li>
					<?php if(Yii::app()->user->isGuest):?>
						<li><a href="/admin" title="<?php echo Yii::t('main', 'login')?>"><?php echo Yii::t('main', 'login')?></a></li>
					<?php else:?>
						<li><a href="/<?php echo Yii::t('main', 'logout.link')?>"><?php echo Yii::t('main', 'logout.name')?> (<?php echo Yii::app()->user->name?>)</a></li>
					<?php endif;?>
                    <li><a href="<?php echo LANGURL.'/'.Yii::t('main', 'contact.link')?>" title="<?php echo Yii::t('main', 'contact.name')?>"><?php echo Yii::t('main', 'contact.name')?></a></li>
				</ul>
                <div class="clear"></div>
            </div><!--End header-->

            <?php echo $content; ?>

        </div><!--End Wrapper-->
        <div id="bg-fter">
            <div id="footer">
                <ul class="nav-fter">
                    <li>Company
                        <ul>
                            <li><a href="<?php echo LANGURL.'/'.Yii::t('main', 'about.link')?>" title="<?php echo Yii::t('main', 'about.name')?>"><?php echo Yii::t('main', 'about.name')?></a></li>
                            <li><a href="<?php echo LANGURL.'/'.Yii::t('main', 'contact.link')?>" title="<?php echo Yii::t('main', 'contact.name')?>"><?php echo Yii::t('main', 'contact.name')?></a></li>
                        </ul>
                    </li>
                    <li>Features
                        <!-- <ul>
                            <li><a href="#" title="">Website Features</a></li>
                            <li><a href="#" title="">Small Business Websites</a></li>
                            <li><a href="#" title="">Permium Services</a></li>
                            <li><a href="#" title="">Free Hosting</a></li>
                            <li><a href="#" title="">Example Sites</a></li>
                        </ul> -->
                    </li>
                    <li>Contact
                        <!-- <ul>
                            <li><a href="#" title="">FAQ &amp; Help</a></li>
                            <li><a href="#" title="">Developers</a></li>
                            <li><a href="#" title="">Affiate Progam</a></li>
                            <li><a href="#" title="">Partners</a></li>
                            <li><a href="#" title="">Billing Support</a></li>
                        </ul> -->
                    </li>
                    <li>Policies
                        <!-- <ul>
                            <li><a href="#" title="">Terms of Services</a></li>
                            <li><a href="#" title="">Provacy Policy</a></li>
                            <li><a href="#" title="">Developer Terms</a></li>
                            <li><a href="#" title="">Report Abuse</a></li>
                        </ul> -->
                    </li>
                </ul>
                <div class="fter-right">
                    <p class="copyright">&copy; <?php echo date('Y')?> Dos.vn. All Rights Reserved</p>
                    <!-- <p class="fter-blog"><a href="#" title="">Read</a> the Webs Blog</p>
                    <p class="fter-facebook"><a href="#" title="">Join</a> our facebook page</p>
                    <p class="fter-twitter"><a href="#" title="">Follow</a> us on twitter</p> -->
                </div>
                <div class="clear"></div>
            </div><!--End footer-->
        </div><!--End bg footer-->
    </body>
</html>