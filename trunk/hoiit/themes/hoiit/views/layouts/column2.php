<?php $this->beginContent('//layouts/main'); ?>
<div class="left col-center">
    <?php echo $content; ?>
</div><!--End left col-center-->
<div class="left col-right">
    <div class="panel-title">
        <h1>New members</h1>
        <ul>
            <li><a href="#">{NEWUSER.username}</a></li>
        </ul>
    </div>
    <div class="panel-title">
        <h1>Video mới nhất</h1>
        <ul>
            <li><a href="">Video</a></li>
            <li><a href="">Video</a></li>
            <li><a href="">Video</a></li>
            <li><a href="">Video</a></li>
            <li><a href="">Video</a></li>
        </ul>
    </div>
    <div class="panel-title">
        <h1>Xem nhiều nhất</h1>
        <ul>
            <!-- BEGIN:hitview -->
            <li><a href="{POST.URL}">{POST.TITLE}</a></li>
            <!-- END:hitview -->
        </ul>
    </div>
</div><!--End left col right-->
<?php $this->endContent(); ?>