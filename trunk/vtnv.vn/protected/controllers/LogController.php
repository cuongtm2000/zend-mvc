<?php

class LogController extends Controller {

    public function actionIndex() {
		$model_class = new Log();
		$this->render('index', array('listLog' => $model_class->getLogByReceiver(Yii::app()->user->name)));
    }
/*
    public function loadModel($id) {
        $model = Log::model()->findByPk($id);
        if ($model === null)
            throw new CHttpException(404, 'The requested page does not exist.');
        return $model;
    }

    protected function performAjaxValidation($model) {
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'log-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
    }
*/
}
