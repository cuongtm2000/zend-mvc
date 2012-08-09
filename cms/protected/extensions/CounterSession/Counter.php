<?php

Yii::import('application.extensions.CounterSession.CounterSession');
Yii::import('application.extensions.CounterSession.CounterValue');

class Counter extends CWidget {

    private $_PERIOD_ONLINE_TIME = 300; //giây
    private $session;
    private $value;

    public function init() {
        parent::init();

        $this->session = new CounterSession();
        $this->value = new CounterValue();
    }

    public function publishAssets() {
        $this->refresh();
        return array(
            'online' => $this->getOnline(),
            'today' => $this->value->getSaveValue('today_visited'),
            'yesterday' => $this->value->getSaveValue('yesterday_visited'),
            'total' => $this->value->getSaveValue('total_visited'),
            'maximum' => $this->value->getSaveValue('max_visit_value'),
            'dateMaximum' => date('d.m.Y', $this->value->getSaveValue('max_visit_day'))
        );
    }

    public function getOnline() {
        return $this->session->count('session_time > ' . (time() - $this->_PERIOD_ONLINE_TIME));
    }

    public function getTimeStampToday() {
        return $this->value->getSaveValue('time_start_today');
    }

    private function refresh() {
        $isUpdate = FALSE;
        $id = '';
        //Nếu chuyển qua ngày mới (>84600s) reset lại bộ đếm theo ngày
        $day_start = $this->getTimeStampToday();
        if (time() - $day_start > 24 * 60 * 60) {
            $this->value->resetNewDay();
        }
        //--------Kiem tra ton tai session
        if (Yii::app()->session['counter_hoiit'] == '') {//khong co thi tao moi, gan session
            $id = $this->rand_id();
            Yii::app()->session['counter_hoiit'] = $id;
            $isUpdate = TRUE;
        } else {
            $id = Yii::app()->session['counter_hoiit'];

            if (!$this->session->isExistID($id)) {
                $isUpdate = TRUE;
            } else {
                $this->session->updateTimeFromId($id);
            }
        }
        //tien hanh cap nhat
        if ($isUpdate) {
            $this->session->add($id);
            $this->value->updateNewVisit();
        }

        $this->session->clean(); //xóa các session có thời gian trên 30p
    }

    private function rand_id() {
        $str = str_shuffle('abcdefghijklmnopqrstuvwxyz1234567890');
        return substr($str, 0, 9);
    }

}