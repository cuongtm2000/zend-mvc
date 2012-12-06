<?php if($menu_about):?>
    <h4 class="title-left"><span><?php echo $this->lang['about']?></span></h4>
    <ul class="sub-cat">
        <?php foreach ($menu_about as $value): ?>
            <li><?php echo CHtml::link($value['title'], array($this->setLangUrl().'/gioi-thieu/'.$value['tag'].'.html'), array('title'=>$value['title'])); ?></li>
        <?php endforeach?>
    </ul>
<?php endif?>