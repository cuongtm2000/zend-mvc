<form id="frm" action="" method="post">
    <fieldset>
        <legend>Template - Modules</legend>
        <p class="rows"><a href="#" id="add-rows">Add row</a></p>
        <?php foreach($moduleValueByTemplate as $value):?>
            <p>
                <label>Template</label>
                <input value="<?php echo $id ?>" maxlength="6" class="txt-small" readonly="readonly" />
                <input name="modules[]" value="<?php echo $value['dos_modules_module_id'] ?>" maxlength="20" class="txt-large" />
                <input name="values[]" value="<?php echo $value['dos_values_value_name'] ?>" maxlength="20" class="txt-large" />
            </p>
        <?php endforeach;?>
        <p>
            <label>&nbsp;</label>
            <?php echo CHtml::submitButton('Submit', array('name'=>'submit', 'class'=>'login', 'title'=>'Submit')); ?>
        </p>
        <script type="text/javascript">
            $(document).ready(function(){
                $("#add-rows").click(function(){
                    $(".rows").before('<p><label>Template</label> <input value="<?php echo $id ?>" maxlength="6" class="txt-small" readonly="readonly" /> <select name="modules[]"><?php foreach ($modules as $module): ?><option value="<?php echo $module['module_id'] ?>"><?php echo $module['module_id'] ?></option><?php endforeach;?></select> <select name="values[]"><?php foreach ($values as $value): ?><option value="<?php echo $value['value_name'] ?>"><?php echo $value['value_name'] ?></option><?php endforeach;?></select></p>');
                    return false;
                });
            });
        </script>
    </fieldset>
</form>