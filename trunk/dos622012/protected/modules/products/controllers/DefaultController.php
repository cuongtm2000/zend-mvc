<?php

class DefaultController extends Controller{
	public function actionIndex(){
        $model = new ProductCats();
        
		$this->render(Yii::app()->session['template'].'/index', array('items'=>$model->listItem()));
	}
    public function actionCats($cname, $page=0){
        $model = new ProductCats();
        $items = new Products();
        
        $info_cat = $model->findCatByTag($cname); //find cat_id
        $this->render(Yii::app()->session['template'].'/cats', array('info_cat'=>$info_cat, 'list_sub_cats'=>$model->listItem($info_cat['cat_id']), 'list_items'=>$items->listItemByCat($info_cat['cat_id'])));
    }
    public function actionView($id){
        $model = ucfirst($this->module->id);
        $model_class = new $model();
        
        $this->render(Yii::app()->session['template'].'/view', array('item'=>$model_class->detailItem($id)));
    }
}