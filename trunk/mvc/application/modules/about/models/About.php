<?php
class About_Model_About extends GLT_Models_About{
    public function init() {
        $this->_module = 'about';
        GLT_Models_About::init();
    }
}