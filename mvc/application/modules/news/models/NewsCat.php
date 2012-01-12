<?php

class News_Model_NewsCat extends GLT_Models_NewsCat {

    public function init() {
        $this->_module = 'news';
        $this->_model = ucfirst($this->_module) . '_Model_' . ucfirst($this->_module);
        GLT_Models_NewsCat::init();
    }

}