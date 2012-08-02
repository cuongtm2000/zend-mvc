<h1>View User #<?php echo $model->username; ?></h1>

<?php
echo CHtml::image(Yii::app()->baseUrl . '/public/userfiles/image/' . $model->username . '/image/' . $model->username . '.jpg', $model->username);

$this->widget('zii.widgets.CDetailView', array(
    'data' => $model,
    'attributes' => array(
        'username',
        'created',
        'fullname',
        'email',
        //'birthday',
        'address',
        'cmnd',
        'phone',
        'bank_number',
        'bank_name',
    ),
));
?>
