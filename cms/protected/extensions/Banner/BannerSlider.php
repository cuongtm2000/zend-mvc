<?php

class BannerSlider extends CWidget {
    public $id = 'banner';
    public $default_banner = false;
    private $baseUrl;

    public function run() {
        $this->publishAssets();
    }

    private function publishAssets() {
        $items = isset(Yii::app()->controller->module->id) ? Banner::model()->listItem(Yii::app()->controller->module->id, 'banner') : null;
        if ($items) {
            $this->registerClientScript();

            echo '<ul id="' . $this->id . '" class="slider">';
            foreach ($items as $value) {
                echo '<li class="slider-item"><a href="' . $value['banner_link'] . '" title="' . $value['banner_name'] . '"><img src="' . Yii::app()->baseUrl . Yii::getPathOfAlias('filePathUpload') . '/image/banner/' . $value['banner_picture'] . '" alt="' . $value['banner_name'] . '" /></a></li>';
            }
            echo '</ul>';
        } else if ($this->default_banner) {
            echo '<img src="' . Yii::app()->theme->baseUrl . '/images/banner.jpg" alt="Banner" />';
        }
    }

    private function registerClientScript() {
        $dir = dirname(__FILE__) . DIRECTORY_SEPARATOR . 'source';
        $this->baseUrl = Yii::app()->getAssetManager()->publish($dir);

        $cs = Yii::app()->clientScript;
        $cs->registerCssFile($this->baseUrl . '/advanced-slider-base.css');
        $cs->registerScriptFile($this->baseUrl . '/jquery.advancedSlider.min.js');
        $cs->registerScriptFile($this->baseUrl . '/excanvas.compiled-ie.js');
        $cs->registerScriptFile($this->baseUrl . '/jquery.sider.banner-ie.js');
        $cs->registerScriptFile($this->baseUrl . '/jquery.sider.banner.js');
        $cs->registerScript('config', "$(document).ready(function(){runbanner(520,275);});", CClientScript::POS_HEAD);
    }
}