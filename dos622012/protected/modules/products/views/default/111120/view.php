<?php $this->breadcrumbs=array($this->lang[$this->module->id]=>LANGURL.'/'.$this->module->id, $item['title'.LANG]=>$item['tag']);?>
<h1 class="title-h2-right">Product Info</h1>
<div id="all-product">
	<div class="prod_detail">
            <!--Slide show Jquery Lightbox-->
            <div class="big_thumb">
                <div id="slider2">
                    <?php $str = explode('|', $item['pic_desc']); foreach($str as $value): ?>                            
                    <div class="contentdiv">
                        <img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value ?>" alt="<?php echo $item['title'.LANG] ?>" />
                        <a rel="example_group" href="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value ?>" title="<?php echo $item['title'.LANG] ?>" class="zoom">&nbsp;</a>
                  	</div>
                    <?php endforeach; ?>
                </div>
                
                <?php if($item['pic_desc']): ?>
                    <!--Slide Prev-->
                    <span class="prevsmall"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/prev.gif" alt="" /></span>
                    <div class="frame-detail">
                        <div class="anyClass" id="paginate-slider2">
                            <ul>
                                <?php $str = explode('|', $item['pic_desc']); foreach($str as $value): ?>
                                <li><a href="#" class="toc"><img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/products/<?php echo $value ?>" alt="" /></a></li>
                                <?php endforeach;?>
                            </ul>
                        </div>
                    </div>
                    <span class="nextsmall"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/next.gif" alt="" /></span>
                    <!--Slide Next-->
                    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/cont_slidr.js"></script>
                <?php endif; ?>
            </div><!--END Slide show Jquery Lightbox-->
    </div>
        <div class="right-detail">
            <ul class="right-detail-info">
                <li>
                    <h3 class="title-info"><a href="#" title="<?php echo $item['title'.LANG] ?>"><?php echo $item['title'.LANG] ?></a></h3>
                    <p><span>Price:</span> <b><?php echo $item['unit'] ?> </b></p>
                </li>
                <li>
                    <h3 class="title-info">Quick Overview</h3>
                    <?php echo $item['detail'.LANG] ?> 
                </li>
                <li style="border:none">
                     <p><a href="#"  title="" class="detail">Details</a> <a href="#"  title="" class="add">Add to cart</a> </p>
                </li>
            </ul>
        </div>
</div><!--End All product-->