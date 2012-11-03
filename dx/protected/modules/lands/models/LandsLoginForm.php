<?php

class LandsLoginForm extends CFormModel {

    public $username;
    public $password;
    public $rememberMe;
    private $_identity;

    public function rules() {
        return array(
            array('username, password', 'required'),
            array('username', 'match', 'pattern' => '/^([a-z0-9_-])+$/'),
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
            $this->_identity = new LandsUserIdentity($this->username, $this->password);
            if (!$this->_identity->authenticate())
                $this->addError('error', 'Username or password incorrect');
        }
    }

    public function login() {
        if ($this->_identity === null) {
            $this->_identity = new LandsUserIdentity($this->username, $this->password);
            $this->_identity->authenticate();
        }
        if ($this->_identity->errorCode === LandsUserIdentity::ERROR_NONE) {
            $duration = $this->rememberMe ? 3600 * 24 * 30 : 0; // 30 days
            Yii::app()->memberLands->login($this->_identity, $duration);
            return true;
        }
        else
            return false;
    }

}
