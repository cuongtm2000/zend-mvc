<?php if($menu_about):?>
<h2 class="title-box">About</h2>
<ul class="sub-cat">
    <?php foreach ($menu_about as $value): ?>
        <li><?php echo CHtml::link($value['title'], array($this->setLangUrl().'/gioi-thieu/'.$value['tag'].'.html'), array('title'=>$value['title'])); ?></li>
    <?php endforeach?>
</ul>
<?php endif?>