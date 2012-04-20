<?php

/**
 * Description of cats
 *
 * @author Thanhansoft
 */
class dashBoard extends CWidget {

    public function init() {
        
    }

    private function publicAssets() {
        echo '<div class="catmenu"><ul class="menu-li"><li>' . CHtml::link('Dashboard', Yii::app()->request->baseUrl . '/dashboard') . '<ul><li>' . CHtml::link('List posts', Yii::app()->request->baseUrl . '/dashboard/posts') . '</li><li>' . CHtml::link('Add post', Yii::app()->request->baseUrl . '/dashboard/posts/add') . '</li></ul></li></ul></div>';
    }

    public function run() {
        if (Yii::app()->user->id) {
            $this->publicAssets();
        }
    }
}