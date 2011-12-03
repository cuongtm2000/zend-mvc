<?php

class DefaultController extends Controller
{
    public $param = 'value';
	public function actionIndex()
	{
        //echo $_GET['language'];
        $data['menu_about'] = '123'; 
		$this->render('index', $data);
	}
    protected function afterAction($action)
    {
      $time = sprintf('%0.5f', Yii::getLogger()->getExecutionTime());
      $memory = round(memory_get_peak_usage()/(1024*1024),2)."MB";
      echo "Time: $time, memory: $memory";
      parent::afterAction($action);
    }
}