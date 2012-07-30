<form action="" method="post" id="frm" name="frm">
    <fieldset>
        <legend>Configuration Url: <?php echo $this->lang[$this->module->id]?></legend>
        <p class="rows"><a href="#" id="add-rows">Thêm dòng</a></p>
        <?php foreach($items as $value):?>
            <p class="clear">
                <input class="txt-large" type="text" name="pattern[]" value="<?php echo $value['url_pattern']?>" />
                <input class="txt-small" type="text" name="route[]" value="<?php echo $value['url_route']?>" />
                <input class="txt-small" type="text" name="param[]" value="<?php echo $value['url_param']?>" />
                <select name="type[]" class="select-75">
                <?php $types = array(0 => 'None', 1 => 'Default'); foreach($types as $key => $type): ?>
                        <?php $selected = ($value['url_type'] == $key) ? ' selected="selected"' : ''?>
                        <option<?php echo $selected?> value="<?php echo $key?>"><?php echo $type?></option>
                    <?php endforeach?>
                </select>
                <select name="lang[]" class="select-82">
                    <?php foreach($this->listLanguage as $key => $lang):?>
                        <?php $selected = ($value['hoiit_languages_language_id'] == $key) ? ' selected="selected"' : ''?>
                        <option<?php echo $selected?> value="<?php echo $key?>"><?php echo $lang?></option>
                    <?php endforeach?>
                </select>
            </p>
        <?php endforeach?>
        <p class="clear">
            <label style="width:195px">&nbsp;</label>
            <input type="submit" name="submit" value="  <?php echo $this->lang['edit'] ?>  " class="login"/>
        </p>
    </fieldset>
</form>
<script type="text/javascript">
    $(document).ready(function(){
        $("#add-rows").click(function(){
            $(".rows").before('<p class="clear"><input class="txt-large" type="text" name="pattern[]" value="" /> <input class="txt-small" type="text" name="route[]" value="" /> <input class="txt-small" type="text" name="param[]" value="" /> <select name="type[]" class="select-75"><option value="0">None</option><option value="1">Default</option></select> <select name="lang[]" class="select-82"><?php foreach($this->listLanguage as $key => $lang):?><option value="<?php echo $key?>"><?php echo $lang?></option><?php endforeach?></select> <label class="reset-label"><input type="checkbox" title="Remove this item" onclick="$(this).parent().parent().remove();" name="delete[]" value="1" /></label></p>');
            return false;
        });
    });
</script>