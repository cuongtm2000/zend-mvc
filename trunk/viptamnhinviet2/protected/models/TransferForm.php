<?php
class TransferForm extends CFormModel {

    	public $pass;
	public $receiver;
	public $money;
        
    public function rules() {
        return array(
            array('pass,receiver,money', 'required'),
            array('money', 'numerical', 'integerOnly' => true),
            array('receiver', 'length', 'max' => 45),
            array('receiver', 'checkExist'),
            array('pass', 'checkPass'),
            array('money', 'checkMoney'),
     );
    }

    public function attributeLabels() {
        return array(
            'pass' => 'Mật khẩu hiện tại',
            'receiver' => 'Người nhận',
            'money' => 'Số tiền (V)',
        );
    }

    public function checkExist($attribute) {
        if (!User::model()->findByPk($this->receiver)) {
            $this->addError($attribute, '<strong>' . $this->receiver . '</strong>  không tồn tại');
        } 
    }
    public function checkPass($attribute) {
        $u= User::model()->findByPk(Yii::app()->user->name); 
        if(md5($this->pass)!=$u['password']){
            $this->addError($attribute, 'Mật khẩu nhập không đúng');
        } 
    }      
    public function checkMoney($attribute) {
        $u= User::model()->findByPk(Yii::app()->user->name); 
        if($u['balance']< $this->money){
            $this->addError($attribute, 'Chuyển khoản bằng niềm tin ah');
        } 
    }   

}