<form action="" method="post" id="frm" name="frm">
    <fieldset>
        <legend>Configuration page: <?php echo $this->lang[$id]?></legend>
        <p class="rows"><a href="#" id="add-rows">Thêm dòng</a></p>
        <table id="table">
            <?php foreach ($items as $key => $value):?>
            <tr>
                <td>
                <select name="function[]">
                    <?php foreach ($listFunction as $list_func): ?>
                        <?php $selected = ($value['hoiit_functions_function_value'] == $list_func['function_value']) ? ' selected="selected"' : ''?>
                        <option<?php echo $selected?> value="<?php echo $list_func['function_value']?>"><?php echo $list_func['function_value']?></option>
                    <?php endforeach?>
                </select>
                <select name="position[]">
                    <?php foreach ($listPosition as $list_pos): ?>
                        <?php $selected = ($value['pos_id'] == $list_pos) ? ' selected="selected"' : ''?>
                        <option<?php echo $selected?> value="<?php echo $list_pos?>"><?php echo $list_pos?></option>
                    <?php endforeach?>
                </select>
                <input type="text" value="<?php echo $value['controller_id']?>" name="controller_id[]" class="txt-small" />
                <input type="text" value="<?php echo $value['action_id']?>" name="action_id[]" class="txt-small" />
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
</form>
<script type="text/javascript">
    $(document).ready(function(){
        $("#table").tableDnD();
        $("#table tr:even").addClass("alt");
        $("#add-rows").click(function(){
            $(".rows").before('<p class="clear"><select name="function[]"><?php foreach ($listFunction as $list_func): ?><option value="<?php echo $list_func['function_value']?>"><?php echo $list_func['function_value']?></option><?php endforeach?></select> <select name="position[]"><?php foreach ($listPosition as $list_pos): ?><option value="<?php echo $list_pos?>"><?php echo $list_pos?></option><?php endforeach?></select> <input type="text" value="" name="controller_id[]" class="txt-small" /> <input type="text" value="" name="action_id[]" class="txt-small" /> <label class="reset-label"><input type="checkbox" title="Remove this item" onclick="$(this).parent().parent().remove();" name="delete[]" value="1" /> Delete item</label></p>');
            return false;
        });
    });
</script>