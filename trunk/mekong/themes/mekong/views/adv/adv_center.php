<?php if($adv_center):?>
<div class="frame-leftcontent">
    <h2 class="title-project"><span>Chứng chỉ chất lượng</span></h2>
    <ul class="bg-adv">
        <?php foreach ($adv_center as $value): ?>
            <li><a href="<?php echo $value['url'] ?>" target="<?php echo $value['type'] ?>" title="<?php echo $value['title'] ?>"><img src="<?php echo Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload') ?>/image/adv/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'] ?>" /></a></li>
        <?php endforeach?>
    </ul>
</div>
<?php endif?>