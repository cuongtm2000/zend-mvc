<?php

class DefaultController extends Controller {

	public function filters() {
        return array(
            'adminAccess',
        );
    }

    public function filterAdminAccess($filterChain) {
        if ($filterChain->action->id === 'login' || !Yii::app()->memberLands->isGuest) {
            $filterChain->run();
        }
        else {
            Yii::app()->memberLands->loginRequired();
        }
    }

    public function actionIndex() {
		var_dump(Yii::app()->memberLands);
        $this->render('index', array('items' => Code::model()->listItem()));
    }

    /*public function actionView($id) {
        $model_class = ucfirst($this->module->id) . 'Language';

        $this->render('view', array('item' => $model_class::model()->detailRecord($id)));
    }*/

}