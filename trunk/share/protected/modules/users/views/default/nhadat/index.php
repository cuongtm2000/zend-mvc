
<table class="table-user">
    <thead>
        <tr><th width="105">Hình ảnh</th><th>Username</th><th>Tỉnh thành</th><th>Group</th><th width="200">Chi tiết</th></tr>
    </thead>
    <tbody>
    <?php foreach ($models as $value): ?>
        <tr>
            <td>
				<?php if($value['avartar']):?>
					<img src="<?php echo Yii::app()->baseUrl.' /public/userfiles/image/' . $value['username'] . '/image/'.$value['avartar'] ?>" alt="<?php echo $value['username']?>" width="100" />
				<?php else:?>
					<img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="<?php echo $value['username']?>" width="100" />
				<?php endif?>
			</td>
            <td><h6><strong><?php echo $value['username']?></strong></h6></td>
            <td><?php echo $value['fullname']?></td>
            <td><?php echo $value['address']?></td>
            <td><?php echo $value['company']?></td>
        </tr>
    <?php endforeach;?>
    </tbody>
</table>
<?php $this->widget('CLinkPager', array('pages' => $pages, 'header' => '', 'htmlOptions' => array('class' => 'yiiPager paging'))) ?>