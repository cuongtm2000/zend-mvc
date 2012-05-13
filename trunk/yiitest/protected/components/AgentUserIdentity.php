<?php

class AgentUserIdentity extends CUserIdentity {

    private $_id;

    public function authenticate() {
        $user = Agents::model()->findByAttributes(array('agent_id' => $this->username));

        if ($user === null) { // No user found!
            $this->errorCode = self::ERROR_USERNAME_INVALID;
        } else if ($user->password !== md5($this->password)) { // Invalid password!
            $this->errorCode = self::ERROR_PASSWORD_INVALID;
        } else if($user->enable != 1){
            $this->errorCode = 3; //none activated
        } else { // Okay!
            $this->errorCode = self::ERROR_NONE;
            // Store the role in a session:
            $this->setState('agentType', $user->type);
            //$this->setState('numLang', explode('|', $user->language));
            $this->_id = $user->agent_id;
        }
        return !$this->errorCode;
    }

    public function getId() {
        return $this->_id;
    }

}