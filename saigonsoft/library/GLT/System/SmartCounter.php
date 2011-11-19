<?php
class GLT_System_SmartCounter{
    private $db_server;
    private $db_username;
    private $db_password;
    private $db_name;
    private $db_main_table;
    private $db_users_table;
    private $db_link;
    private $current_page;
    private $ip_addr;
    private $inc_interval;
    private $inc_total;
    private $config;

    public function __construct(){
	    $db = Zend_Registry::get('connectDb');
	    $config = $db->getConfig();

        $this->db_server = $config['host'];
        $this->db_username = $config['username'];
        $this->db_password = $config['password'];
        $this->db_name = $config['dbname'];
        $this->db_main_table = 'dos_sys_sc_main';
        $this->db_users_table = 'dos_sys_sc_users';
        $this->current_page = realpath(basename($_SERVER['PHP_SELF']));
        $this->current_page = str_replace('\\', '/', $this->current_page);
        $this->ip_addr = $_SERVER['REMOTE_ADDR'];
        $this->inc_interval = 1200;
        $this->inc_total = TRUE;
    }
	
    //Front end - visit_total
	public function visit_total(){
    	$this->inc_interval = 1200;
    	$this->update_counter();
    	$value= '';
    	$lenstring = 5-strlen($this->get_total_visits());		
    	for($i=0;$i<$lenstring;$i++){
    		$value .= '0';
    	}	
    	$total_uniques_numbers = array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9");
    	$total_uniques_images = array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9");
    	$total_uniques = str_replace($total_uniques_numbers, $total_uniques_images, $value.$this->get_total_visits());
    	return $total_uniques;
    }
    //Front end - visit_online
	public function visit_online(){
    	$this->update_counter();
    	$value= '';
    	//$account = ($this->get_active_visits(300)+135);
    	/*$lenstring = 6-strlen($account);		
    	for($i=0;$i<$lenstring;$i++){
    		$value .= '0';
    	}*/	
    	$total_uniques_numbers = array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9");
    	$total_uniques_images = array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9");
    	$total_uniques = str_replace($total_uniques_numbers, $total_uniques_images, $value.$this->get_active_visits(300));
    	return $total_uniques;
    }
    //Front end - visit_today
    public function visit_today(){
    	//$this->inc_interval = 1200;
    	$this->update_counter();
    	$value= '';
    	$lenstring = 3-strlen($this->get_today_visits());		
    	for($i=0;$i<$lenstring;$i++){
    		$value .= '0';
    	}	
    	$total_uniques_numbers = array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9");
    	$total_uniques_images = array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9");
    	$total_uniques = str_replace($total_uniques_numbers, $total_uniques_images, $value.$this->get_today_visits());
    	return $total_uniques;
    }
    
    private function update_counter($auto_connect = TRUE){
        if ($auto_connect){
            $this->db_link = mysql_connect($this->db_server, $this->db_username,
            $this->db_password) or die(mysql_error());
            mysql_select_db($this->db_name, $this->db_link) or die(mysql_error());
        }
        $this->install_tables();
        $this->update_users();
        if ($this->inc_total){
            $this->inc_page_hits(TRUE);
        }
        $this->inc_page_hits(FALSE);
    }

    private function get_total_visits(){
        $result = mysql_query("SELECT sc_count FROM $this->db_main_table WHERE sc_name = 'total'", $this->db_link) or die(mysql_error());
        return mysql_result($result, 0, 0);
    }
    private function get_page_visits(){
        $result = mysql_query("SELECT sc_count FROM $this->db_main_table WHERE sc_name = '$this->current_page'", $this->db_link) or die(mysql_error());
        return mysql_result($result, 0, 0);
    }
    private function get_today_visits(){
        list($month, $day, $year) = explode('|', date('m|d|Y'));
        $day_start = mktime(0, 0, 0, $month, $day, $year);
        $result = mysql_query("SELECT COUNT(*) FROM $this->db_users_table WHERE sc_time >= $day_start", $this->db_link) or die(mysql_error());
        return mysql_result($result, 0, 0);
    }
    private function get_active_visits($interval = 300){
        $count_from = time() - $interval;
        $result = mysql_query("SELECT COUNT(*) FROM $this->db_users_table WHERE sc_time >= $count_from", $this->db_link) or die(mysql_error());
        return mysql_result($result, 0, 0);
    }
    private function get_latest_visitors(){
        $result = mysql_query("SELECT sc_ip, sc_time, sc_location FROM $this->db_users_table ORDER BY sc_time DESC", $this->db_link) or die(mysql_error());
        $visitors = array();
        while ($row = mysql_fetch_assoc($result)){
            $ip = $row['sc_ip'];
            $visitors[$ip]['host'] = gethostbyaddr($ip);
            $visitors[$ip]['time'] = $row['sc_time'];
            $visitors[$ip]['location'] = $row['sc_location'];
        }
        return $visitors;
    }

    private function install_tables(){
        $found_main = $found_users = FALSE;
        $result = mysql_query('SHOW TABLES', $this->db_link) or die(mysql_error());
        while ($row = mysql_fetch_array($result)){
          if (strtoupper($this->db_main_table) == strtoupper($row[0])){
            $found_main = TRUE;
          }
          elseif (strtoupper($this->db_users_table) == strtoupper($row[0])){
            $found_users = TRUE;
          }
          if ($found_main && $found_users){
            break;
          }
        }
        if (!$found_main){
            mysql_query("CREATE TABLE $this->db_main_table(
            sc_name VARCHAR(255) NOT NULL,
            sc_count INT UNSIGNED NOT NULL DEFAULT 0,
            PRIMARY KEY(sc_name)
            ) ENGINE = InnoDB DEFAULT CHARSET=utf8;", $this->db_link) or die(mysql_error());
        }
        if (!$found_users){
            mysql_query("CREATE TABLE $this->db_users_table(
            sc_ip CHAR(16) NOT NULL,
            sc_time INT UNSIGNED NOT NULL,
            sc_location VARCHAR(255) NOT NULL DEFAULT '',
            PRIMARY KEY(sc_ip)
            ) ENGINE = InnoDB DEFAULT CHARSET=utf8;", $this->db_link) or die(mysql_error());
        }
    }
    private function update_users(){
        $now = time();
        $day_start = $now - 86400;
        mysql_query("DELETE FROM $this->db_users_table WHERE sc_time < $day_start",
        $this->db_link) or die(mysql_error());
        $current_page = $this->current_page;
        $current_page = addslashes($current_page);
        $result = mysql_query("SELECT sc_time FROM $this->db_users_table WHERE sc_ip = '$this->ip_addr'", $this->db_link) or die(mysql_error());
        if (!mysql_num_rows($result)){
          mysql_query("INSERT INTO $this->db_users_table (sc_ip, sc_time, sc_location) VALUES ('$this->ip_addr', $now, '$current_page')", $this->db_link)
            or die(mysql_error());
          $this->inc_total = TRUE;
        }
        else{
            $last_time = mysql_result($result, 0, 0);
            $this->inc_total = (($now - $last_time) > $this->inc_interval);
            mysql_query("UPDATE $this->db_users_table SET sc_time = $now, sc_location = '$current_page' WHERE sc_ip = '$this->ip_addr'",
            $this->db_link) or die(mysql_error());
        }
    }
    private function inc_page_hits($is_total){
        $page = ($is_total ? 'total' : $this->current_page);
        $page = addslashes($page);
        $result = mysql_query("SELECT sc_count FROM $this->db_main_table WHERE sc_name = '$page'", $this->db_link) or die(mysql_error());
        if (!mysql_num_rows($result)){
            mysql_query("INSERT INTO $this->db_main_table(sc_name, sc_count) VALUES('$page', 1)", $this->db_link) or die(mysql_error());
        }
        else{
            $new_count = mysql_result($result, 0, 0) + 1;
            mysql_query("UPDATE $this->db_main_table SET sc_count = $new_count WHERE sc_name='$page'", $this->db_link) or die(mysql_error());
        }
    }
}

?>