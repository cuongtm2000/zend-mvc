<?php

class UserIdentity extends CUserIdentity {
    private $_id;

    public function authenticate() {
        $user = LandsUsers::model()->findByAttributes(array('username' => $this->username));

        if ($user === null) { // No user found!
            $this->errorCode = self::ERROR_USERNAME_INVALID;
        } else if ($user->password !== md5($this->password)) { // Invalid password!
            $this->errorCode = self::ERROR_PASSWORD_INVALID;
        } else { // Okay!
            $this->errorCode = self::ERROR_NONE;
            // Store the role in a session:
          //  $this->setState('role', $user->role);
            //$this->setState('numLang', explode('|', $user->language));
            $this->_id = $user->username;
        }
        return !$this->errorCode;
    }

    public function getId() {
        return $this->_id;
    }

}