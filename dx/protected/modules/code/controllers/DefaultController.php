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
		if(Yii::app()->memberLands->user_role == 'staff'){
			$this->render('index', array('items' => Code::model()->listItem()));
		}else{
			$this->render('error');
		}
    }
}