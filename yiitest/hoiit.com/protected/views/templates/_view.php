<li>
	<a href=""><img src="<?php echo Yii::app()->theme->baseUrl ?>/images/web.jpg" alt="web" /></a>
	<p class="add-cart"><a href="">Demo</a> - <a href="">Detail</a> - <a href="">Add to cart</a></p>
	<p><strong>Item</strong>: <?php echo CHtml::link(CHtml::encode($data->template_id), array('view', 'id'=>$data->template_id)); ?></p>
	<p><strong>Price</strong>: <?php echo CHtml::encode($data->price); ?> $</p>
	<p><strong>Type</strong>: <?php echo CHtml::encode($data->WebTemplatesCat->cat_name)?></p>
	<p><strong>Width</strong>: <?php echo CHtml::encode($data->width); ?></p>
</li>
	<?php /*

 	<b><?php echo CHtml::encode($data->getAttributeLabel('template_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->template_id), array('view', 'id'=>$data->template_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('template_name')); ?>:</b>
	<?php echo CHtml::encode($data->template_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('detail')); ?>:</b>
	<?php echo CHtml::encode($data->detail); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('price')); ?>:</b>
	<?php echo CHtml::encode($data->price); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('download')); ?>:</b>
	<?php echo CHtml::encode($data->download); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('source')); ?>:</b>
	<?php echo CHtml::encode($data->source); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('width')); ?>:</b>
	<?php echo CHtml::encode($data->width); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('pic_thumb')); ?>:</b>
	<?php echo CHtml::encode($data->pic_thumb); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('pic_full')); ?>:</b>
	<?php echo CHtml::encode($data->pic_full); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('pic_desc')); ?>:</b>
	<?php echo CHtml::encode($data->pic_desc); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('created')); ?>:</b>
	<?php echo CHtml::encode($data->created); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('enable')); ?>:</b>
	<?php echo CHtml::encode($data->enable); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('hoiit_web_templates_cat_cat_id')); ?>:</b>
	<?php echo CHtml::encode($data->hoiit_web_templates_cat_cat_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('hoiit_usernames_username')); ?>:</b>
	<?php echo CHtml::encode($data->hoiit_usernames_username); ?>
	<br />

	*/ ?>