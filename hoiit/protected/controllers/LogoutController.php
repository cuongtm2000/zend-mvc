<?php

/**
 * Description of Logout
 *
 * @author Thanhansoft
 */
class LogoutController extends Controller {
    public function actionIndex(){
        Yii::app()->user->logout();
        $this->redirect(Yii::app()->homeUrl);
    }
}

?>
