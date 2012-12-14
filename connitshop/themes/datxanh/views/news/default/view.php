<?php $this->breadcrumbs = array($this->lang[$this->module->id] => array($this->setUrlModule()), $cat_title = $item->NewsCat->NewsCatLanguage[Yii::app()->language]['cat_title'] => array($this->setUrlModule().'/'.$item->NewsCat->NewsCatLanguage[Yii::app()->language]['tag']), $title = $item->NewsLanguage[Yii::app()->language]['title']); ?>
<?php $this->pageTitle = $title . ' - ' . $cat_title; $this->setDescription($item->NewsLanguage[Yii::app()->language]['description']) ?>

<h2 class="title-box"><span><?php echo $title?></span></h2>
<div class="frame-tent-right"><?php echo $item->NewsLanguage[Yii::app()->language]['content']?>
<div class="ico-view">
                
<a href="http://www.facebook.com/sharer.php?u=datxanhhoancau.com.vn<?php echo $this->setUrlModule().'/'.$item->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$item->NewsLanguage[Yii::app()->language]['tag'].'.html' ?>" target="_blank"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/facebook.png" alt="Chia sẻ qua Facebook" title="Chia sẻ qua Facebook">Facebook</a>

<a href="http://twitter.com/home?status=datxanhhoancau.com.vn<?php echo $this->setUrlModule().'/'.$item->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$item->NewsLanguage[Yii::app()->language]['tag'].'.html' ?>" target="_blank"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/tweet.png" alt="Chi sẻ qua Twitter" title="Chi sẻ qua Twitter">Twitter</a>
				
<a href="http://www.google.com/bookmarks/mark?op=edit&amp;bkmk=datxanhhoancau.com.vn<?php echo $this->setUrlModule().'/'.$item->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$item->NewsLanguage[Yii::app()->language]['tag'].'.html' ?>" target="_blank"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/google.png" alt="Chi sẻ qua Google Bookmarks" title="Chi sẻ qua Google Bookmarks">Google</a>

<a href="JavaScript:window.print();" target="_self"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icon_prin.png" alt="In trang này" title="In trang này">Print</a>
				
<a href="javascript:history.back();"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icon_undo.png" alt="Quay lại" title="Quay lại">Quay lại</a>

<a href="javascript:scroll(0,0)"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icon_top.png" alt="Đầu trang" title="Đầu trang">Đầu trang</a>
</div>
</div>

<?php if($items_other):?>
	<h4 class="title-item-other"><?php echo $this->lang[$this->module->id] . ' ' . $this->lang['other'] ?></h4>
	<ul class="panel-items-other">
        <?php foreach($items_other as $value):?>
            <li><?php echo CHtml::link($value->NewsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('news').'/'.$value->NewsCat->NewsCatLanguage[Yii::app()->language]['tag'].'/'.$value->NewsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->NewsLanguage[Yii::app()->language]['title'])); ?></li>
        <?php endforeach?>
	</ul>
	
    <script type="text/javascript">
        $(document).ready(function(){
            $(".panel-items-other li:even").addClass("alt");
        });
    </script>
<?php endif?>