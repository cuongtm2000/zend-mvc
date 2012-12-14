<?php

class DefaultController extends Controller {

    public function actionIndex($vid = 0, $id) {
        $poll = new Poll();

        $diff = 0;
        if (isset($id)) {
            $is_update = FALSE;
            if (isset(Yii::app()->session['voting' . $vid])) {
                $diff = time() - Yii::app()->session['voting' . $vid];
                if ($diff > 3600) {
                    $is_update = TRUE;
                }
            } else {
                $is_update = TRUE;
            }
            if ($is_update) {
                Yii::app()->session['voting' . $vid] = time();
                $ans = new Answers();
                $ans->updateVote($vid, $id);
                $diff = -1;
            }
        }
        $this->render('index', array('item' => $poll->getDetail($vid), 'time_remain' => $diff));
    }

}