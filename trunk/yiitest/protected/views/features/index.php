<?php $this->breadcrumbs = array(Yii::t('main', 'features.name'));?>
<?php $this->pageTitle = Yii::t('main', 'customers.name'); $this->description = 'Danh sách khách hàng sử dụng công nghệ tạo website của Dos.vn, mời bạn trải nghiệm tốc độ, tính năng, chất lượng của các website khách hàng của chúng tôi'?>
<div id="leftcontent">
	<?php if ($item): ?>
		<?php $this->pageTitle = $item['title'.LANG]; $this->description = $item['description'.LANG];?>
		<h1 class="heading-contact"><?php echo $item['title'.LANG]?></h1>
		<?php echo $item['content'.LANG] ?>
	<?php endif?>
</div>
<?php echo $this->renderPartial('menu', array('model_menu'=>$model_menu)) ?>