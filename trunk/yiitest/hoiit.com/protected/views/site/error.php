<?php $this->pageTitle=Yii::app()->name . ' - Error'; $this->breadcrumbs=array('Error',);?>

<h3>Error <?php echo $code; ?></h3>

<?php echo CHtml::encode($message); ?>