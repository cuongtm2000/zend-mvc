<?php

class Consulting_Model_Comments extends GLT_Model_Comments {

    public function init() {
        $this->_name = 'dos_module_consulting_comments';
        GLT_Model_Comments::init();
    }

}