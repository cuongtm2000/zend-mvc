<?php

class GLT_View_Helper_Showmenu extends Zend_View_Helper_Abstract {

    public function showmenu($list, $module_name,$link) {
        $rowsize = count($list);
        $params = Zend_Controller_Front::getInstance()->getRequest()->getParams();
        if(isset($params['id'])){
            $cat=new GLT_Models_NewsCat();
            $cat_id =$cat->getRecordByTag($params['id'],'dos_module_'.$module_name.'_cat');
        }  else {
            $cat_id =0;
        }
        //Find parent_id
        $parent_id = $cat_id;
        if ($cat_id) {
            foreach ($list as $value) {
                if ($cat_id == $value['cat_id']) {
                    if ($value['cat_parent_id'])
                        $parent_id = $value['cat_parent_id'];
                    break;
                }
            }
        }
        //echo $parent_id;
        //Display cat menu
        foreach ($list as $cat) {
            if ($cat['cat_parent_id'] == 0) {
                //Parent categories
                echo '<li>
                        <a href="' . $this->view->baseUrl() . '/' . LANGURL . $link . '/' . $cat['tag'] . '" title="' . $cat['cat_title' . LANG] . '">' . $cat['cat_title' . LANG] . '</a>';
                //Sub categories
                if ($parent_id && ($parent_id == $cat['cat_id'])) {
                    for ($j = 0; $j < $rowsize; $j++) {
                        if ($list[$j]['cat_parent_id'] == $parent_id) {
                            echo '<ul>';
                            foreach ($list as $value) {
                                if ($value['cat_parent_id'] == $parent_id) {
                                    echo '<li><a href="' . $this->view->baseUrl() . '/' . LANGURL . $link . '/' . $value['tag'] . '" title="' . $value['cat_title' . LANG] . '">' . $value['cat_title' . LANG] . '</a></li>';
                                }
                            }
                            echo '</ul>';
                            break;
                        }
                    }
                }
                echo '</li>';
            }
        }
    }

}