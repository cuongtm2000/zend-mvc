<?php $this->pageTitle = 'Home page'; $this->keywords = 'Specialized tutorial for programming, answer questions about programming for programmers, Where exchange and learning experience programming, Construction projects for charity'; $this->description = 'Specialized tutorial Php framework, Asp.net, C#, VB, Jquery, Javascript, Web template, Outsourcing of programming languages​​, answer questions about programming for programmers, Where exchange and learning experience programming, Construction projects for charity'?>
<div class="left col-center">
	<h1>Post experience for programmer</h1>
	<ul>
		<?php foreach ($listRecordTypeNew as $value): ?>
		<li><a href="<?php echo Yii::app()->request->baseUrl . '/posts/' . NoneUnicode::convert($value['cat_name']) . '/' . $value['post_link'] ?>.html"><?php echo $value['post_title'] ?></a> by <a href="#"><?php echo $value['hoiit_usernames_username'] ?></a> - <a href="<?php echo Yii::app()->request->baseUrl . '/posts/' . NoneUnicode::convert($value['cat_name']) ?>"><?php echo $value['cat_name'] ?></a></li>
		<?php endforeach; ?>
	</ul>

    <h1>Latest Posts</h1>
    <ul>
        <?php foreach ($listRecordNew as $value): ?>
            <li><a href="<?php echo Yii::app()->request->baseUrl . '/posts/' . NoneUnicode::convert($value['cat_name']) . '/' . $value['post_link'] ?>.html"><?php echo $value['post_title'] ?></a> by <a href="#"><?php echo $value['hoiit_usernames_username'] ?></a> - <a href="<?php echo Yii::app()->request->baseUrl . '/posts/' . NoneUnicode::convert($value['cat_name']) ?>"><?php echo $value['cat_name'] ?></a></li>
        <?php endforeach; ?>
    </ul>

    <!-- <div class="left-col">
        <h1>Tin tức sự kiện</h1>
        <ul>
            <li><a href="{POST.URL}">{POST.TITLE}</a></li>
        </ul>
    </div>
    <div class="left-col">
        <h1>Tin học văn phòng</h1>
        <ul>
            <li><a href="{POST.URL}">{POST.TITLE}</a></li>
        </ul>
    </div>
    <div class="left-col">
        <h1>Lập trình &amp; Thiết kế Web</h1>
        <ul>
            <li><a href="{POST.URL}">{POST.TITLE}</a></li>
        </ul>
    </div>
    <div class="left-col">
        <h1>Lập trình ứng dụng</h1>
        <ul>
            <li><a href="{POST.URL}">{POST.TITLE}</a></li>
        </ul>
    </div><div class="clear"></div>
    <div class="left-col">
        <h1>Cơ sở dữ liệu</h1>
        <ul>
            <li><a href="{POST.URL}">{POST.TITLE}</a></li>
        </ul>
    </div>
    <div class="left-col">
        <h1>Mẫu web template</h1>
        <ul>
            <li><a href="{POST.URL}">{POST.TITLE}</a></li>
        </ul>
    </div><div class="clear"></div>
    <div class="left-col">
        <h1>Phần mềm hay</h1>
        <ul>
            <li><a href="{POST.URL}">{POST.TITLE}</a></li>
        </ul>
    </div>
    <div class="left-col">
        <h1>Thư viện Ebook</h1>
        <ul>
            <li><a href="{POST.URL}">{POST.TITLE}</a></li>
        </ul>
    </div>
    <div class="clear"></div> -->
    <h1>Latest  comments</h1>
    <ul>
        <?php foreach ($listNewComment as $value):?>
        <li><a href="<?php echo Yii::app()->request->baseUrl . '/posts/' . NoneUnicode::convert($value['cat_name']) . '/' . $value['post_link'] ?>.html#comment-<?php echo $value['comment_id']?>"><?php echo $value['comment_title'] ?></a> by <a href="#"><?php echo $value['username'] ?></a></li>
        <?php endforeach;?>
    </ul>
</div>
<div class="left col-right">
    <div class="panel-title">
        <h1>New members</h1>
        <ul>
            <?php foreach($listNewUsers as $value):?>
            <li><a href="#"><?php echo $value['username']?></a></li>
            <?php endforeach;?>
        </ul>
    </div>
    <div class="panel-title">
        <h1>Most viewed</h1>
        <ul>
            <?php foreach($listHitView as $value):?>
            <li><a href="<?php echo Yii::app()->request->baseUrl . '/posts/' . NoneUnicode::convert($value['cat_name']) . '/' . $value['post_link'] ?>.html"><?php echo $value['post_title']?></a></li>
            <?php endforeach;?>
        </ul>
    </div>
</div><!--End left col right-->