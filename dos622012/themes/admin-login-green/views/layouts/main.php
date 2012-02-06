<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="cs" lang="cs">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    
    <title><?php echo CHtml::encode($this->pageTitle); ?></title>
    <meta name="keywords" content="<?php echo $this->keywords ?>" /> 
    <meta name="description" content="<?php echo $this->description ?>" />
    
    <link href="<?php echo Yii::app()->theme->baseUrl; ?>/css/login.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo Yii::app()->theme->baseUrl; ?>/css/login-green.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="main">
    <div id="content">
      <div id="login">
        <div id="logo"><span><?php echo CHtml::encode($this->pageTitle); ?></span></div>
        <?php echo $content?>
      </div>
    </div><!-- /content -->    
</div><!-- /main -->
</body>
</html>