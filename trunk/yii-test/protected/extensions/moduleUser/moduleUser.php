<?php
class moduleUser extends CWidget{
	public $module_user;
	public function init(){
		$muser = new ModuleUsername();
		$this->module_user = $muser->moduleUser(Yii::app()->user->name);
	}
}