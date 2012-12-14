<form action="" method="post" id="frm" name="frm">
    <fieldset>
        <legend>Configuration Url: <?php echo $this->lang[$id]?></legend>
        <?php foreach($this->listLanguage as $key => $value):?>
        <p class="clear">
            <label><?php echo $value?></label>
            <input type="text" name="url[<?php echo $key?>]" class="txt-large-x" value="<?php echo $items[$key]?>" />
        </p>
        <?php endforeach?>
        <p class="clear">
            <label style="width:110px">&nbsp;</label>
            <input type="submit" name="submit" value="  <?php echo Yii::t('admin', 'edit') ?>  " class="login"/>
        </p>
    </fieldset>
</form>