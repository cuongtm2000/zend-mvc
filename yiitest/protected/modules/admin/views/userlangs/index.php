<script type="text/javascript">
    $(document).ready(function(){
        $("#add-rows").click(function(){
            $(".rows").before('<p><label>Lang</label><select name="lang_name[]"><?php $lang_lists = Langs::getLangs(0);
foreach ($lang_lists as $lang_list): ?><option value="<?php echo $lang_list['lang_name'] ?>"><?php echo $lang_list['lang_name'] ?> &raquo; <?php echo $lang_list['lang' . LANG] ?></option><?php endforeach; ?></select><input name="lang[]" value="" maxlength="200" class="txt-small" /> <input name="langen[]" value="" maxlength="200" class="txt-small" /></p>');
            return false;
        });
    });
</script>
<form action="" method="post" enctype="multipart/form-data" id="frm" name="frm">
    <fieldset>
        <legend>Cấu hình ngôn ngữ</legend>
        <p class="rows"><a href="#" id="add-rows"><?php echo $this->lang['add_row'] ?></a></p>
        <p>
            <label></label>
            <label class="label-txt-large label-select">Name</label>
            <label class="label-txt-small">Lang</label>
            <label class="label-txt-small">Lang en</label>
        </p>
        <?php foreach ($models as $value): ?>
            <p class="clear">
                <label>Lang</label>
                <select name="lang_name[]">
                    <?php foreach ($lang_lists as $lang_list): ?>
                        <option value="<?php echo $lang_list['lang_name'] ?>"<?php echo ($value['lang_name'] == $lang_list['lang_name']) ? ' selected="selected"' : '' ?>><?php echo $lang_list['lang_name'] ?> &raquo; <?php echo $lang_list['lang' . LANG] ?></option>
        <?php endforeach; ?>
                </select>
                <input name="lang[]" value="<?php echo $value['lang'] ?>" maxlength="200" class="txt-small" />
                <input name="langen[]" value="<?php echo $value['langen'] ?>" maxlength="200" class="txt-small" />
            </p>
        <?php endforeach; ?>
        <p class="clear">
            <label>&nbsp;</label>
            <input type="submit" name="submit" value="  <?php echo $this->lang['add_new'] ?>  " class="login" /> <a href="javascript:history.back()" class="login-a"><?php echo $this->lang['cancel'] ?></a>
        </p>
    </fieldset>
</form>