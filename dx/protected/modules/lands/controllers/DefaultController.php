<?php

class DefaultController extends Controller {

    public function actionIndex() {
        $this->layout = '//layouts/column-lands';
        $model_class = ucfirst($this->module->id) . 'Cat';
        $model = new $model_class;

        $this->render('index', array('items' => $model->listItem()));
    }

    public function actionCats($cid, $page = 0) {
        $model_class = ucfirst($this->module->id) . 'Cat';
        $model = new $model_class;

        $info_cat = LandsCatLanguage::model()->findCatByTag($cid);
        $this->render('cats', array(
            'info_cat' => $info_cat, 
            'sub_cats' => $model->listItem($info_cat['cat_id']), 
            'items' => Lands::model()->listItemByCat($info_cat['cat_id'])));
    }

    public function actionView($id) {
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/scroll.css');
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/jquery.fancybox.css');

        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jcarousellite_1.0.1.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/scroller.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.fancybox.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.scroll-1.4.2-min.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.serialScroll-1.2.2-min.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/product.js');

        $model_class = ucfirst($this->module->id);
        $model = new $model_class();
        $data['item'] = $model->detailItem($id);
        $data['other_items'] = $model->listOtherItems($data['item']['record_id'], $data['item']['hoiit_module_item_cat_cat_id']);
        $this->render('view', $data);
    }

    public function actionRegister() {
        $model = new LandsUsers('register');
        $provice_class = new Provinces();

        if (isset($_POST['LandsUsers'])) {
            $model->attributes = $_POST['LandsUsers']; //var_dump($_POST['LandsUsers']);
            if ($model->save()) {
                Yii::app()->session['reg_success'] = true;
                $this->redirect(Yii::app()->baseUrl . '/dang-ky/thanh-cong');
            }
        }
        $this->render('register', array(
            'model' => $model,
            'listProvices' => $provice_class->listProvince(),
        ));
    }

    public function actionSuccess() {
        if (!Yii::app()->session['reg_success']) {
            $this->redirect(Yii::app()->request->baseUrl . '/dang-ky');
        }
        $this->render('success');
    }

    public function actionLogin() {
        /* if (Yii::app()->session['logged'])
          $this->redirect(Yii::app()->user->returnUrl);

          $model = new LoginForm;
          if (isset($_POST['LoginForm'])) {
          $model->attributes = $_POST['LoginForm'];
          if ($model->validate() && $model->login()) {
          $_SESSION['KCFINDER'] = array();
          $_SESSION['KCFINDER']['disabled'] = false;
          $_SESSION['KCFINDER']['uploadURL'] = Yii::app()->baseUrl . '/public/userfiles/image/' . Yii::app()->user->id;
          Yii::app()->session['logged'] = 1; //session for ckfinder logged
          Yii::app()->session['user'] = Yii::app()->user->id; //session for ckfinder subdomain
          $this->redirect(Yii::app()->user->returnUrl);
          }
          } elseif (Yii::app()->session['activated']) {
          Yii::app()->user->setFlash('message', 'Successful registration.');
          }

          $this->render('login', array('model' => $model)); */

        $model = new LandsLoginForm();
        if (isset($_POST['LandsLoginForm'])) {
            $model->attributes = $_POST['LandsLoginForm'];
            if ($model->validate() && $model->login()) {
                $this->redirect(Yii::app()->memberLands->returnUrl);
            }
        }
        $this->render('login', array('model' => $model));
    }

    public function actionLogout() {
        Yii::app()->memberLands->logout();
        $this->redirect(Yii::app()->homeUrl);
    }

    public function actionAdd() {
        Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl . '/public/plugin/tiny_mce/tiny_mce.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl . '/public/plugin/tiny_mce/config.js');

        $model_class = ucfirst($this->module->id);
        $model_cat_class = $model_class . 'Cat';
        $model_form_class = $model_class . 'Form';
        $model_type_class = $model_class . 'Type';
        $model = new $model_class;
        $model_cat = new $model_cat_class;
        $model_form = new $model_form_class;

        $model_form->contact_name = Yii::app()->memberLands->id;


        $model_type = new $model_type_class;
        $provice_class = new Provinces();

        if (isset($_POST[$model_form_class])) {
            $model_form->attributes = $_POST[$model_form_class];

            if ($model_form->validate()) {
                $model->saveRecord($model_form);
                $this->redirect(array('index'));
            }
        }

        $this->render('add', array(
            'model' => $model_form,
            'listItemsCat' => $model_cat->listCats(),
            'listItemsType' => $model_type->listTypes(),
            'listProvices' => $provice_class->listProvince(),
        ));
    }
    
    public function actionEdit($id) {
               Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/tiny_mce.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/config.js');

        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.nyromodal.custom.min.js');
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/nyromodal.css');
        Yii::app()->clientScript->registerScript('', "$(function() { $('.nyroModal').nyroModal();});", CClientScript::POS_READY);

        $model_class = ucfirst($this->module->id);
        $model_cat_class = $model_class . 'Cat';
        $model_form_class = $model_class . 'Form';
        $model_language_class = $model_class . 'Language';
        $model_type_class = $model_class . 'Type';
        $model = new $model_class;
        $model_cat = new $model_cat_class;
        $model_form = new $model_form_class;
        $model_language = new $model_language_class();

        $model_type = new $model_type_class;
        $provice_class = new Provinces();
        
        //Load Edit
        $model_data = $model->loadEdit($id);
        $model_form['pic_thumb'] = $model_data['pic_thumb'];
        $model_form['pic_full'] = $model_data['pic_full'];
        $model_form['pic_desc'] = $model_data['pic_desc'];
        $model_form['price'] = $model_data['price'];
        $model_form['hot'] = $model_data['hot'];
        $model_form['enable'] = $model_data['enable'];
        $model_form['hoiit_module_item_cat_cat_id'] = $model_data['hoiit_module_item_cat_cat_id'];
        $model_form['hoiit_module_item_type_type_id'] = $model_data['hoiit_module_item_type_type_id'];
        $model_form['hoiit_module_lands_provinces_province_id'] = $model_data['hoiit_module_lands_provinces_province_id'];
        $model_form['contact_name'] = $model_data['contact_name'];
        $model_form['contact_tel'] = $model_data['contact_tel'];

        $model_language_data = $model_language->loadEdit($id);
        foreach ($model_language_data as $value) {
            $model_form['title' . $value['language_id']] = $value['title'];
            $model_form['preview' . $value['language_id']] = $value['preview'];
            $model_form['content' . $value['language_id']] = $value['content'];
            $model_form['tag' . $value['language_id']] = $value['tag'];
            $model_form['description' . $value['language_id']] = $value['description'];
        }

        if (isset($_POST[$model_form_class])) {
            $model_form->attributes = $_POST[$model_form_class];
            if ($model_form->validate()) {
                $model->saveRecord($model_form, $id);
                $this->redirect(array('listpost'));
            }
        }

        $this->render('edit', array(
            'model' => $model_form, 
            'listItemsCat' => $model_cat->listCats(),
            'listItemsType' => $model_type->listTypes(),
            'listProvices' => $provice_class->listProvince(),
            ));
    }
    
    public function actionListpost() {
        $model_class = ucfirst($this->module->id);
        $model = new $model_class;

        //Submit
        if (Yii::app()->request->getIsPostRequest()) {
            $model->activeItem(Yii::app()->request);
            $this->refresh();
        }

        $this->render('listpost', $model->listItemUser());
    }
    public function actionSearch() {
        $model_class = ucfirst($this->module->id);
        $model = new $model_class;
       // $data=NULL;
        //Submit
       // if (Yii::app()->request->getIsPostRequest()) {
     //       $data=$model->search(Yii::app()->request);
      //  }

        $this->render('search', array('data'=>$model->search(Yii::app()->request)));
        
    }
}