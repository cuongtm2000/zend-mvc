<?php

Yii::import('zii.widgets.CMenu');
class MenuMultiLevel extends CMenu {
    public $id = 'nav';
    public $activeCssClass = 'selected';
    public $linkLabelWrapper = null;
    public $htmlOptions = array();
    public $jquery = 0;

    private $baseUrl;

    public function run() {
        $this->publishAssets();
    }

    public function publishAssets() {
        if ($items = $this->getItems()) {
            $this->registerFiles();

            echo '<div id="smoothmenu1" class="ddsmoothmenu">';
            $menu = array(
                'id' => $this->id,
                'activeCssClass' => $this->activeCssClass,
                'linkLabelWrapper' => $this->linkLabelWrapper,
                'htmlOptions' => $this->htmlOptions,
                'items' => $items
            );
            $this->widget('zii.widgets.CMenu', $menu);
            echo '</div>';
        }
    }

    private function getItems($parent_id = null) {
        $items = array();
        $results = Yii::app()->db->createCommand()->select('hoiit_module_menus.menu_id, menu_name, menu_url')->from('hoiit_module_menus')->join('hoiit_module_menus_languages', 'hoiit_module_menus.menu_id=hoiit_module_menus_languages.menu_id');
        ($parent_id === null) ? $results->where('language_id=:lang AND parent_id=0', array(':lang' => Yii::app()->language)) : $results->where('language_id=:lang AND parent_id=:pid', array(':lang' => Yii::app()->language, ':pid' => $parent_id));
        $results = $results->order('menu_sort ASC, menu_name ASC')->queryAll();

        if (empty($results)) return $items;

        foreach ($results AS $result) {
            $childItems = $this->getItems($result['menu_id']);

            $items[] = array(
                'label' => $result['menu_name'],
                'url' => Yii::app()->baseUrl . '/' . $result['menu_url'],
                //'itemOptions' => array('class' => 'listItem'),
                'linkOptions' => array( /*'class' => 'listItemLink', */
                    'title' => $result['menu_name']),
                'submenuOptions' => array(),
                'items' => $childItems,
            );
        }

        return $items;
    }

    private function registerFiles() {
        $dir = dirname(__FILE__) . DIRECTORY_SEPARATOR . 'source';
        $this->baseUrl = Yii::app()->getAssetManager()->publish($dir);

        $cs = Yii::app()->getClientScript();

        if ($this->jquery != 0) $cs->registerCoreScript('jquery');
        $cs->registerCssFile($this->baseUrl . '/dd-smooth-menu.css');
        $cs->registerCssFile($this->baseUrl . '/dd-smooth-menu-v.css');
        $cs->registerScriptFile($this->baseUrl . '/dd-smooth-menu.js');
        $cs->registerScriptFile($this->baseUrl . '/dd-smooth-menu-config.js');
    }
}
