<div id="sign-up">
    <?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true, 'htmlOptions'=>array('name' =>'frm')));?>
    <?php echo $form->errorSummary($model, ''); ?>
    <div class="sign-up-heading"><h1><span>1</span>Set up your account</h1></div>
    <div class="input_field">
        <?php echo $form->labelEx($model, 'username') ?>
        <?php echo $form->textField($model, 'username', $htmlOptions=array('class'=>'smallfield-name', 'title'=>'ví dụ: thuonghoi, sau khi bạn đăng ký sẽ có website là: http://thuonghoi.dos.vn Lưu ý không dấu, không có khoảng trắng giữa các ký tự', 'tabindex'=>1)); ?><input class="smallfield-dos" type="text" value=".dos.vn" readonly="readonly" />
        <span class="field_desc" id="subdomaininfo"></span>
    </div>
    <div class="input_field">
        <?php echo $form->labelEx($model, 'password') ?>
        <?php echo $form->passwordField($model, 'password', $htmlOptions=array('class'=>'smallfield', 'title'=>'Mật khẩu dùng để đăng nhập, bạn nên đặt mật khẩu có độ phức tạp, giúp web bạn bảo mật hơn', 'tabindex'=>2)); ?>
        <span class="field_desc" id="passwordinfo"></span>
    </div>
    <div class="input_field">
        <?php echo $form->labelEx($model, 'email') ?>
        <?php echo $form->textField($model, 'email', $htmlOptions=array('class'=>'smallfield', 'title'=>'Email sẽ dùng để kích hoạt web của bạn sau khi đăng ký, nếu bạn chưa có Email hãy tạo nó trước khi thực hiện Đăng ký web', 'tabindex'=>3)); ?>
        <span class="field_desc" id="emailinfo"></span>
    </div>
    <div class="input_field">
        <?php echo $form->labelEx($model, 'dos_provinces_province_id') ?>
        <?php $province_class = new Provinces; $values = $province_class->listProvinceByCountry('VND'); $data = array(); foreach ($values as $value){
                $data[$value['province_id']] = $value['province_name'];
            }
        ?>
        <?php echo $form->dropDownList($model, 'dos_provinces_province_id', $data, array('tabindex'=>4)); ?>
    </div>

    <div class="sign-up-heading"><h1><span>2</span>Select a Template</h1> <p>Don't worry, you can change your template at any time.</p></div>
    <div class="border-image">
        <div class="border-heading"><strong>Choose from our gallery of over 300 professionally designed templates</strong></div>
        <div id="gallerya" class="stepcarousel">
            <div class="belt">
                <?php $model_class = new Templates; $values = $model_class->listTemplates(); foreach ($values as $value):?>
                <div class="panel">    
                    <div><label for="tem-<?php echo $value['template']?>"><img src="<?php echo Yii::app()->baseUrl; ?>/themes/<?php echo $value['template']?>/images/tiny.jpg" alt="<?php echo $value['template_name']?>" /></label></div>
                    <p>
                        <?php 
                            $checked = '';
                            if (isset($_POST['Username']['dos_templates_template']) && $_POST['Username']['dos_templates_template']==$value['template']){
                                $checked = ' checked="checked"';
                            }else{
                                $checked = '';
                            }
                        ?>

                        <input<?php echo $checked ?> id="tem-<?php echo $value['template']?>" name="Username[dos_templates_template]" value="<?php echo $value['template']?>" type="radio" />
                        <label for="tem-<?php echo $value['template']?>"><?php echo $value['template_name']?></label>
                    </p>
                </div>
                <?php endforeach;?>
            </div>
        </div>
        <p id="gallerya-paginate"><script type="text/javascript">embedImg('<?php echo Yii::app()->theme->baseUrl; ?>');</script></p>
    </div>
    <script type="text/javascript">
        stepcarousel.setup({
            galleryid: 'gallerya', //id of carousel DIV
            beltclass: 'belt', //class of inner "belt" DIV containing all the panel DIVs
            panelclass: 'panel', //class of panel DIVs each holding content
            autostep: {enable:true, moveby:1, pause:3000},
            panelbehavior: {speed:300, wraparound:false, persist:false},
            defaultbuttons: {enable: true, moveby: 1, leftnav: ['<?php echo Yii::app()->theme->baseUrl; ?>/images/arrow-left.gif', -31, 90], rightnav: ['<?php echo Yii::app()->theme->baseUrl; ?>/images/arrow-right.gif', -2, 90]},
            contenttype: ['inline'] //content setting ['inline'] or ['external', 'path_to_external_file']
        })
    </script>
    
    <div class="sign-up-heading"><h1><span>3</span>Choose Pages &amp; Features For Your Site</h1> <p>You can add and delete pages at any time.</p></div>
    <div class="border-image">
        <div class="border-heading"><strong>Choose Pages</strong></div>
        <?php $model_class = new Modules; $values = $model_class->listModules(1); $data = array(); foreach ($values as $value):?>
            <?php $data[$value['module_id']] = '<img src="'.Yii::app()->theme->baseUrl.'/images/icon-medium.png" alt="'.$value['module_id'].'" /><br/>'.$this->lang[$value['module_id']]; ?>
        <?php endforeach;?>
        <?php echo $form->checkBoxList($model, 'choose_modules', $data, array('template'=>'<div class="choose-page">{label}<br/>{input}</div>', 'separator'=>'')); ?> 
        <div class="clear"></div>
    </div>
    
    <div class="border-image">
        <div class="border-heading"><strong>Choose Features</strong></div>
        <?php $model_class = new Modules; $values = $model_class->listModules(0); $data = array(); foreach ($values as $value):?>
            <?php $data[$value['module_id']] = '<img src="'.Yii::app()->theme->baseUrl.'/images/icon-medium.png" alt="'.$value['module_id'].'" /><br/>'.$this->lang[$value['module_id']]; ?>
        <?php endforeach;?>
        <?php echo $form->checkBoxList($model, 'choose_feature', $data, array('template'=>'<div class="choose-page">{label}<br/>{input}</div>', 'separator'=>'')); ?> 
        <div class="clear"></div>
    </div>
    <?php echo CHtml::submitButton('Create my website', array('class'=>'submit', 'name'=>'submit')); ?>
    <?php $this->endWidget();?>
</div>
<script type="text/javascript">
    jQuery(function(){
        //diable check for default
        jQuery("#Username_choose_modules_0").attr("disabled", true);
        jQuery("#Username_choose_modules_0").attr("checked", true);
        jQuery("#Username_choose_modules_0").parent().addClass('border');
        
        jQuery('.choose-page').click(function(){
            if(jQuery(this).find('input').is(':checked')){
                //alert("Checked");
                jQuery(this).addClass('border');
            }
            else{
                //alert("Unchecked");
                jQuery(this).removeClass('border');
            }
        });
    });
</script>
<script type="text/javascript">
    jQuery(function(){
        jQuery(".smallfield").tipTip({maxWidth: "335px", defaultPosition: "right", edgeOffset: 10});
        jQuery(".smallfield-name").tipTip({maxWidth: "335px", defaultPosition: "right", edgeOffset: 72});
        jQuery(".tooltip").tipTip({maxWidth: "335px", defaultPosition: "right", edgeOffset: 10});
    });
</script>