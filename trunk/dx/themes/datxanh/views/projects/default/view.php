<?php $this->breadcrumbs = array($this->lang[$this->module->id] => array($this->setUrlModule()), $cat_title = $item->ProjectsCat->ProjectsCatLanguage[Yii::app()->language]['cat_title'] => array($this->setUrlModule().'/'.$item->ProjectsCat->ProjectsCatLanguage[Yii::app()->language]['tag']), $title = $item->ProjectsLanguage[Yii::app()->language]['title']); ?>
<?php $this->pageTitle = $title . ' - ' . $cat_title; $this->setDescription($item->ProjectsLanguage[Yii::app()->language]['description']) ?>
<?php
	Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/prettyPhoto.css');	
	Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.prettyPhoto.js');
	
	Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/tab.css');	
	Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/tab-sub-right.js');
	Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/corner.js');
	Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/corner-config.js');
	
	Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/galleriffic-5.css');	
	Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.history.js');
	Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.galleriffic.js');
	Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.opacityrollover.js');
	Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.galleriffic-config.js');
?>
<h2 class="title-box"><span><?php echo $title?></span></h2>
<div class="infotab infotab_project">
	<ul class="tabs tab_project">
		<li><a href="#tab1">Thông tin chung</a></li>
		<li><a href="#tab2">Vị trí</a></li>
		<li><a href="#tab3">Mặt bằng</a></li>
		<li><a href="#tab4">Hình ảnh</a></li>
		<li><a href="#tab5">Video</a></li>
	</ul>
	<div class="tab_container project-info">
		<div id="tab1" class="tab_content">
			<?php echo $item->ProjectsLanguage[Yii::app()->language]['content']?>
		</div>

		<div id="tab2" class="tab_content">
			<?php echo $item->ProjectsLanguage[Yii::app()->language]['detail']?>
		</div>
		
		<div id="tab3" class="tab_content">
			<div class="ground">
			<?php if($item['pic_desc']):?>
				<?php $values = explode('|', $item['pic_desc']); foreach($values as $value):?>
					<a rel="photo" href="<?php echo Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/projects/'.$value ?>" title="<?php echo $value?>"><img src="<?php echo Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/projects/'. $value ?>" alt="<?php echo $value?>" /></a>
				<?php endforeach ;?>
			<?php else:?>
				Ðang cập nhật...
			<?php endif?>
			</div>
			<script type="text/javascript" charset="utf-8">
			jQuery(document).ready(function(){
				jQuery(".gallery:first a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'fast',slideshow:10000, hideflash: true});
				jQuery(".gallery:gt(0) a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'fast',slideshow:10000, hideflash: true});
				jQuery(".ground a[rel^='photo']").prettyPhoto({animation_speed:'fast',slideshow:10000});
				
			});
			</script>
		</div>
		
		<div id="tab4" class="tab_content">
			<?php if($item['field1']):?>
			<div id="galleriffic">
				<div class="content">
					<div class="slideshow-container">
						<div id="loading" class="loader"></div>
						<div id="slideshow" class="slideshow"></div>
					</div>
				</div>
				<div class="navigation-container">
					<div id="thumbs" class="navigation">
						<ul class="thumbs noscript">
							
								  <?php $values = explode('|', $item['field1']);$i=0; foreach($values as $value):?>
									<li><a class="thumb" name="<?php echo $i?>" href="<?php echo Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/projects/'. $value ?>" title="#<?php echo $i?>"><img src="<?php echo Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/projects/'. $value ?>" alt="#<?php echo $i?>" /></a></li>
								<?php $i++;endforeach ;?>
							
							
						</ul>
					</div>
				</div>
			</div>	
			<?php else:?>
				Ðang cập nhật...
			<?php endif?>
		</div>
		
		<div id="tab5" class="tab_content">
			<div class="clear info-video">
			<?php if($item['field2']):?>
				<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/embed-flash.js"></script>
				<script type="text/javascript">embedyoutube('<?php echo $item['field2']?>',500,315);</script>
			<?php else:?>
				Ðang cập nhật...
			<?php endif?>	
			</div>
		</div>
	</div> <div class="clear"></div>
</div>
<?php if($items_other):?>
    <h4 class="title-item-other"><?php echo $this->lang[$this->module->id] . ' ' . $this->lang['other'] ?></h4>
    <ul class="panel-items-other">
        <?php foreach($items_other as $value):?>
            <li><?php echo CHtml::link($value->ProjectsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('projects').'/'.$value->ProjectsCat->ProjectsCatLanguage[Yii::app()->language]['tag'].'/'.$value->ProjectsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->ProjectsLanguage[Yii::app()->language]['title'])); ?></li>
        <?php endforeach?>
    </ul>
    <script type="text/javascript">
        $(document).ready(function(){
            $(".panel-items-other li:odd").addClass("alt");
        });
    </script>
<?php endif?>