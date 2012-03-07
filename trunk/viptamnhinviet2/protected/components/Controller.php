<?php

class Controller extends CController {

	public $layout = '//layouts/column1';

	public $menu = array();
	public $breadcrumbs = array();
	public $menu_product;

	public function init() {
		Yii::app()->getModule('products');
		$product_cat_class = new ProductsCat();
		$this->menu_product = $product_cat_class->listCats();
	}
}