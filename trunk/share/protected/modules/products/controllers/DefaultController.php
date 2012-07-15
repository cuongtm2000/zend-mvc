<?php

class DefaultController extends Controller {

    public function actionIndex() {
        $this->layout = '//layouts/column-3';
        $this->setSeoPage(); //set Seo page

        $model = new ProductsCat();
        $this->render(Yii::app()->session['template'] . '/index', array('items' => $model->listItem()));
    }

    public function actionCats($cid, $page = 0) {
        $this->layout = '//layouts/column-3';
        $model = new ProductsCat();
        $items = new Products();

        $info_cat = $model->findCatByTag($cid); //find cat_id
        $this->render(Yii::app()->session['template'] . '/cats', array('info_cat' => $info_cat, 'list_sub_cats' => $model->listItem($info_cat['cat_id']), 'list_items' => $items->listItemByCat($info_cat['cat_id'])));
    }

    public function actionTypes($cid) {
        $this->layout = '//layouts/column-3';

        $model = new ProductsType();
        $items = new Products();

        $info_cat = $model->findTypeByTag($cid);
        $this->render(
            Yii::app()->session['template'] . '/types', array(
                'info_cat' => $info_cat,
                //'list_sub_cats' => $model->listItem($info_cat['cat_id']),
                'list_items' => $items->listItemByType($info_cat['type_id'])
            )
        );
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


        $this->layout = '//layouts/column-3';

        $model = ucfirst($this->module->id);
        $model_class = new $model();

        $tmp = $model_class->detailItem($id);
        //$tmp['feature']=$tmp->productsFeature;
        //$tmp['utility'] = $tmp->productsUtility;
        $tmp['dos_provinces_province_id'] = Districts::getProvinceName($tmp['dos_districts_district_id']);
        $tmp['dos_districts_district_id'] = $tmp->District['district_name'];

        $data['item'] = $tmp;
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
        $this->redirect(Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', 'products.link') . '/' . Yii::t('user', 'products.cartitem.link'));
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
            $this->redirect(Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', 'products.link') . '/' . Yii::t('user', 'products.ordering.link'));
        }

        $this->render(Yii::app()->session['template'] . '/cartitem', array('Items' => $model_class->listItem($cart), 'carts' => $cart));
    }

    public function actionCartdelete($id) {
        $cart = Yii::app()->session['cart'];
        unset($cart[$id]);
        Yii::app()->session['cart'] = $cart;
        $this->redirect(Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', 'products.link') . '/' . Yii::t('user', 'products.cartitem.link'));
    }

    // delete all item in cart
    public function actionDelallcart() {
        Yii::app()->session['cart'] = '';
        $this->redirect(Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', 'products.link') . '/' . Yii::t('user', 'products.cartitem.link'));
    }

    public function actionOrdering() {
        $model = ucfirst($this->module->id);
        $model_class = new $model();
        $cartform = new CartForm();

        $cart = Yii::app()->session['cart'];
        $items = $model_class->listItem($cart);

        if (isset($_POST['CartForm'])) {
            $cartform->attributes = $_POST['CartForm'];
            if ($cartform->validate()) {
                $username = Username::model()->infoUser('user');
                $html = 'Xin chào: <strong>' . $username['fullname'] . '</strong><br /><br />';
                $html .= 'Thông tin khách hàng liên hệ đặt mua sản phẩm tại website: http://' . $_SERVER['HTTP_HOST'] . Yii::app()->request->baseUrl . '<br />';
                $html .= '<strong>Họ và tên</strong>: ' . $cartform['fullname'] . '<br />';
                $html .= '<strong>Địa chỉ</strong>: ' . $cartform['address'] . '<br />';
                $html .= '<strong>Điện thoại</strong>: ' . $cartform['phone'] . '<br />';
                $html .= '<strong>Email</strong>: ' . $cartform['email'] . '<br />';
                $html .= '<strong>Nội dung</strong>: ' . $cartform['content'] . '<br />';

                $html .= '<table align="center" cellspacing="0" cellpadding="5" border="1"><thead><tr align="center"><td>Tên sản phẩm</td><td>Đơn giá</td><td width="80">Số lượng</td><td>Thành tiền</td></tr></thead><tbody>';

                $total = 0;
                foreach ($items as $k => $v) {
                    $price = $v['unit'];
                    $num_of_dates = $cart[$v['record_id']];
                    $total_item = $price * $num_of_dates;
                    $total += $total_item;

                    $html .= '<tr align="center"><td>' . $v['title' . LANG] . ' - ' . $v['ProductsCat']['cat_title' . LANG] . '</td><td>' . Common::getPrice($price) . '</td><td>' . $num_of_dates . '</td><td>' . Common::getPrice($total_item) . '</td></tr>';
                }
                $html .= '<tr><td colspan="3" style="padding:5px; text-align: right">Tổng cộng: </td><td align="center"><strong>' . Common::getPrice($total) . ' VND</strong></td></tr>';
                $html .= '</tbody></table>';
                $html .= '<br />Cảm ơn đã sử dụng dịch vụ công ty chúng tôi<br />--<br/>Dos.vn';

                Yii::import('application.extensions.phpmailer.JPhpMailer');
                $mail = new JPhpMailer;
                $mail->sendMailSmtp('sender@dos.vn', $username['email'], 'Dos.vn', $username['fullname'], 'Liên hệ từ web: http://' . $_SERVER['HTTP_HOST'] . Yii::app()->request->baseUrl, $html, 1, $cartform['email'], $cartform['fullname']);

                Yii::app()->user->setFlash('contactSuccess', $this->lang['contactSuccess']);
                $this->refresh();
            }
        }

        $this->render(Yii::app()->session['template'] . '/ordering', array('Items' => $items, 'carts' => $cart, 'model' => $cartform));
    }

    public function actionAdd() {

        $this->layout = '//layouts/column-3';
        Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl . '/public/plugin/tiny_mce/tiny_mce.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl . '/public/plugin/tiny_mce/config.js');

        //Yii::app()->getModule($this->ID);
        $model = 'Products';
        $module_cat = 'ProductsCat';

        $model_cat_class = new $module_cat();
        $model_class = new $model();
        $model_type_class = new ProductsType();
        $model_utility_class = new ProductsUtility();
        $model_fearture_class = new ProductsFeature();
        $provice_class = new Provinces();

        if (isset($_POST[$model])) {
            $model_class->attributes = $_POST[$model];
            $model_fearture_class->attributes = $_POST[$model]['feature'];
            if ($model_class->validate() && $model_fearture_class->validate()) {
                $model_class->save();
                $model_fearture_class->save_data($model_class->record_id, $_POST[$model]['feature']);
                $model_utility_class->save_data($model_class->record_id, $_POST[$model]['utility']);
                $this->redirect(Yii::app()->baseUrl . '/tin-da-dang');
            }
        }

        $this->render(Yii::app()->session['template'] . '/add', array(
            'model' => $model_class,
            // 'model_u' => $model_utility_class,
            'model_f' => $model_fearture_class,
            //  'listItemsF' => $model_fearture_class->listItem(),
            'listItemsU' => $model_utility_class->attributeLabels(),
            'listItemsType' => $model_type_class->listItem(),
            'listItemsCat' => $model_cat_class->listCats(),
            'listProvices' => $provice_class->listProvinceByCountry('VND'),
        ));
    }

    public function actionEdit($id) {
        $this->layout = '//layouts/column-3';

        Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/tiny_mce.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/config.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.nyromodal.custom.min.js');
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/nyromodal.css');
        Yii::app()->clientScript->registerScript('', "$(function() { $('.nyroModal').nyroModal();});", CClientScript::POS_READY);

        $model = 'Products';
        $module_cat = $model . 'Cat';

        $model_type_class = new ProductsType();
        $model_utility_class = new ProductsUtility();
        $model_fearture_class = new ProductsFeature();
        $provice_class = new Provinces();

        $model_cat_class = new $module_cat();
        $model_class = new $model();
        $model_class = $model_class->loadEdit($id); //load form models

        $model_class['dos_provinces_province_id'] = $model_class->District['dos_provinces_province'];
        $model_class['feature'] = $model_class->productsFeature->loadEdit();
        $model_class['utility'] = array_keys(array_filter($model_class->productsUtility->getAttributes(), 'checked'));
        //  var_dump($model_class);
        if (isset($_POST[$model])) {

            $model_class->attributes = $_POST[$model];
            $model_fearture_class->attributes = $_POST[$model]['feature'];
            if ($model_class->validate() && $model_fearture_class->validate()) {
                $model_class->save();
                $model_class->productsFeature->save_data($model_class->record_id, $_POST[$model]['feature']);
                $model_class->productsUtility->save_data($model_class->record_id, $_POST[$model]['utility']);
                $this->redirect(array('list'));
            }
        }

        $this->render(
            Yii::app()->session['template'] . '/edit', array(
                'model' => $model_class,
                'model_f' => $model_fearture_class,
                'listItemsType' => $model_type_class->listItem(),
                'listItemsCat' => $model_cat_class->listCats(),
                'listItemsU' => $model_utility_class->attributeLabels(),
                'listProvices' => $provice_class->listProvinceByCountry('VND'),
            )
        );

    }

    public function actionList() {
        $this->layout = '//layouts/column-2';

        $model_class = new Products();
        //Submit
        if (Yii::app()->request->getIsPostRequest()) {
            $model_class->activeItem(Yii::app()->request);
            $this->refresh();
        }

        $this->render(Yii::app()->session['template'] . '/list', $model_class->listItemPosted());
    }
    public function actionSearch(){
        $this->layout = '//layouts/column-3';
     //   var_dump($_POST);
        $data=NULL;
        if(isset($_POST['keyword'])){
            $pro=new Products();
            $data=$pro->searchByCat($_POST['cat'], $_POST['keyword']);
        }
       // var_dump($data);
        $this->render(Yii::app()->session['template'] . '/search', 
                array('list_items' => $data));
    }
}

function checked($v) {
    return $v == 1;
}