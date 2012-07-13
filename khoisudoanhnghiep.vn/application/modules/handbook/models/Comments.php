<?php

class Handbook_Model_Comments extends GLT_Model_Comments {

    public function init() {
        $this->_name = 'dos_module_handbook_comments';
        GLT_Model_Comments::init();
    }

}