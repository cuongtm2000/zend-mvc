<?php $this->breadcrumbs = array($this->lang[$this->module->id] => array($this->setUrlModule()), $cat_title = $item->DocumentCat->DocumentCatLanguage[Yii::app()->language]['cat_title'] => array($this->setUrlModule().'/'.$item->DocumentCat->DocumentCatLanguage[Yii::app()->language]['tag']), $title = $item->DocumentLanguage[Yii::app()->language]['title']); ?>
<?php $this->pageTitle = $title . ' - ' . $cat_title; $this->setDescription($item->DocumentLanguage[Yii::app()->language]['description']) ?>

<h2 class="title-box"><span><?php echo $title?></span></h2>
<div class="frame-tent-right"><?php echo $item->DocumentLanguage[Yii::app()->language]['content']?></div>

<?php if($items_other):?>
	<h4 class="title-item-other"><?php echo $this->lang[$this->module->id] . ' ' . $this->lang['other'] ?></h4>
	<ul class="panel-items-other">
        <?php foreach($items_other as $value):?>
            <li><?php echo CHtml::link($value->DocumentLanguage[Yii::app()->language]['title'], array($this->setUrlModule('document').'/'.$value->DocumentCat->DocumentCatLanguage[Yii::app()->language]['tag'].'/'.$value->DocumentLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->DocumentLanguage[Yii::app()->language]['title'])); ?></li>
        <?php endforeach?>
	</ul>
	
    <script type="text/javascript">
        $(document).ready(function(){
            $(".panel-items-other li:odd").addClass("alt");
        });
    </script>
<?php endif?>