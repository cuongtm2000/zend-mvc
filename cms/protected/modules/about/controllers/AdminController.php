<?php

class AdminController extends BackEndController {
    public function actionIndex() {
        $model_class = ucfirst($this->module->id);
        $model = new $model_class();

        //Submit
        if (Yii::app()->request->getIsPostRequest()) {
            $model->activeItem(Yii::app()->request);
            //$this->refresh();
        }
        $this->render('index', $model->listItemAdmin());

        //$languages = Language::model()->findAll();
        //$abouts = About::model()->findAll();

        /*foreach ($languages as $project) {
            echo $project->name . " has " . count($project->users) . " users. They are:<br />";
            foreach ($project->users as $user) {
                echo $user->username . "<br />";
            }
            echo "<br />";
        }

        echo "<hr />";*/

        /*foreach ($abouts as $user) {
            echo $user->record_id . " is associated with " . count($user->Language) . " Language. They are:<br />";
            foreach ($user->Language as $project) {
                echo $project->language_name . "<br />";
            }
            echo "<br />";
        }*/

        //$viewer = About::model()->findByPk(1);
        //var_dump($viewer->AboutLanguage['vi']['title']);

    }

    public function actionAdd() {
		$model_class = ucfirst($this->module->id).'Form';
        $model = new $model_class();

		/*Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/css/tipsy.css');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery.tipsy.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery.tooltip.tipsy.js');
*/
		Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/tiny_mce.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/config.js');

        if (isset($_POST[$model_class])) {
            $model->attributes = $_POST[$model_class];

            if ($model->validate()) {
                //$model->save();
                //$this->redirect(array('index'));
            }
        }

        $this->render('add', array('model' => $model));
    }
}