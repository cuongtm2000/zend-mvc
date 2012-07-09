<?php

Yii::import('zii.widgets.CMenu');
class MenuMultiLevel extends CMenu {
    public $id = 'nav';
    public $activeCssClass = 'selected';
    public $linkLabelWrapper = null;
    public $htmlOptions = array();

    private $baseUrl;

    public function run() {
        $this->publishAssets();
    }

    public function publishAssets() {
        $menu = array(
            'id' => $this->id,
            'activeCssClass' => $this->activeCssClass,
            'linkLabelWrapper' => $this->linkLabelWrapper,
            'htmlOptions' => $this->htmlOptions,
            'items' => $this->getItems()
        );
        $this->widget('zii.widgets.CMenu', $menu);
    }

    private function getItems($parent_id = null) {
        $items = array();
        $results = Yii::app()->db->createCommand()->select('menu_id, menu_name, menu_url')->from('hoiit_module_menus');
        ($parent_id === null) ? $results->where('parent_id=0') : $results->where('parent_id=:pid', array(':pid' => $parent_id));
        $results = $results->order('menu_sort ASC, menu_name ASC')->queryAll();

        if (empty($results)) return $items;

        $this->registerFiles();

        foreach ($results AS $result) {
            $childItems = $this->getItems($result['menu_id']);

            $items[] = array(
                'label' => $result['menu_name'],
                'url' => $result['menu_url'],
                //'itemOptions' => array('class' => 'listItem'),
                'linkOptions' => array( /*'class' => 'listItemLink', */
                    'title' => $result['menu_name']),
                'submenuOptions' => array(),
                'items' => $childItems,
            );
        }

        return $items;
    }

    private function registerFiles(){
        $dir = dirname(__FILE__) . DIRECTORY_SEPARATOR . 'source';
        $this->baseUrl = Yii::app()->getAssetManager()->publish($dir);

        $cs = Yii::app()->getClientScript();
        $cs->registerCssFile($this->baseUrl . '/dd-smooth-menu.css');
        $cs->registerCssFile($this->baseUrl . '/dd-smooth-menu-v.css');
        $cs->registerScriptFile($this->baseUrl . '/dd-smooth-menu.js');
        $cs->registerScriptFile($this->baseUrl . '/dd-smooth-menu-config.js');
    }
}
