<?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true,));?>
    <?php echo $form->errorSummary($model, ''); ?>
    <fieldset>
        <legend><?php echo $this->lang['support'] ?></legend>
        <p class="rows"><a href="#" id="add-rows"><?php echo $this->lang['add_row'] ?></a></p>
        <table id="table">
        <?php foreach($items as $key => $value):?>
            <tr>
                <td>
                    <label>Support</label>
                    <input name="name[]" value="<?php echo $value['support_name']?>" maxlength="45" class="txt-small" />
                    <input name="phone[]" value="<?php echo $value['support_phone']?>" maxlength="45" class="txt-small" />
                    <input name="value[]" value="<?php echo $value['support_value']?>" maxlength="45" class="txt-small" />
                    <select name="type[]" class="select-82">
                        <?php $types = array('yahoo' => 'Yahoo', 'skype' => 'Skype'); foreach($types as $keyType => $type): ?>
                            <?php $selected = ($value['support_type'] == $keyType) ? ' selected="selected"' : ''?>
                            <option<?php echo $selected?> value="<?php echo $keyType?>"><?php echo $type?></option>
                        <?php endforeach?>
                    </select>
                    <label class="reset-label"><input type="checkbox" name="delete[<?php echo $key?>]" value="1" /> Delete item</label>
                </td>
            </tr>
        <?php endforeach?>
        </table>
        <p class="clear">
            <label>&nbsp;</label>
            <input type="submit" name="submit" value="  <?php echo $this->lang['edit'] ?>  " class="login"/>
        </p>
    </fieldset>
<?php $this->endWidget();?>
<script type="text/javascript">
    $(document).ready(function(){
        $("#table").tableDnD();
        $("#table tr:even").addClass("alt");

        var i = 0;
        $("#add-rows").click(function(){
            if(i<5){
                $(".rows").before('<p><label>Support</label><input name="name[]" value="" maxlength="45" class="txt-small" /> <input name="phone[]" value="" maxlength="45" class="txt-small" /> <input name="value[]" value="" maxlength="45" class="txt-small" /> <select name="type[]" class="select-82"><option value="yahoo">Yahoo</option><option value="skype">Skype</option></select> <label class="reset-label"><input type="checkbox" title="Remove this item" onclick="$(this).parent().parent().remove();" name="delete[]" value="1" /> Delete item</label></p>');
                i++;
            }
            return false;
        });
    });
</script>