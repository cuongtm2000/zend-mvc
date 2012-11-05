<?php $this->breadcrumbs = array($this->lang[$this->module->id] => array($this->setUrlModule()), $cat_title = $item->NewsCat->NewsCatLanguage[Yii::app()->language]['cat_title'] => array($this->setUrlModule().'/'.$item->NewsCat->NewsCatLanguage[Yii::app()->language]['tag']), $title = $item->NewsLanguage[Yii::app()->language]['title']); ?>
<?php $this->pageTitle = $title . ' - ' . $cat_title; $this->setDescription($item->NewsLanguage[Yii::app()->language]['description']) ?>
<div class="top-bt-right"></div>
<div class="frame-panel">
	<h2 class="title-box"><span><?php echo $title?></span></h2>
	<div class="frame-tent-right"><?php echo $item->NewsLanguage[Yii::app()->language]['content']?></div>

    
	<h4 class="title-item-other">Tin tức liên quan</h4>
	<ul class="panel-items-other">
		<li><a href="" title="test 1">test 1</a></li>
		<li><a href="" title="test 2">test 2</a></li>
		<li><a href="" title="test 3">test 3</a></li>
		<li><a href="" title="test 4">test 4</a></li>
		<li><a href="" title="test 5">test 5</a></li>
		<li><a href="" title="test 6">test 6</a></li>
	</ul>
	
    <script type="text/javascript">
        $(document).ready(function(){
            $(".panel-items-other li:odd").addClass("alt");
        });
    </script>
</div>
<div class="bd-bt-right"></div>