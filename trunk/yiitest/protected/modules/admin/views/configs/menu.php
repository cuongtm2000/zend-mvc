<script type="text/javascript">
    $(document).ready(function(){
        var i = 0;
        $("#add-rows").click(function(){
            if(i<5){
                $(".rows").before('<p><label>Menu</label><?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?><input name="menu<?php echo $lang?>[]" value="" maxlength="50" class="txt-small" /><?php endforeach; ?> <input name="url[]" value="" maxlength="100" class="txt-small" /> <input name="position[]" value="" maxlength="2" class="txt-very-tiny" /> <select name="target[]" class="select-110"><option value="">Current</option><option value="_blank">Page new</option></select></p>');
                i++;
            }
            return false;
        });
    });
</script>
<form action="" method="post" id="frm" name="frm">
    <fieldset>
        <legend>Config menu</legend>
        <p class="rows"><a href="#" id="add-rows"><?php echo $this->lang['add_row'] ?></a></p>
        <p>
            <label></label>
			<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
            <label class="label-txt-small">Menu <?php echo $lang?></label>
			<?php endforeach; ?>
            <label class="label-txt-small">Url</label>
            <label class="label-txt-very-tiny">Pos</label>
            <label class="label-txt-small">Target</label>
        </p>
        <?php foreach ($models as $value): ?>
            <p class="clear">
                <label>Menu</label>
				<?php foreach(Yii::app()->user->numLang as $lang): $lang = ($lang=='vi') ? '' : $lang;?>
                <input name="menu<?php echo $lang?>[]" value="<?php echo $value['menu'.$lang] ?>" maxlength="50" class="txt-small" />
				<?php endforeach; ?>
                <input name="url[]" value="<?php echo $value['url'] ?>" maxlength="100" class="txt-small" />
                <input name="position[]" value="<?php echo $value['position'] ?>" maxlength="2" class="txt-very-tiny" />
                <select name="target[]" class="select-110">
                    <?php if ($value['target'] == '_blank'): ?>
                        <option value="">Current</option>
                        <option selected="selected" value="_blank">Page new</option>
                    <?php else: ?>
                        <option selected="selected" value="">Current</option>
                        <option value="_blank">Page new</option>
                    <?php endif; ?>
                </select>
            </p>
        <?php endforeach; ?>
        <p>
            <label>&nbsp;</label>
            <input type="submit" name="submit" value="  <?php echo $this->lang['update'] ?>  " title="<?php echo $this->lang['update'] ?>" class="login" />
        </p>
    </fieldset>
</form>