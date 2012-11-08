<?php $this->breadcrumbs = array($this->lang[$this->module->id]); ?><?php $this->pageTitle = $this->lang[$this->module->id]; $this->setDescription()?><?php	Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/corner.js');	Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/corner-config.js');	Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/scrollbar.css');		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/code.js');?><h2 class="title-box"><span><?php echo $this->lang[$this->module->id]?></span></h2><div class="guide"><span><b class="red">&nbsp;</b>Đã giao dịch</span> <span><b class="oranges">&nbsp;</b>Đã đặt chỗ</span> <span><b class="blue">&nbsp;</b>Chưa giao dịch</span></div><div id="mcs_container">	<div class="customScrollBox">		<div class="container">			<div class="content">				<ul class="sub-project">					<?php if ($items): ?>						<?php foreach($items as $value):?>							<?php $type = ($value['record_type'] == 'da-giao-dich') ? ' class="da-giao-dich"' : (($value['record_type'] == 'da-dat-cho') ? 'class="da-dat-cho"' : 'class="chua-giao-dich"')?>							<li <?php echo $type?>><?php echo $value['title']?></li>						<?php endforeach?>					<?php else: ?>						<?php echo $this->lang['no_record']?>					<?php endif;?>				</ul>			</div>		</div>		<div class="dragger_container">			<div class="dragger"></div>		</div>	</div>	<a href="#" class="scrollUpBtn"></a> <a href="#" class="scrollDownBtn"></a></div>