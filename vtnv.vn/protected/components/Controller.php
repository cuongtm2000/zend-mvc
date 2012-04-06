<?php

class Controller extends CController {

	public $layout = '//layouts/column1';
	public $menu = array();
	public $breadcrumbs = array();

	public $lang = array(); //language

	public $menu_product;
	public $banners;
	public $advs_left;
	public $advs_center;
	public $advs_top;
	public $advs_bottom;
	public $listItemHot;
	public $videoHome; //video home
        
        public $balance=0;

	public function init() {
		//Setup lang
		$this->lang = Langs::setLangs();

		Yii::app()->getModule('products');
		$product_cat_class = new ProductsCat();
		$this->menu_product = $product_cat_class->listCats();

		$banners_class = new Banners();
		$this->banners = $banners_class->getBanner(isset($this->module->id) ? $this->module->id : 'default');

		$advs_class = new Advs();
		$this->advs_left = $advs_class->listItemsByPosition('left');
		$this->advs_center = $advs_class->listItemsByPosition('center');
		$this->advs_top = $advs_class->listItemsByPosition('top');
		$this->advs_bottom = $advs_class->listItemsByPosition('bottom');

		$products_class = new Products();
		$this->listItemHot = $products_class->listItemHot();

		Yii::app()->getModule('video');
		$video_class = new Video();
		$this->videoHome = $video_class->itemHome();

		$user_class = new User();
		define('USERFILES', '/public/userfiles/images/'.$user_class->getUserAdministrator().'/images'); //coi lai cai này
                
                $user=new User();
                $this->balance=$user->getBalance(Yii::app()->user->name);
	}
}