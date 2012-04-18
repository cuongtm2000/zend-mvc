<form id="frm" action="" method="post">
    <fieldset>
        <legend>Template - Load Files</legend>
        <p class="rows"><a href="#" id="add-rows">Add row</a></p>
        <?php foreach($moduleFileByTemplate as $value):?>
            <p>
                <label>Template</label>
                <input value="<?php echo $id ?>" maxlength="6" class="txt-tiny" readonly="readonly" />
                <input name="modules[]" value="<?php echo $value['dos_modules_module_id'] ?>" maxlength="20" class="txt-small" />
                <input name="loadfiles[]" value="<?php echo $value['loadfiles'] ?>" maxlength="200" class="txt-large" />
                <select name="typefile[]" class="select-130"><option<?php echo ($value['typefile']=='css') ? ' selected="selected"' : '' ?> value="css">Css</option><option<?php echo ($value['typefile']=='javascript') ? ' selected="selected"' : '' ?> value="javascript">Javascript File</option><option<?php echo ($value['typefile']=='javascript-string') ? ' selected="selected"' : '' ?> value="javascript-string">Javascript String</option></select>
            </p>
        <?php endforeach;?>
        <p>
            <label>&nbsp;</label>
            <?php echo CHtml::submitButton('Submit', array('name'=>'submit', 'class'=>'login', 'title'=>'Submit')); ?>
        </p>
        <script type="text/javascript">
            $(document).ready(function(){
                $("#add-rows").click(function(){
                    $(".rows").before('<p><label>Template</label> <input value="<?php echo $id ?>" maxlength="6" class="txt-tiny" readonly="readonly" /> <select name="modules[]" class="select-100"><?php foreach ($modules as $module): ?><option value="<?php echo $module['module_id'] ?>"><?php echo $module['module_id'] ?></option><?php endforeach;?></select> <input name="loadfiles[]" value="" maxlength="200" class="txt-large" /> <select name="typefile[]" class="select-130"><option value="css">Css</option><option value="javascript">Javascript File</option><option value="javascript-string">Javascript String</option></select></p>');
                    return false;
                });
            });
        </script>
    </fieldset>
</form>