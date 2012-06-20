<?php if (!$listItemsCat): ?>
    <div class="errorSummary">
        <ul>
            <li>Vui lòng <a href="addcat" title="thêm mới Danh mục">thêm mới danh mục</a> trước khi thêm mới sản phẩm</li>
        </ul>
    </div>
<?php else: ?>
    <?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true, 'htmlOptions' => array('enctype' => 'multipart/form-data'))); ?>
    <?php echo $form->errorSummary($model, ''); ?>
    <fieldset>
        <legend><?php echo $this->lang['add_new'] ?> <?php echo strtolower($this->lang[$this->ID]) ?></legend>

        <div class="col1"><?php echo $form->labelEx($model, 'dos_module_item_type_type_id') ?></div>
        <div class="col2">
            <?php echo $form->dropDownList($model, 'dos_module_item_type_type_id', CHtml::listData($listItemsType, 'type_id', 'type_title')); ?>
        </div>

        <div class="col1"><?php echo $form->labelEx($model, 'dos_module_item_cat_cat_id') ?></div>
        <div class="col2">
            <?php echo $form->dropDownList($model, 'dos_module_item_cat_cat_id', CHtml::listData($listItemsCat, 'cat_id', 'cat_title_prefix')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'dos_provinces_province_id') ?></div>
        <div class="col2">
            <?php echo $form->dropDownList(
                    $model, 
                    'dos_provinces_province_id', 
                    CHtml::listData($listProvices, 'province_id', 'province_name')); 
            ?>
        </div>

        
         <script type="text/javascript">
        $("#Products_dos_provinces_province_id").change(function(){
             $("#dos_districts_district_id").load("<?php echo Yii::app()->baseUrl?>/admin/products/listdistrict/id/"+ $("#Products_dos_provinces_province_id").val());
        });
    </script>

        
        <div class="col1"><?php echo $form->labelEx($model, 'dos_districts_district_id') ?></div>
        <div class="col2" id="dos_districts_district_id">
            <select></select>
        </div><div class="clear space"></div>
        
        <div class="col1">Giá</div>
        <div class="col2">
           <input type="text" name="price" value="" size="20" onKeyUp="this.value = FormatNumber(this.value);" onfocusout="ConvertPriceText(this.value)" onBlur="ConvertPriceText(this.value)">
            <select style="width: 50pt" name="currency">
                <option value="VND">VND</option>
                <option value="USD">USD</option>
                <option value="SJC">SJC</option>
            </select>/
            <select  style="width: 85pt" name="ddlAreaUnit">
		<option selected="selected" value="md">Tổng diện tích</option>
                <option value="m2">m2</option>
                <option value="thang">Tháng</option>
            </select>
        </div>

        
        <?php foreach (Yii::app()->user->numLang as $lang): $lang = ($lang == 'vi') ? '' : $lang; ?>
            <div class="col1"><?php echo $form->labelEx($model, 'title' . $lang) ?></div>
            <div class="col2">
                <?php echo $form->textField($model, 'title' . $lang, $htmlOptions = array('class' => 'txt-very-large')); ?>
            </div>
            <div class="clear space"></div>
        <?php endforeach; ?>

            
        <div class="col1"><?php echo $form->labelEx($model, 'address') ?></div>
        <div class="col2">
           <?php echo $form->textField($model, 'address', $htmlOptions = array('class' => 'txt-very-large')); ?>
        </div> <div class="clear space"></div>
        
            
            
            
        <?php foreach (Yii::app()->user->numLang as $lang): $lang = ($lang == 'vi') ? '' : $lang; ?>
            <div class="col1"><?php echo $form->labelEx($model, 'content' . $lang) ?></div>
            <div class="col2">
                <?php echo $form->textArea($model, 'content' . $lang, $htmlOptions = array('cols' => 20, 'rows' => 10)); ?>
                <script type="text/javascript">
                    tinyMCE.init({
                        file_browser_callback: 'openKCFinder',
                        mode:"exact",
                        elements : "<?php echo ucfirst($this->ID) ?>_content<?php echo $lang ?>",
                        theme:"advanced",
                        language : "vi",
                        //skin : "o2k7",
                        //skin_variant : "silver",
                        plugins : "paste, autolink,lists,style,layer,table,save,advhr,advimage,advlink,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template",

                        theme_advanced_buttons1 : "bold,italic,underline,strikethrough,formatselect,fontsizeselect,|,justifyleft,justifycenter,justifyright,justifyfull,pastetext,pasteword,|,link,unlink,|,image,media,|,fullscreen",
                        theme_advanced_buttons2 : "forecolor,backcolor,bullist,numlist,underline,justifyfull,outdent,indent,sub,sup,tablecontrols,visualaid,charmap,removeformat",
                        theme_advanced_buttons3: "",

                        relative_urls : false,

                        accessibility_warnings : false,
                        //accessibility_focus : false,

                        paste_text_use_dialog : true,
                        paste_auto_cleanup_on_paste : true,
                        paste_remove_styles: true,
                        paste_remove_styles_if_webkit: true,
                        paste_strip_class_attributes: true,

                        paste_text_sticky : true,
                        setup : function(ed) {ed.onInit.add(function(ed) {ed.pasteAsPlainText = true;});},

                        theme_advanced_toolbar_location : "top",
                        theme_advanced_toolbar_align : "left",
                        //theme_advanced_statusbar_location : "bottom",
                        theme_advanced_resizing : true,
                        width : "100%",
                        height: "300"
                    });
                </script>
            </div>
            <div class="clear space"></div>
        <?php endforeach; ?>

            
        <div class="col1">Thông tin tiện ích</div>
        <div class="col2">
            <?php /*echo $form->checkBoxList(
                    $model_u, 
                    'product_id', 
                    $listItemsU,
                    $htmlOptions=array('style' => "width:150px; float:left;")
                 ); */              
            ?>
            <label for="utility[telephone]" style="width:150px; float:left;"><input type="checkbox" name="utility[telephone]" value="1" >Điện thoại</label>
            <label for="utility[power_meter]" style="width:150px; float:left;"><input type="checkbox" name="utility[power_meter]" value="1" >Đồng hồ điện</label>
            <label for="utility[heater]" style="width:150px; float:left;"><input type="checkbox" name="utility[heater]" value="1" >Máy nước nóng</label>
            <label for="utility[gara]" style="width:150px; float:left;"><input type="checkbox" name="utility[gara]" value="1" >Ga-ra</label>
            <label for="utility[cable_tv]" style="width:150px; float:left;"><input type="checkbox" name="utility[cable_tv]" value="1" >Truyền hình cáp</label>
            <label for="utility[water_meter]" style="width:150px; float:left;"><input type="checkbox" name="utility[water_meter]" value="1" >Đồng hồ nước</label>
            <label for="utility[alarm_system]" style="width:150px; float:left;"><input type="checkbox" name="utility[alarm_system]" value="1" >Hệ thống báo động</label>
            <label for="utility[garden]" style="width:150px; float:left;"><input type="checkbox" name="utility[garden]" value="1" >Sân vườn</label>
            <label for="utility[internet]" style="width:150px; float:left;"><input type="checkbox" name="utility[internet]" value="1" >Internet</label>
            <label for="utility[air_conditioner]" style="width:150px; float:left;"><input type="checkbox" name="utility[air_conditioner]" value="1" >Máy lạnh</label>
            <label for="utility[parking]" style="width:150px; float:left;"><input type="checkbox" name="utility[parking]" value="1" >Chỗ đậu xe</label>
            <label for="utility[pool]" style="width:150px; float:left;"><input type="checkbox" name="utility[pool]" value="1" >Hồ bơi</label>
            <label for="utility[furniture]" style="width:150px; float:left;"><input type="checkbox" name="utility[furniture]" value="1" >Nội thất</label>
        </div>
        <div class="clear space"></div>    
            
            
            
        <div class="col1"><?php echo $form->labelEx($model, 'unit') ?></div>
        <div class="col2">
            <?php echo $form->textField($model, 'unit', $htmlOptions = array('class' => 'txt-very-large')); ?>
        </div>
        <div class="clear space"></div>

        <?php foreach (Yii::app()->user->numLang as $lang): $lang = ($lang == 'vi') ? '' : $lang; ?>
            <div class="col1"><?php echo $form->labelEx($model, 'tag' . $lang) ?></div>
            <div class="col2">
                <?php echo $form->textField($model, 'tag' . $lang, $htmlOptions = array('class' => 'txt-very-large')); ?>
            </div>
            <div class="clear space"></div>
        <?php endforeach; ?>

        <?php foreach (Yii::app()->user->numLang as $lang): $lang = ($lang == 'vi') ? '' : $lang; ?>
            <div class="col1"><?php echo $form->labelEx($model, 'description' . $lang) ?></div>
            <div class="col2">
                <?php echo $form->textArea($model, 'description' . $lang, $htmlOptions = array('cols' => 89, 'rows' => 5)); ?> <span class="info-keyup<?php echo $lang ?>">0</span>
            </div>
            <div class="clear space"></div>
            <script type="text/javascript">
                jQuery(function($) {
                    $('#<?php echo ucfirst($this->ID) ?>_description<?php echo $lang ?>').keyup(function(){var max=250;var valLen=$(this).val().length;$('.info-keyup<?php echo $lang ?>').text( valLen+'/'+max); var val = $(this).val(); if (val.length > 250){ $(this).val(val.slice(0, 250));}});
                });
            </script>
        <?php endforeach; ?>

        <div class="col1"><?php echo $form->labelEx($model, 'pic_thumb') ?></div>
        <div class="col2">
            <?php echo $form->fileField($model, 'pic_thumb', array('class' => 'fileupload')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'pic_full') ?></div>
        <div class="col2">
            <?php echo $form->fileField($model, 'pic_full', array('class' => 'fileupload')); ?>
        </div> <div class="clear space"></div>

        
         <div class="col1">Thông tin liên hệ</div>
         <div class="col2">&Implies;        </div> <div class="clear space"></div>
         <div class="col1"><?php echo $form->labelEx($model, 'contact_name') ?></div>
        <div class="col2">
           <?php echo $form->textField($model, 'contact_name', $htmlOptions = array('class' => 'txt-very-large')); ?>
        </div> <div class="clear space"></div>
         <div class="col1"><?php echo $form->labelEx($model, 'contact_add') ?></div>
        <div class="col2">
           <?php echo $form->textField($model, 'contact_add', $htmlOptions = array('class' => 'txt-very-large')); ?>
        </div> <div class="clear space"></div>
         <div class="col1"><?php echo $form->labelEx($model, 'contact_mobile') ?></div>
        <div class="col2">
           <?php echo $form->textField($model, 'contact_mobile', $htmlOptions = array('class' => 'txt-very-large')); ?>
        </div> <div class="clear space"></div>
         <div class="col1"><?php echo $form->labelEx($model, 'contact_tel') ?></div>
        <div class="col2">
           <?php echo $form->textField($model, 'contact_tel', $htmlOptions = array('class' => 'txt-very-large')); ?>
        </div> <div class="clear space"></div>
        
        <p class="rows"><a href="#" id="add-rows"><?php echo $this->lang['pic_desc'] ?></a></p>

        <div class="col1"><?php echo $form->labelEx($model, 'hot', $htmlOptions = array('for' => ucfirst($this->ID) . '_hot_0')) ?></div>
        <div class="col2 radio">
            <?php echo $form->radioButtonList($model, 'hot', array('0' => $this->lang['normal'], '1' => $this->lang['hot']), array('separator' => '&nbsp;&nbsp;')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'enable', $htmlOptions = array('for' => ucfirst($this->ID) . '_enable_0')) ?></div>
        <div class="col2 radio">
            <?php echo $form->radioButtonList($model, 'enable', array('1' => $this->lang['show'], '0' => $this->lang['hidden']), array('separator' => '&nbsp;&nbsp;')); ?>
        </div>
        <div class="clear space"></div>

        <div class="col1">&nbsp;</div>
        <div class="col2">
            <?php echo CHtml::submitButton($this->lang['add_new'], array('name' => 'submit', 'class' => 'login', 'title' => $this->lang['add_new'])); ?>
            <?php echo Chtml::link($this->lang['cancel'], 'javascript:history.back()', $htmlOptions = array('class' => 'login-a', 'title' => $this->lang['cancel'])) ?>
        </div>
        <div class="clear space"></div>
    </fieldset>
    <?php $this->endWidget(); ?>
    <?php foreach (Yii::app()->user->numLang as $lang): $lang = ($lang == 'vi') ? '' : $lang; ?>
        <?php $this->widget('ext.seoAlias.seoAlias', array('model' => $model, 'source' => 'title' . $lang, 'target' => 'tag' . $lang)); ?>
    <?php endforeach ?>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#add-rows").click(function(){
                $(".rows").before('<div class="col1"><?php echo $this->lang['pic_desc'] ?></div><div class="col2"><input type="file" name="<?php echo ucfirst($this->ID) ?>[pic_desc][]" size="40%" /></div><div class="clear space"></div>');
                return false;
            });
        });
    </script>
<?php endif; ?>