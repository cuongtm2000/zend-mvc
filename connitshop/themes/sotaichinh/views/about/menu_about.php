<?php if($menu_about):?>
   <div class="main-box"> <h4 class="title-left"><span><?php echo $this->lang['about']?></span></h4>
    <ul class="sub-cat">
        <?php foreach ($menu_about as $value): ?>
            <li><?php echo CHtml::link('<span>'.$value['title'].'</span>', array($this->setLangUrl().'/gioi-thieu/'.$value['tag'].'.html'), array('title'=>$value['title'])); ?></li>
        <?php endforeach?>
    </ul>
	</div>
<?php endif?>