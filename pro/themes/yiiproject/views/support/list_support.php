<?php if(isset($list_support)) :?>
	<h1 class="title-box"><span><?php echo $this->lang['support'] ?></span></h1>
	<ul class="frame-leftcontent support">
		<?php foreach($list_support as $key => $value): ?>
			<?php if($value['support_type']=='yahoo'): ?>
				<?php echo ($value['support_name']) ? '<li>'.$value['support_name'].'</li>' : ''?>
				<?php echo ($value['support_phone']) ? '<li>'.$value['support_phone'].'</li>' : '' ?>
				<li><a href="ymsgr:sendIM?<?php echo $value['support_value'] ?>" title="Chat with <?php echo $value['support_value'] ?>"><img id="status<?php echo $key?>" src="<?php echo Yii::app()->theme->baseUrl?>/images/ajax-loader.gif" border="0" alt="<?php echo $value['support_value'] ?>" /></a></li>
			<?php else:?>
				<?php echo ($value['support_name']) ? '<li>'.$value['support_name'].'</li>' : ''?>
				<?php echo ($value['support_phone']) ? '<li>'.$value['support_phone'].'</li>' : '' ?>
				<li><a href="skype:<?php echo $value['support_value'] ?>?call" title="Chat with <?php echo $value['support_value'] ?>"><img id="status<?php echo $key?>" src="<?php echo Yii::app()->theme->baseUrl?>/images/ajax-loader.gif" style="border: none;" alt="<?php echo $value['support_value'] ?>" /></a></li>
			<?php endif; ?>
		<?php endforeach; ?>
	</ul>

    <script type="text/javascript">
        function checkStatus(id, nick, type){
            if(type=='yahoo'){
                document.getElementById(id).src='http://mail.opi.yahoo.com/online?u='+nick+'&amp;m=g&amp;t=2';
            }else{
                document.getElementById(id).src='http://mystatus.skype.com/bigclassic/'+nick;
            }
        }
		<?php foreach($list_support as $key => $value): ?>
			<?php if($value['support_type']=='yahoo'): ?>
				checkStatus('status<?php echo $key?>', '<?php echo $value['support_value'] ?>', 'yahoo');
			<?php else:?>
				checkStatus('status<?php echo $key?>', '<?php echo $value['support_value'] ?>', 'skype');
			<?php endif; ?>
		<?php endforeach; ?>
    </script>
<?php endif; ?>