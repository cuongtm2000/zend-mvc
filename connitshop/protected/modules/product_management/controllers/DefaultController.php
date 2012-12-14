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
        /*$model_class = ucfirst($this->module->id);
        $model = new $model_class();

        $this->render('index', array('listItemIndex' => $model->listItemsIndex()));*/
		
		if(Yii::app()->memberLands->user_role == 'staff'){
			$model_class = ucfirst($this->module->id) . 'Cat';
			$model = new $model_class;

			$this->render('index', array('items' => $model->listItem()));
		}else{
			$this->render('error');
		}
    }

    public function actionCats($cid, $page = 0) {
		if(Yii::app()->memberLands->user_role == 'staff'){
			$info_cat = Product_managementCatLanguage::model()->findCatByTag($cid);
			$this->render('cats', array('info_cat' => $info_cat, 'items' => Product_management::model()->listItemByCat($info_cat['cat_id'])));
		}else{
			$this->render('error');
		}
    }

    public function actionView($id) {
        $model_class = ucfirst($this->module->id);
        $model = new $model_class();
        $item = $model->getIDByTag($id);

        $this->render('view', array('item' => $item, 'items_other' => $model->listItemOther($item['record_id'], $item['hoiit_module_item_cat_cat_id'])));
    }
}