<?php

class DefaultController extends Controller{
    public function actionIndex(){
        $criteria = new CDbCriteria();

        if (isset($_POST['txt-search'])) {
            Yii::app()->session['txt-search'] = Yii::app()->request->getPost('txt-search');
        }

        if(Yii::app()->session['txt-search']==null){
            Yii::app()->session['txt-search'] = Yii::t('user', 'search');
        }

        $criteria->with = array('ProductsCat');
        $criteria->compare('title', Yii::app()->session['txt-search'], true, 'OR');
        $criteria->compare('enable', 1);
        $criteria->compare('dos_usernames_username', Yii::app()->session['subdomain']);
        $criteria->compare('cat_enable', 1);

        Yii::app()->getModule('products');
        $count = Products::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = Yii::app()->controller->configs['products_num_paging_cat'];
        $pages->applyLimit($criteria);

        $this->render(Yii::app()->session['template'] . '/index', array('items' => array('models' => Products::model()->findAll($criteria), 'pages' => $pages)));
    }
}