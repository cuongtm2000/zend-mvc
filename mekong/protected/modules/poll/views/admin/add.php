<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true,)); ?>
<?php echo $form->errorSummary($model, ''); ?>


<fieldset>
    <legend>Thêm mới bình chọn <?php //echo $this->lang['sys_addpost']       ?></legend>
    
    <div class="col1"><?php echo $form->labelEx($model, 'question') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'question', $htmlOptions = array('class' => 'txt-very-large')); ?>
    </div><div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'begin_date') ?></div>
    <div class="col2">      
        <?php echo $form->textField($model, 'begin_date', $htmlOptions = array('class' => 'txt-very-small')); ?> (dd-mm-yyyy)      
    </div><div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'end_date') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'end_date', $htmlOptions = array('class' => 'txt-very-small')); ?> (dd-mm-yyyy)  
    </div> <div class="clear space"></div>

    <div class="col2 radio">
        <table class="tab1" id="items">
            <thead>
                <tr>
                    <td></td>
                    <td>Các phương án trả lời</td>
                    <td>Liên kết tới trang</td>
                </tr>
            </thead>

            <?php
                $count = 1;
                if (is_array($model->answers['answer'])) {
                    $count = count($model->answers['answer']);
                }
                for ($i = 0; $i < $count; $i++) { ?>
                    <tbody  class="additem">
                        <tr>
                            <td style="text-align:right">Trả lời số <?php echo $i + 1 ?></td>
                            <td>
                                <input value="<?php echo $model->answers['answer'][$i] ?>" name="Poll[answers][answer][]" style="width:300px" /></td>
                            <td><input value="<?php echo $model->answers['url'][$i] ?>" name="Poll[answers][url][]" style="width:350px" /></td>
                        </tr>
                    </tbody>
            <?php } ?>
        </table>		   
    </div>    <div class="clear space"></div>

    <div class="col1">&nbsp; </div>
    <div class="col2 radio">
        <a href="javascript:void(0)" id="items" onclick="vote_additem('Trả lời số ');">Thêm phương án trả lời</a>
    </div><div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'Show', array('for' => get_class($model) . '_enable_0')) ?></div>
    <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'enable', array('1' => 'Show', '0' => 'Hidden'), array('separator' => '&nbsp;&nbsp;')); ?>
    </div><div class="clear space"></div>

    <div class="col1">&nbsp;</div>
    <div class="col2">
        <?php echo CHtml::submitButton('Thêm', array('name' => 'submit', 'class' => 'login', 'title' => 'Add')); ?>
        <?php echo Chtml::link('Trở lại', 'javascript:history.back()', array('class' => 'login-a', 'title' => 'Cancel')) ?>
    </div><div class="clear space"></div>
</fieldset>
<?php $this->endWidget(); ?>


<script type="text/javascript">
            
    $(function() {
	$.datepicker.setDefaults( $.datepicker.regional[ "vi" ] );		
	var dates = $( "#Poll_begin_date, #Poll_end_date" ).datepicker({
            changeMonth: true,
            changeYear: true,
            //minDate: 0, 
            //maxDate: "+3Y",
            numberOfMonths: 2,
            showButtonPanel: true,
            showAnim:"show",
            onSelect: function( selectedDate ) {
                var option = this.id == "Poll_begin_date" ? "minDate" : "maxDate",
		instance = $( this ).data( "datepicker" ),
		date = $.datepicker.parseDate(
		instance.settings.dateFormat ||
		$.datepicker._defaults.dateFormat,
		selectedDate, instance.settings );
		dates.not( this ).datepicker( "option", option, date );
            }
	});			
    });
    
    var items=<?php echo $count ?>;
    var the_form = window.document.frm;		
    radio_list("<?php echo $model['enable'] ?>", the_form.active);

    function vote_additem(a){
        items++;
        $("#items").append("<tbody"+(0==items%2?' class="second"':"")+"><tr>"+('\t<td style="text-align:right">'+a+" "+items+"</td>")+'\t<td><input type="text" value="" name="Poll[answers][answer][]" style="width:300px"></td>\t<td><input type="text" value="" name="Poll[answers][url][]" style="width:350px"></td>\t</tr></tbody>')
    };
</script>


