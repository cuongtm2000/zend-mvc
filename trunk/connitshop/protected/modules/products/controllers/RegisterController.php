<?php

class RegisterController extends Controller {
    public function actionIndex() {
        $model_class = ucfirst($this->module->id).'Users';
        $model = new $model_class;
		
		if (isset($_POST[$model_class])) {
            $model->attributes = $_POST[$model_class];
            if ($model->validate()) {
                $model->save();
                $this->redirect(Yii::app()->user->returnUrl);
            }
        }

        $this->render('index', array('model' => $model));
    }
}