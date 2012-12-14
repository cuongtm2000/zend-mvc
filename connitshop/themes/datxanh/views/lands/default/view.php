<?php
Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/product.scroll.css');
Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/product.fancybox.css');
Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/product.jcarousellite_1.0.1.js');
Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/product.scroller.js');
Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/product.fancybox.js');
Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/product.scroll-1.4.2-min.js');
Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/product.serialScroll-1.2.2-min.js');
Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/product-config.js');
?>
<?php $this->pageTitle = $item->LandsLanguage[Yii::app()->language]['title']; $this->description = $item->LandsLanguage[Yii::app()->language]['description']?>

<h2 class="title-info-land"><span><?php echo $item->LandsLanguage[Yii::app()->language]['title'] ?></span></h2>

<div class="info-user-post">
	<div class="left">
		<p>Mã bản tin: <strong><?php echo $item['record_id']?></strong></p>
		<p>Tin đăng lúc: <strong><?php echo date('d/m/Y H:i:s', strtotime($item['postdate']))?></strong></p>
		<p>Tin được xem: <strong><?php echo $item['hits']?></strong></p>
	</div>
	<div class="right">	
		<p>Người đăng: <strong><?php echo $item['username']?></strong></p>
		<p>Email: <strong><?php echo $item->LandsUsers['email']?></strong></p>
	</div>	<div class="clear"></div>
</div>
<div class="main-land-info">
    <div class="row-info">
		<?php if ($item['pic_full']): ?>
        <div id="pb-right-column">
            <!-- product img-->
            <div id="image-block">
                <img id="bigpic" src="<?php echo Yii::app()->baseUrl . Yii::getPathOfAlias('filePathUpload') ?>/image/<?php echo $this->module->id ?>/<?php echo $item['pic_full'] ?>" title="<?php echo $item->LandsLanguage[Yii::app()->language]['title'] ?>" alt="<?php echo $item->LandsLanguage[Yii::app()->language]['title'] ?>" />
            </div>
            <!-- thumbnails -->
            <div id="views_block" class="prod_detail">
                <!--Slide show Jquery Lightbox-->
                <div class="big_thumb">
                    <!--Slide Prev-->
                    <span class="prevsmall"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/prev.gif" alt="" /></span>
                    <div class="thumbs anyClass" id="paginate-slider2">
                        <ul id="thumbs_list">
                            <li><a href="<?php echo Yii::app()->baseUrl . Yii::getPathOfAlias('filePathUpload') ?>/image/<?php echo $this->module->id ?>/<?php echo $item['pic_full'] ?>" rel="other-views" class="thickbox shown" title="<?php echo $item->LandsLanguage[Yii::app()->language]['title'] ?>" >
                                <img src="<?php echo Yii::app()->baseUrl . Yii::getPathOfAlias('filePathUpload') ?>/image/<?php echo $this->module->id ?>/<?php echo $item['pic_full'] ?>" alt="<?php echo $item->LandsLanguage[Yii::app()->language]['title'] ?>" /></a></li>
                            <?php if ($item['pic_desc']): ?>
                            <?php $values = explode('|', $item['pic_desc']);
                            $i = 1;
                            foreach ($values as $value): ?>
                                <li><a href="<?php echo Yii::app()->baseUrl . Yii::getPathOfAlias('filePathUpload') ?>/image/<?php echo $this->module->id ?>/<?php echo $value ?>" rel="other-views" class="thickbox" title="<?php echo $item->LandsLanguage[Yii::app()->language]['title'] ?>">
                                    <img src="<?php echo Yii::app()->baseUrl . Yii::getPathOfAlias('filePathUpload') ?>/image/<?php echo $this->module->id ?>/<?php echo $value ?>" alt="" /></a></li>
                                <?php $i++;
                            endforeach; ?>
                            <?php endif; ?>
                        </ul>
                    </div>
                    <span class="nextsmall"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/next.gif" alt="" /></span>
                    <!--Slide Next-->
                </div><!--END Slide show Jquery Lightbox-->
            </div>
        </div>
		 <?php endif; ?>
        <div>
            <?php echo $item->LandsLanguage[Yii::app()->language]['preview'] ?>
			
				<!--p class="price-info"><strong>Giá: <span><?php echo ($item) ? $item['price'] : 'Liên hê'?></span></strong></p-->
			
            <!--p class="view">Số lần xem: <span><?php echo $item['hits']?></span></p>
            <h3 class="title-contact"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/contact.jpg" alt="contact" />THÔNG TIN LIÊN HỆ</h3>
            <p class="contact-info">Tên: <?php echo $item['contact_name']?></p>
            <p class="contact-info">Điện thoại: <?php echo $item['contact_tel']?></p-->
        </div> <div class="clear"></div>
    </div>
   
    <h4 class="title-info">Mô tả chi tiết</h4>
    <div class="content-info"><?php echo $item->LandsLanguage[Yii::app()->language]['content'] ?></div>
	<div class="ico-view">
			<a href="http://www.facebook.com/sharer.php?u=datxanhhoancau.com.vn<?php echo $this->setUrlModule().'/'.$item->LandsCat->LandsCatLanguage[Yii::app()->language]['tag'].'/'.$item->LandsLanguage[Yii::app()->language]['tag'].'.html' ?>" target="_blank"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/facebook.png" alt="Chia sẻ qua Facebook" title="Chia sẻ qua Facebook">Facebook</a>
			<a href="http://twitter.com/home?status=datxanhhoancau.com.vn<?php echo $this->setUrlModule().'/'.$item->LandsCat->LandsCatLanguage[Yii::app()->language]['tag'].'/'.$item->LandsLanguage[Yii::app()->language]['tag'].'.html' ?>" target="_blank"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/tweet.png" alt="Chi sẻ qua Twitter" title="Chi sẻ qua Twitter">Twitter</a>
			<a href="http://www.google.com/bookmarks/mark?op=edit&amp;bkmk=datxanhhoancau.com.vn<?php echo $this->setUrlModule().'/'.$item->LandsCat->LandsCatLanguage[Yii::app()->language]['tag'].'/'.$item->LandsLanguage[Yii::app()->language]['tag'].'.html' ?>" target="_blank"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/google.png" alt="Chi sẻ qua Google Bookmarks" title="Chi sẻ qua Google Bookmarks">Google</a>
			<a href="JavaScript:window.print();" target="_self"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icon_prin.png" alt="In trang này" title="In trang này">Print</a>
			<a href="javascript:history.back();"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icon_undo.png" alt="Quay lại" title="Quay lại">Quay lại</a>
			<a href="javascript:scroll(0,0)"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icon_top.png" alt="Đầu trang" title="Đầu trang">Đầu trang</a>
		</div>
</div> <!--frame-pro-info-->

<?php if($other_items): ?>
<h4 class="title-item-other">Sàn giao dịch liên quan</h4>
<table class="table-transaction table-transaction-other">
     <?php foreach($other_items as $value):?>
    <tr>
        <td class="img-other">
            <?php echo CHtml::link(CHtml::image(($value['pic_thumb']) ? Yii::app()->baseUrl.Yii::getPathOfAlias('filePathUpload').'/image/lands/'.$value['pic_thumb'] : Yii::app()->theme->baseUrl.'/images/no-images.jpg', $value->LandsLanguage[Yii::app()->language]['title']), array($this->setUrlModule('lands').'/'.$value->LandsCat->LandsCatLanguage[Yii::app()->language]['tag'].'/'.$value->LandsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->LandsLanguage[Yii::app()->language]['title'])); ?>
        </td>
        <td class="link-post">
            <?php echo CHtml::link($value->LandsLanguage[Yii::app()->language]['title'], array($this->setUrlModule('lands').'/'.$value->LandsCat->LandsCatLanguage[Yii::app()->language]['tag'].'/'.$value->LandsLanguage[Yii::app()->language]['tag'].'.html'), array('title'=>$value->LandsLanguage[Yii::app()->language]['title'])); ?>
        </td>
        <td class="address"><?php echo $value->LandsProvinces['province_name']?></td>
        <td class="date-posted"><?php echo date('d/m/Y', strtotime($value['postdate']))?></td>
    </tr>
    <?php endforeach?>
</table>
<?php endif?>
<script type="text/javascript">
    $(document).ready(function(){
        $(".table-transaction-other li:odd").addClass("alt");
    });
</script>



