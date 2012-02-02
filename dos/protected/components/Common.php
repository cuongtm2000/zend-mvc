<?php
class Common{
    public static function menuMultiLevel($data, $models, $link){
        $rowsize = count($data);
        $model = new $models();
        $row = $model->findCatByTag(Yii::app()->request->getQuery('cname')); //find cat_id
    	$cat_id = $row['cat_id'];
    	
    	//Find parent_id
    	$parent_id	= $cat_id;
    	if ($cat_id){
            foreach($data as $value){
                if ($cat_id == $value['cat_id']){
                    if ( $value['cat_parent_id'] ){
    					$parent_id = $value['cat_parent_id'];
    				}
    				break;
                }
            }
    	}
        
        //Display cat menu
		for ($i=0; $i < $rowsize; $i++){
			if ( $data[$i]['cat_parent_id'] == 0 ){
				//Parent categories
				echo '<li><a href="'.Yii::app()->request->baseUrl.LANGURL.'/'.$link.'/'.$data[$i]['tag'].'" title="'.$data[$i]['cat_title'.LANG].'">'.$data[$i]['cat_title'.LANG].'</a>';
				//Sub categories
				if ( $parent_id && ($parent_id == $data[$i]['cat_id']) ){
					for ($j=0; $j < $rowsize; $j++){
						if ( $data[$j]['cat_parent_id'] == $data[$i]['cat_id'] ){
							echo '<ul>';
								for ($j=0; $j < $rowsize; $j++){
									if ( $data[$j]['cat_parent_id'] == $data[$i]['cat_id'] ){
										echo '<li><a href="'.Yii::app()->request->baseUrl.LANGURL.'/'.$link.'/'.$data[$j]['tag'].'" title="'.$data[$j]['cat_title'.LANG].'">'.$data[$j]['cat_title'.LANG].'</a></li>';
									}
								}
							echo '</ul>';
						}
					}
				}
				echo '</li>';
			}
		}
    }
}