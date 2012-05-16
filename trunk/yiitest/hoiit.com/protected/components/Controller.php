<?php

/**
 * Controller is the customized base controller class.
 * All controller classes for this application should extend from this base class.
 */
class Controller extends CController {

    /**
     * @var string the default layout for the controller view. Defaults to '//layouts/column1',
     * meaning using a single column layout. See 'protected/views/layouts/column1.php'.
     */
    public $layout = '//layouts/column1';

    /**
     * @var array context menu items. This property will be assigned to {@link CMenu::items}.
     */
    public $menu = array();

    /**
     * @var array the breadcrumbs of the current page. The value of this property will
     * be assigned to {@link CBreadcrumbs::links}. Please refer to {@link CBreadcrumbs::links}
     * for more details on how to specify this property.
     */
    public $breadcrumbs = array();
    public $keywords;
    public $description;
	public $listTopPostUsers = array();

	public function init(){
        $ip = '42.119.214.149'; //IP in VietNam
        if(IpCountries::model()->checkIP($ip)){
            //true
            echo 'ok, nam trong range so sanh';
        }else{
            echo 'ko co, hien ngon ngu Mac dinh';
        }

		$username_class = new Usernames();
		$this->listTopPostUsers = $username_class->listTopPostUsers();
	}
}