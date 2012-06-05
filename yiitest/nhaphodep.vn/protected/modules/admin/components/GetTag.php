<?php

class GetTag extends CActiveRecord{
    public static function tag($tag, $id = 0, $table, $type = 'id', $query = '1', $parent_table = ''){
        $user = Yii::app()->user->id;
        $row_id = ($type == 'cid') ? 'cat_id' : 'record_id';
        $command = ($query==2) ? Yii::app()->db->createCommand('SELECT ' . $row_id . ', '.$table.'.tag FROM ' . $table . ', '.$parent_table.' WHERE '.$table.'.dos_module_item_cat_cat_id = '.$parent_table.'.cat_id AND '.$table.'.tag=:tag AND dos_usernames_username=:user') : Yii::app()->db->createCommand('SELECT ' . $row_id . ', tag FROM ' . $table . ' WHERE tag=:tag AND dos_usernames_username=:user');

        $command->bindParam(":tag", $tag, PDO::PARAM_STR);
        $command->bindParam(":user", $user, PDO::PARAM_STR);
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