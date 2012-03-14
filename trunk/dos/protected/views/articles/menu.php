<div class="right-content">
	<h1 class="title-right">Danh mục</h1>
	<ul class="sub-right">
		<?php foreach($articles_menu as $value):?>
		<li><a href="/articles/<?php echo $value['tag']?>" title="<?php echo $value['cat_title']?>"><?php echo $value['cat_title']?></a></li>
		<?php endforeach?>
	</ul>
</div> <!--End right content--> <div class="clear"></div>