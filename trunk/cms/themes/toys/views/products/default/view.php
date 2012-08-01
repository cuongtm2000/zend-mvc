<p><?php echo $item->ProductsLanguage[Yii::app()->language]['title']?></p>
<p><?php echo $item->ProductsLanguage[Yii::app()->language]['content']?></p>
<p><?php echo $item['unit']?></p>
<p><?php echo $item->ProductsLanguage[Yii::app()->language]['description']?></p>
<p><?php echo $item['pic_full']?></p>
<p><?php echo $item['pic_desc']?></p>

<p>Cac san pham khac</p>
 <?php foreach($other_items as $value):?>
    <p><?php echo $value->ProductsLanguage[Yii::app()->language]['title']?></p>
    <p><?php echo $value['pic_thumb']?></p>
 <?php endforeach?>
