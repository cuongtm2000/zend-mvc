<?php

    ini_set('display_errors', 1);

    /**
     * Example Usage of RayFeedReader
     */
   
    require_once('rayfeedreader.php');

    /**
     * Get Instance of the class.
     */
    //$reader1 = RayFeedReader::getInstance();
	$reader1 = RayFeedReader::getInstance(array())->setOptions(array('url' => 'http://dos.vn/rss.xml'));    

    
    /**
     * Load rayFeedWidget class file
     */
    require_once('rayfeedwidget.php');

    // OR with widget options.
    $widgetOptions = array('showTitle' => true);
    $widgetOptions2 = array('widget' => 'detail', 'showTitle' => true);
    
    $html1 = RayFeedReader::getInstance()->setOptions($options1)->parse()->widget();
    
    $html2 = RayFeedReader::getInstance()->setOptions($options2)->parse()->widget($widgetOptions);
    
    $html3 = RayFeedReader::getInstance()->setOptions($options3)->parse()->widget($widgetOptions2);
    
    if (!empty($html2)) {
		header('Content-type: text/html; charset=utf-8');
		echo $html2;
    } else {
    	var_export(RayFeedReader::getInstance()->getErrors());
    }
?>
