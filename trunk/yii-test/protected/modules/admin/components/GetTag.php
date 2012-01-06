<?php 
class GetTag extends CActiveRecord{
    public static function tag($tag, $id=0, $table){
        $subdomain = Yii::app()->session['subdomain'];
        $command = Yii::app()->db->createCommand('SELECT record_id, tag FROM '.$table.' WHERE tag=:tag AND dos_usernames_username=:user');
        $command->bindParam(":tag", $tag, PDO::PARAM_STR);
        $command->bindParam(":user", $subdomain, PDO::PARAM_STR);
        $row = $command->queryRow();
		if($row){
            if($id!=0){
                if($id==$row['record_id']){
                    return $tag;
                }
            }
            return $row['tag'].'-2';
		}
        return $tag;
    }
}