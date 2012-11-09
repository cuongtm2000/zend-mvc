<?php

class LandsUserIdentity extends CUserIdentity {
    private $_id;

    public function authenticate() {
        $user = LandsUsers::model()->findByAttributes(array('username' => $this->username));

        if ($user === null) { // No user found!
            $this->errorCode = self::ERROR_USERNAME_INVALID;
        } else if ($user->password !== md5(md5($this->password))) { // Invalid password!
            $this->errorCode = self::ERROR_PASSWORD_INVALID;
        } else { // Okay!
            $this->errorCode = self::ERROR_NONE;
            $this->_id = $user->username;
			// Store the role in a session:
            $this->setState('user_role', $user->user_role);
        }
        return !$this->errorCode;
    }

    public function getId() {
        return $this->_id;
    }

}