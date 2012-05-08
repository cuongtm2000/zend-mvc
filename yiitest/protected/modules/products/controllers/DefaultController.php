<?php

class DefaultController extends Controller {

    public function actionIndex() {
        $this->setSeoPage(); //set Seo page

        $model_cat = ucfirst($this->module->id) . 'Cat';
        $model_cat_class = new $model_cat();

        $this->render(Yii::app()->session['template'] . '/index', array('items' => $model_cat_class->listItem()));
    }

    public function actionCats($cid, $page = 0) {
        $model = ucfirst($this->module->id);
        $model_cat = $model . 'Cat';
        $model_class = new $model();
        $model_cat_class = new $model_cat();

        $info_cat = $model_cat_class->findCatByTag($cid); //find cat_id
        $this->render(Yii::app()->session['template'] . '/cats', array('info_cat' => $info_cat, 'list_sub_cats' => $model_cat_class->listItem($info_cat['cat_id']), 'list_items' => $model_class->listItemByCat($info_cat['cat_id'])));
    }

    public function actionView($id) {
        $model = ucfirst($this->module->id);
        $model_class = new $model();

        $data['item'] = $model_class->detailItem($id);
        $data['item_other'] = $model_class->listItemOther($data['item']['record_id'], $data['item']['dos_module_item_cat_cat_id']);
        $this->render(Yii::app()->session['template'] . '/view', $data);
    }

    public function actionOrder($id) {
        $model = ucfirst($this->module->id);
        $model_class = new $model();

        $id = $model_class->getIDByTag($id);

        $cart = Yii::app()->session['cart'];

        if (is_array($cart) && array_key_exists($id, $cart)) {
            $cart[$id] = $cart[$id] + 1;
        } else {
            $cart[$id] = 1;
        }
        Yii::app()->session['cart'] = $cart;
        $this->redirect(LANGURL . '/' . Yii::t('user', 'products.link') . '/' . Yii::t('user', 'products.cartitem.link'));
    }

    public function actionCartitem() {
        $model = ucfirst($this->module->id);
        $model_class = new $model();

        $cart = Yii::app()->session['cart'];
        if (isset($_POST['num_of_dates'])) {
            //update the num of date
            foreach ($cart as $k => $v) {
                $cart[$k] = $_POST['num_of_dates'][$k];
            }
            Yii::app()->session['cart'] = $cart;
            $this->redirect(LANGURL . '/' . Yii::t('user', 'products.link') . '/' . Yii::t('user', 'products.ordering.link'));
        }

        $this->render(Yii::app()->session['template'] . '/cartitem', array('Items' => $model_class->listItem($cart), 'carts' => $cart));
    }

    public function actionCartdelete($id) {
        $cart = Yii::app()->session['cart'];
        unset($cart[$id]);
        Yii::app()->session['cart'] = $cart;
        $this->redirect(LANGURL . '/' . Yii::t('user', 'products.link') . '/' . Yii::t('user', 'products.cartitem.link'));
    }

    // delete all item in cart
    public function actionDelallcart() {
        Yii::app()->session['cart'] = '';
        $this->redirect(LANGURL . '/' . Yii::t('user', 'products.link') . '/' . Yii::t('user', 'products.cartitem.link'));
    }

    public function actionOrdering() {
        $model = ucfirst($this->module->id);
        $model_class = new $model();
        $cartform = new CartForm();

        $cart = Yii::app()->session['cart'];

        if (isset($_POST['CartForm'])) {
            $cartform->attributes = $_POST['CartForm'];
            if ($cartform->validate()) {
                var_dump($_POST['CartForm']);
                //$this->_redirect($this->_data['module'] . '/index/success');
                Yii::app()->user->setFlash('contactSuccess', 'Thank you for contacting us. We will respond to you as soon as possible.');
                //$this->refresh();
            }
        }

        $this->render(Yii::app()->session['template'] . '/ordering', array('Items' => $model_class->listItem($cart), 'carts' => $cart, 'model' => $cartform));
    }
}