<?php

class AgentLoginForm extends CFormModel {

    public $username;
    public $password;
    public $rememberMe;
    private $_identity;

    public function rules() {
        return array(
            array('username, password', 'required'),
            array('username', 'numerical'),
            array('username', 'length', 'max' => 8),
            array('password', 'length', 'max' => 45),
            array('rememberMe', 'boolean'),
            array('password', 'authenticate'),
        );
    }

    public function attributeLabels() {
        return array(
            'rememberMe' => 'Remember me next time',
        );
    }

    public function authenticate($attribute, $params) {
        if (!$this->hasErrors()) {
			$this->_identity = new AgentUserIdentity(trim($this->username), trim($this->password));
            if (!$this->_identity->authenticate())
                $this->addError('error', 'Username or password incorrect');
        }
    }

    public function login() {
        if ($this->_identity === null) {
            $this->_identity = new AgentUserIdentity($this->username, $this->password);
            $this->_identity->authenticate();
        }
        if ($this->_identity->errorCode === AgentUserIdentity::ERROR_NONE) {
            $duration = $this->rememberMe ? 3600 * 24 * 30 : 0; // 30 days
            Yii::app()->adminUser->login($this->_identity, $duration);
            return true;
        }
        else
            return false;
    }

}
