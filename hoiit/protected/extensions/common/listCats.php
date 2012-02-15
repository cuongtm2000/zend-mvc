<?php

/**
 * Description of cats
 *
 * @author Thanhansoft
 */
class listCats extends CWidget {
    public function init() {
        
    }

    private function publicAssets() {
        //echo Yii::app()->request->getQuery('cid');
        $model_class = new Cats();
        $data = $model_class->listCats();
        $rowsize = count($data);
        
        //Find cat_id
        $cat_id = 0;
        foreach($data as $value){
            if(NoneUnicode::convert($value['cat_name']) == Yii::app()->request->getQuery('cid')){
                $cat_id = $value['cat_id'];
            }
        }

        //Find parent_id
        $parent_id = $cat_id;
        $sub = 0;
        if ($cat_id) {
            for ($i = 0; $i < $rowsize; $i++) {
                if ($cat_id == $data[$i]['cat_id']) {
                    if ($data[$i]['parent_id']) {
                        for ($j = 0; $j < $rowsize; $j++) {
                            if ($data[$i]['parent_id'] == $data[$j]['cat_id']) {
                                $sub = $data[$j]['parent_id'];
                                break;
                            }
                        }
                        $parent_id = $data[$i]['parent_id'];
                    }
                    break;
                }
            }
        }

        echo '<ul class="menu-li">';
        for ($i = 0; $i < $rowsize; $i++) {
            if ($data[$i]['parent_id'] == 0) {
                echo '<li><a href="'.Yii::app()->request->baseUrl . '/posts/'.NoneUnicode::convert($data[$i]['cat_name']).'" title="' . $data[$i]['cat_name'] . '">' . $data[$i]['cat_name'] . '</a>';

                if (($parent_id && ($parent_id == $data[$i]['cat_id'])) || ($sub && ($sub == $data[$i]['cat_id']))) {
                    echo '<ul>';
                    for ($j = 0; $j < $rowsize; $j++) {
                        if ($data[$j]['parent_id'] == $data[$i]['cat_id']) {
                            echo '<li><a href="'.Yii::app()->request->baseUrl . '/posts/'.NoneUnicode::convert($data[$j]['cat_name']).'" title="' . $data[$j]['cat_name'] . '">' . $data[$j]['cat_name'] . '</a>';
                            for ($k = 0; $k < $rowsize; $k++) {
                                if (($data[$j]['cat_id'] == $cat_id) || ($parent_id == $data[$k]['parent_id'])) {
                                    if ($data[$k]['parent_id'] == $data[$j]['cat_id']) {
                                        echo '<p><a href="'.Yii::app()->request->baseUrl . '/posts/'.NoneUnicode::convert($data[$k]['cat_name']).'" title="' . $data[$k]['cat_name'] . '">' . $data[$k]['cat_name'] . '</a></p>';
                                    }
                                }
                            }
                            echo '</li>';
                        }
                    }
                    echo '</ul>';
                }
                echo '</li>';
            }
        }
        echo '</ul>';
    }

    public function run() {
        $this->publicAssets();
    }

}