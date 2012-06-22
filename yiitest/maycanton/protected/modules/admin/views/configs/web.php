<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true)); ?>
<fieldset>
    <legend>Config web</legend>
    <?php if($models):?>
        <?php foreach ($models as $value): ?>
            <p class="clear">
                <label>Config</label>
                <input name="web_name[]" value="<?php echo $value['web_name'] ?>" maxlength="45" readonly="readonly" class="txt-large" />
                <input name="web_value[]" value="<?php echo $value['web_value'] ?>" maxlength="250" class="txt-large-x" />
            </p>
        <?php endforeach; ?>
    <?php else:?>
        <p class="clear">
            <label>Config</label>
            <input name="web_name[]" value="keywords" maxlength="45" readonly="readonly" class="txt-large" />
            <input name="web_value[]" value="" maxlength="250" class="txt-large-x" />
        </p>
        <p class="clear">
            <label>Config</label>
            <input name="web_name[]" value="description" maxlength="45" readonly="readonly" class="txt-large" />
            <input name="web_value[]" value="" maxlength="250" class="txt-large-x" />
        </p>
        <p class="clear">
            <label>Config</label>
            <input name="web_name[]" value="title" maxlength="45" readonly="readonly" class="txt-large" />
            <input name="web_value[]" value="" maxlength="250" class="txt-large-x" />
        </p>
    <?php endif;?>
    <p>
        <label>&nbsp;</label>
        <?php echo CHtml::submitButton($this->lang['update'], array('name' => 'submit', 'class' => 'login', 'title' => $this->lang['update'])); ?>
    </p>
</fieldset>
<?php $this->endWidget(); ?>