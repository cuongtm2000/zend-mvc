<?php $this->beginContent('//layouts/main'); ?>
<div id="content">
    <div id="container_content_left">
        <div class="container_content_left">
            <?php if (isset($this->function['menu_products']) && ($this->function['menu_products'])): ?>
                <div class="bg-nav-left">	
                    <ul class="nav-left">
                        <?php Common::menuMultiLevel($this->function['menu_products'], 'ProductsCat', Yii::t('user', 'products.link')); ?>
                    </ul>
                </div>	
            <?php endif; ?>

            <?php if (isset($this->function['list_supports']) && ($this->function['list_supports'])): ?>
                <div class="frame-box">
                    <h2 class="title-box"><span><?php echo $this->lang['supports'] ?></span></h2>
                    <ul class="support">
                        <?php foreach ($this->function['list_supports'] as $value): ?>
                            <?php if ($value['support_type'] == 'yahoo'): ?>
                                <li>
                                    <?php if ($value['support_name' . Yii::app()->session['lang']]) echo '<p>' . $value['support_name' . Yii::app()->session['lang']] . '</p>'; ?>
                                    <?php if ($value['support_phone']) echo '<p>' . $value['support_phone'] . '</p>'; ?>
                                    <a href="ymsgr:sendIM?<?php echo $value['support_value'] ?>"><img src="http://mail.opi.yahoo.com/online?u=<?php echo $value['support_value'] ?>&amp;m=g&amp;t=2" border="0" alt="<?php echo $value['support_value'] ?>" /></a>
                                </li>
                            <?php else: ?>
                                <li>
                                    <?php if ($value['support_name' . Yii::app()->session['lang']]) echo '<p>' . $value['support_name' . Yii::app()->session['lang']] . '</p>'; ?>
                                    <?php if ($value['support_phone']) echo '<p>' . $value['support_phone'] . '</p>'; ?>
                                    <a href="skype:<?php echo $value['support_value'] ?>?call"><img src="http://mystatus.skype.com/bigclassic/<?php echo $value['support_value'] ?>" style="border: none;" width="130" alt="<?php echo $value['support_value'] ?>" /></a>
                                </li>
                            <?php endif; ?>
                        <?php endforeach; ?>
                    </ul>
                </div>	
            <?php endif; ?>

            <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/tk.png" alt="Công cụ tìm kiếm"/>	
            <div class="contents">
                <!--begin tab -->
                <div class="tab">
                    <div id="div1" class="divSearchAct" onclick="setActive(1);">
                        <a>BĐS bán </a>
                    </div>
                    <div class="tab-lines" id="tab-line_1" style="display: none;"></div>
                    <div id="div2" class="divSearchInAct" onclick="setActive(2);">
                        <a>BĐS cho thuê </a>
                    </div><div class="tab-lines" id="tab-line_2"> </div>
                    <div id="div3" class="divSearchInAct" onclick="setActive(3);">
                        <a>BĐS sang nhượng</a></div>
                    <div style="clear: both"> </div>
                </div>
                <!--end tab-->
                <div id="divOfSeach">
                    <!--begin combobox-->
                    <form action="<?php echo Yii::app()->baseUrl ?>/tim-kiem" method="post" id="frmSearchProduct" name="frmSearchProduct">
                        <div id="searchArea">
                            <input type="hidden" name="type_id" id="type_id" value="1" />

                            <div class="comboboxs" id="listCategoryRe">
                                <select  name="cat_id" class="select-box">
                                    <option value="">---Chọn Loại nhà đất---</option>
                                    <?php foreach ($this->function['menu_products'] as $value): ?>
                                        <option value="<?php echo $value['cat_id'] ?>"><?php echo $value['cat_title'] ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <div class="comboboxs" id="listCity">
                                <select  name="province_id" id="province_id" class="select-box">
                                    <option value="">---Chọn Tỉnh-Thành phố---</option>
                                    <?php foreach ($this->function['menu_province'] as $value): ?>
                                        <option value="<?php echo $value['province_id'] ?>"><?php echo $value['province_name'] ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>

                            <div class="comboboxs" id="district_id">
                                <select class="select-box" name="district_id">
                                    <option value="">---Chọn Quận/Huyện---</option>
                                </select>
                            </div>
                            <div class="comboboxs">
                                <select class="select-box" id="area" name="area">
                                    <option value="">---Chọn Diện tích---</option>
                                    <option value="">Không xác định</option>
                                    <option value="0_30">&lt;= 30 m2</option>
                                    <option value="30_50">30-50 m2</option>
                                    <option value="50_80">50-80 m2</option>
                                    <option value="80_100">80-100 m2</option>
                                    <option value="100_150">100-150 m2</option>
                                    <option value="150_200">150-200 m2</option>
                                    <option value="200_250">200-250 m2</option>
                                    <option value="250_300">250-300 m2</option>
                                    <option value="300_500">300-500 m2</option>
                                    <option value="500_1000">&gt;=500 m2</option>
                                </select>
                            </div>
                            <!--div class="comboboxs" id="unit">
                                <select class="select-box" id="price" name="price">
                                    <option value="">---Chọn mức giá---</option>
                                </select>
                            </div-->
                            <div class="comboboxs adv-search" >
                                <select class="select-box" id="room" name="room">
                                    <option value="">---Chọn số phòng---</option>
                                    <option value="">Không xác định</option>
                                    <option value="1">1+</option>
                                    <option value="2">2+</option>
                                    <option value="3">3+</option>
                                    <option value="4">4+</option>
                                    <option value="5">5+</option>
                                </select>
                            </div>
                            <div class="comboboxs adv-search" >
                                <select class="select-box" id="direction" name="direction">
                                    <option value="">Chọn hướng nhà</option>
                                    <option value="">Chưa xác định</option>
                                    <option value="Đông">Đông</option>
                                    <option value="Tây">Tây</option>
                                    <option value="Nam">Nam</option>
                                    <option value="Bắc">Bắc</option>
                                    <option value="Đông Bắc">Đông Bắc</option>
                                    <option value="Đông Nam">Đông Nam</option>
                                    <option value="Tây Bắc">Tây Bắc</option>
                                    <option value="Tây Nam">Tây Nam</option>
                                </select> 
                            </div>

                        </div>
                        <input class="bt-search" type="image" onclick="doSubmit();" src="<?php echo Yii::app()->theme->baseUrl; ?>/images/ts_button-search.jpg" />
                    </form>
                    <!--end combobox-->
                </div> <!-- End divOfSeach tab 1 2 -->


            </div> <!--End contents tab-->
            <div class="bd-bt-search"></div>	

        </div>	<!--End class container_content_left -->
    </div>  <!--End ID container_content_left -->	

    <div id="container_content_center">
        <div class="container_content_center">
            <?php echo $content; ?>
        </div> <!--End class container_content_center -->
    </div>  <!--End ID container_content_center-->	

    <div id="container_content_right">
        <div class="container_content_right">
            <?php if (isset($this->function['menu_news']) && ($this->function['menu_news'])): ?>
                <div class="frame-right">
                    <h2 class="title-right"><span><?php echo CHtml::encode($this->lang['news']) ?></span></h2>
                    <ul class="sub-consultant">
                        <?php Common::menuMultiLevel($this->function['menu_news'], 'NewsCat', Yii::t('user', 'news.link')); ?>
                    </ul>
                    <p class="all-view-new"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/icon-2.gif" alt="allview" /><a href="<?php echo Yii::app()->baseUrl ?>/tin-tuc-su-kien" title="" >Xem tất cả</a></p>
                </div>	<!--End sub news-->
            <?php endif; ?>

            <?php if (isset($this->function['menu_services']) && ($this->function['menu_services'])): ?>
                <div class="frame-right">
                    <h2 class="title-right"><span><?php echo $this->lang['services'] ?></span></h2>
                    <ul class="sub-consultant">
                        <?php foreach ($this->function['menu_services'] as $value): ?>
                            <li><a href="<?php echo Yii::app()->request->baseUrl . LANGURL ?>/<?php echo Yii::t('user', 'services.link') ?>/<?php echo $value['tag' . Yii::app()->session['lang']] ?>.html" title="<?php echo $value['title' . LANG] ?>"><?php echo $value['title' . LANG] ?></a></li>
                        <?php endforeach; ?>
                    </ul>
                </div> <!--End dich vu nha dat-->
            <?php endif; ?>

            <?php if (isset($this->function['advs_right']) && ($this->function['advs_right'])): ?>
                <ul class="adv-right">
                    <?php foreach ($this->function['advs_right'] as $value): ?>
                        <li>
                            <a href="<?php echo $value['url'] ?>" target="<?php echo $value['type'] ?>" title="<?php echo $value['title' . Yii::app()->session['lang']] ?>"><img src="<?php echo Yii::app()->baseUrl . USERFILES ?>/advs/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title' . Yii::app()->session['lang']] ?>" /></a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            <?php endif; ?>
        </div> <!--End class container_content_right-->	
    </div> <!--End ID container_content_right-->   <div class="clear"></div>
</div><!--End content-->

<script>
    function setActive(value){
        $('#div1').removeClass('divSearchAct').addClass('divSearchInAct');
        $('#div2').removeClass('divSearchAct').addClass('divSearchInAct');
        $('#div3').removeClass('divSearchAct').addClass('divSearchInAct');
        $('#div'+value).removeClass('divSearchInAct').addClass('divSearchAct');
        $('input[name="type_id"]').val(value);        
    }   
    $("#province_id").change(function(){
        $("#district_id").load("<?php echo Yii::app()->baseUrl ?>/products/default/listdistrict2/id/"+ $("#province_id").val());
                        
    });
</script>





<?php $this->endContent(); ?>