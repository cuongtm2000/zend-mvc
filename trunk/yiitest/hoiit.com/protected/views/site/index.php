<?php $this->pageTitle = 'Chia sẻ kinh nghiệm lập trình'; $this->keywords = 'hướng dẫn lập trình, cung cấp trang web mẫu, Gia công phần mềm, trả lời các câu hỏi lập trình, trao đổi và học hỏi kinh nghiệm xây dựng các dự án, tổ chức từ thiện'; $this->description = 'Trang chuyên hướng dẫn lập trình các ngôn ngữ: Php, Asp.net, C #, VB, JQuery, Javascript, cung cấp trang web mẫu, Gia công phần mềm, trả lời các câu hỏi về lập trình, trao đổi và học hỏi kinh nghiệm xây dựng các dự án, cho các tổ chức từ thiện'?>
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