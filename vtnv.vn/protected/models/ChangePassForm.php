<?php
class ChangePassForm extends CFormModel {
	public $pass;
	public $newpass;
	public $newpass2;

	public function rules() {
		return array(
			array('pass,newpass,newpass2', 'required'),
			array('receiver', 'length', 'max' => 45),

			array('pass', 'checkPass'),
			array('money', 'checkMoney'),
			array('message', 'required'),
		);
	}

	public function attributeLabels() {
		return array(
			'pass' => 'Mật khẩu hiện tại',
			'receiver' => 'Người nhận',
			'money' => 'Số tiền (V)',
			'message' => 'Lý do chuyển'
		);
	}

	public function checkExist($attribute) {
		if (!User::model()->findByPk($this->receiver)) {
			$this->addError($attribute, 'Người nhận <strong>' . $this->receiver . '</strong>  không tồn tại');
		}
	}

	public function checkPass($attribute) {
		$u = User::model()->findByPk(Yii::app()->user->name);
		if (md5($this->pass) != $u['password']) {
			$this->addError($attribute, 'Mật khẩu nhập không đúng');
		}
	}

	public function checkMoney($attribute) {
		$u = User::model()->findByPk(Yii::app()->user->name);
		if ($u['balance'] < $this->money) {
			$this->addError($attribute, 'Không thể chuyển số tiền lớn hơn số hiện có ');
		}
		if ($this->money < 1) {
			$this->addError($attribute, 'Không thể chuyển số tiền âm hoặc bằng 0');
		}
	}

	public function transfer() {
		$money = trim($this->money);

		$user = User::model()->findByPk(Yii::app()->user->name);
		User::model()->updateByPk(Yii::app()->user->name,
			array('balance' => $user['balance'] - $money));
		Yii::app()->session['balance'] = $user['balance'] - $money;

		$user = User::model()->findByPk($this->receiver);
		User::model()->updateByPk($this->receiver,
			array('balance' => $user['balance'] + $money));

		$log = new Log();
		$log->addItem("Chuyển khoản nội bộ: " . $this->message, Yii::app()->user->name, $this->receiver, $money, 'chuyenkhoan');
	}

}