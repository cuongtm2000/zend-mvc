<?php
class GLT_Controller_Plugin_Expired extends Zend_Controller_Plugin_Abstract{
	public function preDispatch(Zend_Controller_Request_Abstract $request){
        $module = $request->getParam('module');
        if($module != 'webadmin'){
            $db = Zend_Registry::get('connectDb');
    		$select = $db->select()->from('dos_sys_configs', array('config_value'))->where('config_name =? ', 'sys_key');
    		$result = $db->fetchRow($select);
            
            $exp_date = $this->decrypt($result['config_value']);
            $today_date = date("Y-m-d");
            
            $today = strtotime($today_date);
            $expiration_date = strtotime($exp_date);
            
            if ($expiration_date < $today) {
                //Expired
                die;
            }
        }
    }
    private function decrypt($encrypted_input_string){
    	$iv_size = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB);
    	$iv = mcrypt_create_iv($iv_size, MCRYPT_RAND);
    	$h_key = hash('sha256', 'glt', TRUE);
    	return trim(mcrypt_decrypt(MCRYPT_RIJNDAEL_256, $h_key, base64_decode($encrypted_input_string), MCRYPT_MODE_ECB, $iv));
    }
}