<?php

class GetTag extends CActiveRecord {

    public static function tag($link, $id) {
        if ($id) {
            $command = Yii::app()->db->createCommand('SELECT post_link FROM hoiit_posts WHERE post_id=:id AND post_link=:link');
            $command->bindParam(":link", $link, PDO::PARAM_STR);
            $command->bindParam(":id", $id, PDO::PARAM_INT);
            $row = $command->queryRow();
            if ($row) {
                return false;
            } else {
                $command = Yii::app()->db->createCommand('SELECT post_link FROM hoiit_posts WHERE post_link=:link');
                $command->bindParam(":link", $link, PDO::PARAM_STR);
                $row = $command->queryRow();

                if ($row) {
                    return true;
                }
            }
        } else {
            $command = Yii::app()->db->createCommand('SELECT post_link FROM hoiit_posts WHERE post_link=:link');
            $command->bindParam(":link", $link, PDO::PARAM_STR);
            $row = $command->queryRow();

            if ($row) {
                return true;
            }
        }
        return false;
    }

}