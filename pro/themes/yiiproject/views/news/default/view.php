<?php $this->breadcrumbs = array($this->lang[$this->module->id] => array($this->setUrlModule()), $cat_title = $item->NewsCat->NewsCatLanguage[Yii::app()->language]['cat_title'] => array($this->setUrlModule().'/'.$item->NewsCat->NewsCatLanguage[Yii::app()->language]['tag']), $title = $item->NewsLanguage[Yii::app()->language]['title']); ?>
<?php $this->pageTitle = $title . ' - ' . $cat_title; $this->setDescription($item->NewsLanguage[Yii::app()->language]['description']) ?>
	<h2 class="title-right"><span><?php echo $title?></span></h2>
	<div class="frame-tent-right"><?php echo $item->NewsLanguage[Yii::app()->language]['content']?>

    <!-- <h4 class="title-item-other">Tin tức khác</h4>
    <ul class="panel-items-other">
        <li><a href="#" title="">Thắp sáng Trường Sa bằng điện sạch Thắp sáng Trường Sa bằng điện sạch Thắp sáng Trường Sa bằng điện sạch Thắp sáng Trường Sa bằng điện sạch</a></li>
        <li><a href="#" title="">Thắp sáng Trường Sa bằng điện sạch</a></li>
        <li><a href="#" title="">Thắp sáng Trường Sa bằng điện sạch</a></li>
        <li><a href="#" title="">Thắp sáng Trường Sa bằng điện sạch</a></li>
    </ul>
    <script type="text/javascript">
        $(document).ready(function(){
            $(".panel-items-other li:odd").addClass("alt");
        });
    </script> -->
</div>