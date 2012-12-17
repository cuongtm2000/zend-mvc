<h3 class="title-red"><span><?php echo $this->lang['procedures']?></span></h3>
<?php var_dump($procedures_new)?>
<ul class="sub-new">
    <?php foreach($procedures_new as $value):?>
        <li><?php echo $value->ProceduresLanguage[Yii::app()->language]['title']?></li>
    <?php endforeach?>
</ul>