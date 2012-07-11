<?php

Yii::import('application.extensions.Counter.UserCounter');
class Counter extends CWidget {

    public function publishAssets() {
        $user_class = new UserCounter();
        $user_class->refresh();
        return array('online' => $user_class->getOnline(), 'today' => $user_class->getToday(), 'yesterday' => $user_class->getYesterday(), 'maximum' => $user_class->getMaximal(), 'dateMaximum' => date('d.m.Y', $user_class->getMaximalTime()));

    }
}