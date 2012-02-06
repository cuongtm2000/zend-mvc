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

        <title><?php echo CHtml::encode($this->pageTitle); ?></title>
        <meta name="keywords" content="<?php echo $this->keywords ?>" /> 
        <meta name="description" content="<?php echo $this->description ?>" />
        <!--[if IE 6]>
        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/pngfix.js"></script>
        <script type="text/javascript">DD_belatedPNG.fix('img');</script>
        <![endif]-->
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <div class="header-left"><a href="<?php echo Yii::app()->request->baseUrl ?>/"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" alt="Logo" /></a></div>
                <?php
                $this->widget('zii.widgets.CMenu', array(
                    'id' => 'nav',
                    'items' => array(
                        array('label' => 'Home', 'url' => array('/site/index')),
                        array('label' => 'About', 'url' => array('/site/page', 'view' => 'about')),
                        array('label' => 'Contact', 'url' => array('/site/contact')),
                        array('label' => 'Login', 'url' => array('/site/login'), 'visible' => Yii::app()->user->isGuest),
                        array('label' => 'Logout (' . Yii::app()->user->name . ')', 'url' => array('/site/logout'), 'visible' => !Yii::app()->user->isGuest)
                    ),
                ));
                ?>
                <div class="clear"></div>
            </div><!--End header--> 	

            <?php echo $content; ?>
            
        </div><!--End Wrapper-->
        <div id="bg-fter">
            <div id="footer">
                <ul class="nav-fter">
                    <li>Company
                        <ul>
                            <li><a href="#" title="">Overview</a></li>
                            <li><a href="#" title="">Careers</a></li>
                            <li><a href="#" title="">Press Room</a></li>
                            <li><a href="#" title="">Webs Blog</a></li>
                            <li><a href="#" title="">Contact Us</a></li>
                        </ul>
                    </li>
                    <li>Features
                        <ul>
                            <li><a href="#" title="">Website Features</a></li>
                            <li><a href="#" title="">Small Business Websites</a></li>
                            <li><a href="#" title="">Permium Services</a></li>
                            <li><a href="#" title="">Free Hosting</a></li>
                            <li><a href="#" title="">Example Sites</a></li>
                        </ul>
                    </li>
                    <li>Contact
                        <ul>
                            <li><a href="#" title="">FAQ &amp; Help</a></li>
                            <li><a href="#" title="">Developers</a></li>
                            <li><a href="#" title="">Affiate Progam</a></li>
                            <li><a href="#" title="">Partners</a></li>
                            <li><a href="#" title="">Billing Support</a></li>
                        </ul>
                    </li>
                    <li>Policies
                        <ul>
                            <li><a href="#" title="">Terms of Services</a></li>
                            <li><a href="#" title="">Provacy Policy</a></li>
                            <li><a href="#" title="">Developer Terms</a></li>
                            <li><a href="#" title="">Report Abuse</a></li>
                        </ul>
                    </li>
                </ul>
                <div class="fter-right">
                    <p class="copyright">&copy; 2011 Webs Inc. All Rights Reserved</p>
                    <p class="fter-blog"><a href="#" title="">Read</a> the Webs Blog</p>
                    <p class="fter-facebook"><a href="#" title="">Join</a> our facebook page</p>
                    <p class="fter-twitter"><a href="#" title="">Follow</a> us on twitter</p>
                </div>
                <div class="clear"></div>
            </div><!--End footer-->
        </div><!--End bg footer-->
    </body>
</html>