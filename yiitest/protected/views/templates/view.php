<?php $this->breadcrumbs = array(Yii::t('main', 'templates.name') => Yii::app()->session['langUrl'] . '/'. Yii::t('main', 'templates.link'), $detail['template']);?>

<?php echo $detail['template_name']?>
<p><?php echo $detail['description']?></p>
<?php echo $this->renderPartial('menu', array('listBusiness' => $listBusiness)) ?>