<?php if (!$listItemsCat): ?>
    <div class="errorSummary">
        <ul>
            <li>Vui lòng <a href="addcat" title="thêm mới Danh mục">thêm mới danh mục</a> trước khi thêm mới sản phẩm</li>
        </ul>
    </div>
<?php else: ?>
    <?php
    $form = $this->beginWidget('CActiveForm', array(
        'id' => 'frm',
        'enableAjaxValidation' => true,
        'enableClientValidation' => true,
        'htmlOptions' => array('enctype' => 'multipart/form-data')));
    echo $form->errorSummary($model, '');
    echo $form->errorSummary($model_f, '');
    ?>
    <fieldset>
        <legend>Đăng tin mới</legend>

        <div class="col1"><?php echo $form->labelEx($model, 'dos_module_item_type_type_id') ?></div>
        <div class="col2">
            <?php echo $form->dropDownList($model, 'dos_module_item_type_type_id', CHtml::listData($listItemsType, 'type_id', 'type_title')); ?>
        </div>

        <div class="col1"><?php echo $form->labelEx($model, 'dos_module_item_cat_cat_id') ?></div>
        <div class="col2">
            <?php echo $form->dropDownList($model, 'dos_module_item_cat_cat_id', CHtml::listData($listItemsCat, 'cat_id', 'cat_title_prefix')); ?>
        </div> <div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'dos_provinces_province_id') ?></div>
        <div class="col2">
            <?php
            echo $form->dropDownList($model, 'dos_provinces_province_id', CHtml::listData($listProvices, 'province_id', 'province_name'), array('prompt' => 'Chọn tỉnh/thành'));
            ?>
        </div>

        <script type="text/javascript">
            $(document).ready(function () {
                $("#dos_districts_district_id").load("<?php echo Yii::app()->baseUrl ?>/admin/products/listdistrict/id/"+ $("#Products_dos_provinces_province_id").val()<?php echo $model['dos_districts_district_id'] ? '+"/idd/' . $model['dos_districts_district_id'] . '"' : "" ?>);
            });
            $("#Products_dos_provinces_province_id").change(function(){
                $("#dos_districts_district_id").load("<?php echo Yii::app()->baseUrl ?>/admin/products/listdistrict/id/"+ $("#Products_dos_provinces_province_id").val());
            });
        </script>


        <div class="col1"><?php echo $form->labelEx($model, 'dos_districts_district_id') ?></div>
        <div class="col2" id="dos_districts_district_id">
        </div><div class="clear space"></div>

        <div class="col1"><?php echo $form->labelEx($model, 'unit') ?></div>
        <div class="col2">
            <?php echo $form->textField($model, 'unit', $htmlOptions = array('class' => 'txt-small', 'onkeyup' => 'this.value = FormatNumber(this.value);')) ?>
            <?php
            $d = array('VND', 'USD', 'SJC');
            echo $form->dropDownList($model, 'unit_currency', array_combine($d, $d), array('style' => "width:70pt", 'prompt' => 'Chọn ĐVT'));
            ?>/
            <?php
            $dir = array("Tổng diện tích", "m2", "Tháng");
            echo $form->dropDownList($model, 'unit_unit', array_combine($dir, $dir), array('style' => "width:85pt"));
            ?>
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
                        elements : "Products_content<?php echo $lang ?>",
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
                        height: "250"
                    });
                </script>
            </div>
            <div class="clear space"></div>
    <?php endforeach; ?>
        <div class="col1">Thông tin</div>
        <div class="col2">
            <table>
                <tr>
                    <th>Tiện ích</th>
                    <th>Chi tiết</th>
                </tr>
                <tr>
                    <td> <?php echo $form->checkBoxList($model, 'utility', $listItemsU, array('template' => '<p>{label} {input}</p>', 'separator' => '')) ?></td>
                    <td>
                        <div class=""><b>Diện tích khuôn viên:</b></div>
                        <div class=""> 
                            <label for="Products[feature][area_n]" style="width:120px; float:left;">Chiều ngang trước</label>
    <?php echo $form->textField($model, 'feature[area_n]', $htmlOptions = array('class' => 'txt-small')); ?>m
                            <p></p>
                            <label for="Products[feature][area_d]" style="width:120px; float:left;">Chiều dài</label>
    <?php echo $form->textField($model, 'feature[area_d]', $htmlOptions = array('class' => 'txt-small')); ?>m
                        </div>  <div class="clear space"></div> 

                        <div class=""><b>Diện tích xây dựng:</b></div>
                        <div class=""> 
                            <label for="Products[feature][area_build_n]" style="width:120px; float:left;">Chiều ngang trước</label>
    <?php echo $form->textField($model, 'feature[area_build_n]', $htmlOptions = array('class' => 'txt-small')); ?>m
                            <p></p>
                            <label for="Products[feature][area_build_d]" style="width:120px; float:left;">Chiều dài</label>
    <?php echo $form->textField($model, 'feature[area_build_d]', $htmlOptions = array('class' => 'txt-small')); ?>m    
                        </div>  <div class="clear space"></div> 

                        <div class=""><?php echo $form->labelEx($model_f, 'area_used') ?></div>
                        <div class="">
    <?php echo $form->textField($model, 'feature[area_used]', $htmlOptions = array('class' => 'txt-small')); ?>m<sup>2</sup>
                        </div>    <div class="clear space"></div>  

                        <div class=""><?php echo $form->labelEx($model_f, 'num_floor') ?></div>
                        <div class="">
    <?php echo $form->textField($model, 'feature[num_floor]', $htmlOptions = array('class' => 'txt-small')); ?>
                        </div>    <div class="clear space"></div>   

                        <div class=""><?php echo $form->labelEx($model_f, 'sittingrom') ?></div>
                        <div class="">
    <?php echo $form->textField($model, 'feature[sittingrom]', $htmlOptions = array('class' => 'txt-small')); ?>
                        </div>    <div class="clear space"></div>   

                        <div class=""><?php echo $form->labelEx($model_f, 'bedroom') ?></div>
                        <div class="">
    <?php echo $form->textField($model, 'feature[bedroom]', $htmlOptions = array('class' => 'txt-small')); ?>
                        </div>    <div class="clear space"></div>   

                        <div class=""><?php echo $form->labelEx($model_f, 'bathroom') ?></div>
                        <div class="">
    <?php echo $form->textField($model, 'feature[bathroom]', $htmlOptions = array('class' => 'txt-small')); ?>
                        </div>    <div class="clear space"></div>   

                        <div class=""><?php echo $form->labelEx($model_f, 'other_room') ?></div>
                        <div class="">
    <?php echo $form->textField($model, 'feature[other_room]', $htmlOptions = array('class' => 'txt-small')); ?>
                        </div>    <div class="clear space"></div>

                        <div class=""><?php echo $form->labelEx($model_f, 'direction') ?></div>
                        <div class="">
                            <?php
                            $dir = array("Chưa xác định", "Đông", "Tây", "Nam", "Bắc", "Đông Bắc", "Đông Nam", "Tây Bắc", "Tây Nam");
                            echo $form->dropDownList($model, 'feature[direction]', array_combine($dir, $dir), array('style' => "width:100pt"));
                            ?>
                        </div><div class="clear space"></div> 

                        <div class=""><?php echo $form->labelEx($model_f, 'street') ?></div>
                        <div class="">
    <?php echo $form->textField($model, 'feature[street]', $htmlOptions = array('class' => 'txt-very-large')); ?>
                        </div>    <div class="clear space"></div>

                        <div class=""><?php echo $form->labelEx($model_f, 'legal') ?></div>
                        <div class="">
                            <?php
                            $dir = array("Sổ hồng", "Sổ đỏ", "Giấy tay", "Đang hợp thức hoá", "Giấy tờ hợp lệ", "Chủ quyền tư nhân", "Hợp đồng");
                            echo $form->dropDownList($model, 'feature[legal]', array_combine($dir, $dir), array('style' => "width:120pt"));
                            ?>
                        </div><div class="clear space"></div> 
                    </td>
                </tr>
            </table>
        </div><div class="clear space"></div>        
        <?php echo $form->textField($model, 'tag' . $lang, $htmlOptions = array('class' => 'txt-very-large', 'hidden' => 'hidden')); ?>
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
            <p style="color: red"><b>Lưu ý</b>:Chỉ chấp nhận hình ảnh là JPG và GIF, có dung lượng nhỏ hơn 5 MB. Không đăng logo, hình quảng cáo, nếu vi phạm sẽ bị xoá tin rao và khoá tài khoản đăng tin.</p>
        </div> <div class="clear space"></div>


        <div class="col1"><b>Thông tin liên hệ</b></div>
        <div class="col2">
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
        </div> <div class="clear space"></div>

        <p class="rows"><a href="#" id="add-rows"><?php echo $this->lang['pic_desc'] ?></a></p>
        <div class="col1"><?php echo $form->labelEx($model, 'hot', $htmlOptions = array('for' => ucfirst($this->ID) . '_hot_0')) ?></div>
        <div class="col2 radio">
    <?php echo $form->radioButtonList($model, 'hot', array('0' => $this->lang['normal'], '1' => $this->lang['hot']), array('separator' => '&nbsp;&nbsp;')); ?>
        </div>
        <div class="clear space"></div>
        <div class="col1">&nbsp;</div>
        <div class="col2">
            <?php echo CHtml::submitButton($this->lang['add_new'], array('name' => 'submit', 'class' => 'login-b', 'title' => $this->lang['add_new'])); ?>
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
                $(".rows").before('<div class="col1"><?php echo $this->lang['pic_desc'] ?></div><div class="col2"><input type="file" name="Products[pic_desc][]" size="40%" /></div><div class="clear space"></div>');
                return false;
            });
        });
    </script>
<?php endif; ?>



<script>
    function FormatNumber(str){
        var strTemp = GetNumber(str);
        if(strTemp.length <= 3)
            return strTemp;
        strResult = "";
        for(var i =0; i< strTemp.length; i++)
            strTemp = strTemp.replace(".", "");		        
        var m=strTemp.lastIndexOf(",");
        
        if(m==-1)        {    
            for(var i = strTemp.length; i>=0; i--)            {
                if(strResult.length >0 && (strTemp.length - i -1) % 3 == 0)
                    strResult = "." + strResult;			         
                strResult = strTemp.substring(i, i + 1) + strResult;		                
            }   
        }
        else        {
            //pháº§n nguyĂªn
            var strphannguyen=strTemp.substring(0,strTemp.lastIndexOf(","));
            var strphanthapphan=strTemp.substring(strTemp.lastIndexOf(","),strTemp.length);
            //pháº§n tháº­p phĂ¢n
            var tam=0;	               
            for(var i = strphannguyen.length; i>=0; i--)            {
                if(strResult.length>0 && tam==4)
                    strResult = "." + strResult;
                strResult = strphannguyen.substring(i, i + 1) + strResult;
                tam=tam+1;		                		                
            }
            strResult =strResult + strphanthapphan;
        }
        return strResult;
    }
    function GetNumber(str)  {
        for(var i = 0; i < str.length; i++)
        {	
            var temp = str.substring(i, i + 1);		
            if(!(temp == "," || temp == "." || (temp >= 0 && temp <=9)))
            {
                alert("Vui lòng nhập số (0-9)!");
                return str.substring(0, i);
            }
            if(temp == " ")
                return str.substring(0, i);
        }
        return str;
    }
</script>