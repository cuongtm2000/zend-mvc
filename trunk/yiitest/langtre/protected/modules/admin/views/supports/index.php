<form action="" method="post" id="frm" name="frm">
    <fieldset>
        <legend><?php echo $this->lang['supports'] ?></legend>
        <p class="rows"><a href="#" id="add-rows"><?php echo $this->lang['add_row'] ?></a></p>
        <p>
            <label></label>
            <?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
                <label class="label-txt-large">Name<?php echo $lang?></label>
            <?php endforeach?>
            <label class="label-txt-small">Phone</label>
            <label class="label-txt-small">Value</label>
            <label class="label-txt-very-tiny">Sort</label>
            <label class="label-txt-small">Type</label>
        </p>
        <?php foreach ($models as $value): ?>
            <p class="clear">
                <label>Support</label>
                <?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
                    <input name="name<?php echo $lang?>[]" value="<?php echo $value['support_name'.$lang] ?>" maxlength="45" class="txt-large" />
                <?php endforeach?>
                <input name="phone[]" value="<?php echo $value['support_phone'] ?>" maxlength="45" class="txt-small" />
                <input name="value[]" value="<?php echo $value['support_value'] ?>" maxlength="45" class="txt-small" />
                <input name="order[]" value="<?php echo $value['support_order'] ?>" maxlength="2" class="txt-very-tiny" />
                <select name="type[]" class="select-110">
                    <?php if ($value['support_type'] == 'yahoo'): ?>
                        <option selected="selected" value="yahoo">Yahoo</option>
                        <option value="skype">Skype</option>
                    <?php else: ?>
                        <option value="yahoo">Yahoo</option>
                        <option selected="selected" value="skype">Skype</option>
                    <?php endif; ?>
                </select>
            </p>
        <?php endforeach; ?>
        <p>
            <label>&nbsp;</label>
            <input type="submit" name="submit" value="  <?php echo $this->lang['update'] ?>  " class="login" />
        </p>
    </fieldset>
</form>
<script type="text/javascript">
    $(document).ready(function(){
        var i = 0;
        $("#add-rows").click(function(){
            if(i<5){
                $(".rows").before('<p><label>Support</label><?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?><input name="name<?php echo $lang?>[]" value="" maxlength="45" class="txt-large" /> <?php endforeach?> <input name="phone[]" value="" maxlength="45" class="txt-small" /> <input name="value[]" value="" maxlength="45" class="txt-small" /> <input name="order[]" value="" maxlength="2" class="txt-very-tiny" /> <select name="type[]" class="select-110"><option value="yahoo">Yahoo</option><option value="skype">Skype</option></select></p>');
                i++;
            }
        return false;
        });
    });
</script>