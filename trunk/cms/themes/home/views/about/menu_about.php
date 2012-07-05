<?php if($menu_about):?>
<h2 class="title-box">About</h2>
<ul class="sub-cat">
    <?php foreach ($menu_about as $value): ?>
        <li><a href="#"><?php echo $value['record_id']?></a></li>
    <?php endforeach?>
</ul>
<?php endif?>