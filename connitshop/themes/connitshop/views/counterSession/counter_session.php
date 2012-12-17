<h4 class="title-left"><span><?php echo $this->lang['counterSession']?></span></h4>
<ul class="statistics">
    <li><?php echo Yii::t('user', 'online')?>: <?php echo $counter_session['online']?></li>
    <li><?php echo Yii::t('user', 'today')?>: <?php echo $counter_session['today']?></li>
    <li><?php echo Yii::t('user', 'yesterday')?>: <?php echo $counter_session['yesterday']?></li>
    <li><?php echo Yii::t('user', 'total')?>: <?php echo $counter_session['total']?></li>
    <li><?php echo Yii::t('user', 'maximum')?>: <?php echo $counter_session['maximum']?></li>
    <li><?php echo Yii::t('user', 'dateMaximum')?>: <?php echo $counter_session['dateMaximum']?></li>
</ul>
