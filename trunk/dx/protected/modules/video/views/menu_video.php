<h4 class="title-left"><span><?php echo $this->lang['video']?></span></h4>
<?php echo ProductsCat::model()->makeMenu($menu_products, Yii::app()->request->getQuery('cid'), '<ul class="sub-cat frame-leftcontent">', '</ul>');?>