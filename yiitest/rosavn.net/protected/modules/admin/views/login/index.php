<?php $form=$this->beginwidget('CActiveForm', array('id'=>'frm', 'enableClientValidation'=>true, 'clientOptions'=>array('validateOnSubmit'=>true), 'htmlOptions'=>array('class'=>'formBox'))); ?>
    <?php echo $form->error($model, 'error'); ?>
  <fieldset>
    <div class="form-col">
        <label for="LoginForm_username" class="lab">Username <span class="warning"></span></label>
        <input type="text" name="LoginForm[username]" class="input" id="LoginForm_username" maxlength="45" />
        
        <?php echo $form->error($model,'username'); ?>
    </div>
    <div class="form-col form-col-right">
        <label for="LoginForm_password" class="lab">Password <span class="warning"></span></label>
        <input type="password" name="LoginForm[password]" class="input" id="LoginForm_password" maxlength="45" />
        <?php echo $form->error($model,'password'); ?>
    </div>
    <div class="form-col form-col-check">
        <?php echo $form->checkBox($model,'rememberMe'); ?>
		<?php echo $form->label($model,'rememberMe'); ?>
		<?php echo $form->error($model,'rememberMe'); ?>
    </div>
    <div class="form-col form-col-right"> 
        <?php echo Chtml::submitButton('Login', $htmlOptions=array('class'=>'submit', 'name'=>'submit'));?>
    </div>                 
  </fieldset>
<?php $this->endWidget();?>