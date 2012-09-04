<?php if(isset($list_support)) :?>
    <script type="text/javascript">
        function checkStatus(id, nick, type){
            if(type=='yahoo'){
                document.getElementById(id).src='http://mail.opi.yahoo.com/online?u='+nick+'&amp;m=g&amp;t=2';
            }else{
                document.getElementById(id).src='http://mystatus.skype.com/bigclassic/'+nick;
            }
        }
    </script>
<div class="frame-leftcontent">	
	<h4 class="title-left"><span><?php echo $this->lang['support'] ?></span></h4>
	<ul class="support">
	   <?php foreach($list_support as $key => $value): ?>
			<?php if($value['support_type']=='yahoo'): ?>
				<li>
					<?php if($value['support_name'.Yii::app()->session['lang']]) echo '<p>'.$value['support_name'.Yii::app()->session['lang']].'</p>'; ?>
					<?php if($value['support_phone']) echo '<p>'.$value['support_phone'].'</p>'; ?>
					<a href="ymsgr:sendIM?<?php echo $value['support_value'] ?>" title="Chat with <?php echo $value['support_value'] ?>"><img id="status<?php echo $key?>" src="<?php echo Yii::app()->theme->baseUrl?>/images/ajax-loader.gif" border="0" alt="<?php echo $value['support_value'] ?>" /></a>
					<script type="text/javascript">
						checkStatus('status<?php echo $key?>', '<?php echo $value['support_value'] ?>', 'yahoo');
					</script>
				</li>
			<?php else:?>
				<li>
					<?php if($value['support_name'.Yii::app()->session['lang']]) echo '<p>'.$value['support_name'.Yii::app()->session['lang']].'</p>'; ?>
					<?php if($value['support_phone']) echo '<p>'.$value['support_phone'].'</p>'; ?>
					<a href="skype:<?php echo $value['support_value'] ?>?call" title="Chat with <?php echo $value['support_value'] ?>"><img id="status<?php echo $key?>" src="<?php echo Yii::app()->theme->baseUrl?>/images/ajax-loader.gif" style="border: none;" width="130" alt="<?php echo $value['support_value'] ?>" /></a>
					<script type="text/javascript">
						checkStatus('status<?php echo $key?>', '<?php echo $value['support_value'] ?>', 'skype');
					</script>
				</li>
			<?php endif; ?>
		<?php endforeach; ?>
	</ul>
</div>
<?php endif; ?>
