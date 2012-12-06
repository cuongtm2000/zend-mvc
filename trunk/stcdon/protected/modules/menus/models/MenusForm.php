<?php

class MenusForm extends CFormModel {
    public $parent_id;
    public $menu_namevi;
    public $menu_nameen;
    public $menu_urlvi;
    public $menu_urlen;
    public $menu_url_content_page;
	public $menu_type;
	public $menu_target;
    public $menu_homepage = 0;
    public $menu_activated = 1;
    public $menu_descriptionvi;
    public $menu_descriptionen;

    public function rules() {
        return array(
            array('parent_id, menu_namevi', 'required'),
            array('parent_id, menu_type, menu_homepage, menu_activated', 'numerical', 'integerOnly' => true),
            array('menu_namevi, menu_nameen', 'length', 'max' => 100),
            array('menu_descriptionvi, menu_descriptionen', 'length', 'max' => 250),
            array('menu_urlvi, menu_urlen, menu_url_content_page', 'length', 'max' => 255),
            array('menu_target', 'safe')
        );
    }

    public function attributeLabels() {
        return array(
        );
    }
}