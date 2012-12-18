<?php

class DefaultController extends Controller {
    public function actionIndex() {
        $model_class = ucfirst($this->module->id) . 'Cat';
        $model = new $model_class;

        $this->render('index', array('items' => $model->listItem()));
    }

    public function actionCats($cid, $page = 0) {
        $model_class = ucfirst($this->module->id) . 'Cat';
        $model = new $model_class;

        $info_cat = ProductsCatLanguage::model()->findCatByTag($cid);
        $this->render('cats', array('info_cat' => $info_cat, 'sub_cats' => $model->listItem($info_cat['cat_id']), 'items' => Products::model()->listItemByCat($info_cat['cat_id'])));
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
	
	 public function actionHots() {
        $model_class = ucfirst($this->module->id);
        $model = new $model_class;

        $this->render('hots', array('items_hot' => $model->listItemHots()));
    }
	
	public function actionOrder($id) {
        $id = ProductsLanguage::model()->getIDByTag($id);
        $cart = Yii::app()->session['cart'];

        if (is_array($cart) && array_key_exists($id, $cart)) {
            $cart[$id] = $cart[$id] + 1;
        } else {
            $cart[$id] = 1;
        }
        Yii::app()->session['cart'] = $cart;
        $this->redirect(Yii::app()->baseUrl .'/san-pham/gio-hang');
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
            $this->redirect(Yii::app()->baseUrl .'/san-pham/thong-tin-dat-hang');
        }

        $this->render('cart-item', array('items' => $model_class->ItemsOrder($cart), 'carts' => $cart));
    }

    public function actionCartdelete($id) {
        $cart = Yii::app()->session['cart'];
        unset($cart[$id]);
        Yii::app()->session['cart'] = $cart;
        $this->redirect(Yii::app()->baseUrl .'/san-pham/gio-hang');
    }

    // delete all item in cart
    public function actionDelallcart() {
        Yii::app()->session['cart'] = '';
        $this->redirect(Yii::app()->baseUrl .'/san-pham/gio-hang');
    }

  public function actionOrdering() {
        $model = ucfirst($this->module->id);
        $model_class = new $model();
        $cartform = new ProductsCartForm();

        $cart = Yii::app()->session['cart'];
        $items = $model_class->ItemsOrder($cart);

        if (isset($_POST['ProductsCartForm'])) {
            $cartform->attributes = $_POST['ProductsCartForm'];
            if ($cartform->validate()) {
                $username = User::model()->find('user_enable=1 AND hoiit_groups_group_id=:administrator', array(':administrator' => 'administrator'));
                $html = 'Xin chào: <strong>' . $username['user_id'] . '</strong><br /><br />';
                $html .= 'Thông tin khách hàng liên hệ đặt mua sản phẩm tại website: ' . Yii::app()->session['subdomain'] . '.dos.vn <br />';
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

                    $html .= '<tr align="center"><td>' . $v->ProductsLanguage[Yii::app()->language]['title'] . ' - ' . $v->ProductsCat->ProductsCatLanguage[Yii::app()->language]['cat_title'] . '</td><td>' . Common::getPrice($price) . '</td><td>' . $num_of_dates . '</td><td>' . Common::getPrice($total_item) . '</td></tr>';
                }
                $html .= '<tr><td colspan="3" style="padding:5px; text-align: right">Tổng cộng: </td><td align="center"><strong>' . Common::getPrice($total) . ' VND</strong></td></tr>';
                $html .= '</tbody></table>';
                $html .= '<br />Cảm ơn đã sử dụng dịch vụ công ty chúng tôi<br />--<br/>Dos.vn';

                Yii::import('application.extensions.Phpmailer.JPhpMailer');
                $mail = new JPhpMailer();
                //$mail->sendMailSmtp('noreply@thuonghoi.com', $username['user_email'], 'Dos.vn', $username['user_id'], 'Liên hệ từ website', $html, 1, $cartform['email'], $cartform['fullname']);
                      
                Yii::app()->user->setFlash('contactSuccess', 'Lien he thanh cong');
                $this->refresh();
            }
        }

        $this->render('ordering', array('items' => $items, 'carts' => $cart, 'model' => $cartform));
    }
}