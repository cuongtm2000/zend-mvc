<?php
class Default_Model_Common extends Zend_Db_Table{
    
    public function loadFunction($module){
        $db = Zend_Db_Table_Abstract::getDefaultAdapter();
        $stmt = $db->query("SELECT model_load, action, varname, function_load FROM dos_sys_functions WHERE model_name = '$module'");
        return $stmt->fetchAll();
    }
}