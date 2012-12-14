<form action="" method="post" id="frm" name="frm">
    <fieldset>
        <legend>Configuration module: <?php echo $this->lang[$this->module->id]?></legend>
        <?php foreach ($items as $key => $value):?>
        <p class="clear">
			<input class="txt-large" type="text" name="name[]" value="<?php echo $value['config_name']?>" readonly="readonly" />
			<input class="txt-small" type="text" name="value[]" value="<?php echo $value['config_value']?>" />
        </p>
        <?php endforeach?>
        <p class="clear">
            <label style="width:195px">&nbsp;</label>
            <input type="submit" name="submit" value="  <?php echo $this->lang['edit'] ?>  " class="login"/>
        </p>
    </fieldset>
</form>