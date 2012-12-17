<?php if($adv_bottom):?>
<h3 class="title-box"><span><?php echo $this->lang['partners']?></span></h3>
 <div class="partners">
    <ul id="mycarousel_3" class="jcarousel-skin-tango3">
        <?php foreach ($adv_bottom as $value): ?>
            <li><a href="<?php echo $value['url'] ?>" target="<?php echo $value['type'] ?>" title="<?php echo $value['title'] ?>"><img src="<?php echo Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload') ?>/image/adv/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'] ?>" /></a></li>
        <?php endforeach?>
    </ul>
</div>
<?php endif?>