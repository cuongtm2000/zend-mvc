<?php

class GetTag extends CActiveRecord {

    public static function tag($tag, $id = 0, $table) {
        $row_id = 'record_id';
        $command = Yii::app()->db->createCommand('SELECT ' . $row_id . ', tag FROM ' . $table . ' WHERE tag=:tag');

        $command->bindParam(":tag", $tag, PDO::PARAM_STR);
        $row = $command->queryRow();

        if ($row) {
            if ($id != 0) {
                if ($id == $row[$row_id]) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

}