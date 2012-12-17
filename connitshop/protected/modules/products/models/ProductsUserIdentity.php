<?php

class ProductsUserIdentity extends CUserIdentity {
    private $_id;

    public function authenticate() {
        $user = ProductsUsers::model()->findByAttributes(array('user_email' => $this->username));

        if ($user === null) { // No user found!
            $this->errorCode = self::ERROR_USERNAME_INVALID;
        } else if ($user->user_pass !== md5(md5($this->password))) { // Invalid password!
            $this->errorCode = self::ERROR_PASSWORD_INVALID;
        } else { // Okay!
            $this->errorCode = self::ERROR_NONE;
            $this->_id = $user->user_email;
			// Store the role in a session:
            //$this->setState('user_role', $user->user_role);
        }
        return !$this->errorCode;
    }

    public function getId() {
        return $this->_id;
    }

}