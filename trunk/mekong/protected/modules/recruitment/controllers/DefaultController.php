<?php

class DefaultController extends Controller {

    public function actionIndex() {
        $module = ucfirst($this->module->id);
		$item = $module::model()->firstRecord();
		
        $this->render('index', array('item' => $item, 'otherItems' => $module::model()->otherRecord($item['record_id'])));
    }

    public function actionView($id) {
		$module = ucfirst($this->module->id);
        $model_class = $module . 'Language';
		
		$item = $model_class::model()->detailRecord($id);

        $this->render('view', array('item' => $item, 'otherItems' => $module::model()->otherRecord($item['record_id'])));
    }

}