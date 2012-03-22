<?php $this->pageTitle = Yii::app()->name . ' - Contact Us'; ?>
<?php if (Yii::app()->user->hasFlash('contact')): ?>
    <?php echo Yii::app()->user->getFlash('contact'); ?>
<?php else: ?>
    <h1 class="heading-contact marginb10">Have you visited a Webs site that you find offensive or that contains illegal material? Have you received an unsolicited email from a site hosted by Webs?</h1>
    <p>At Webs, we strictly prohibit the use of our services for software piracy, copyright infringement, sharing pornographic material, the defamation of others, unsolicited email communication and other such illegal and offensive activity, as outlined in our Terms of Service. While we are not responsible for such behavior, we do take strict disciplinary action against offenders. Webs is a member of the Internet Watch Foundation and employs automated scanning to insure all images on Webs sites are legal.</p>
    <div class="frame-contact">
        <div class="tent-contact">
            <div class="left-contact">
                <h3 class="title-frame">Tất cả các lĩnh vực được yêu cầu</h3>
                <?php $form = $this->beginWidget('CActiveForm', array('id' => 'contact-form', 'enableClientValidation' => true, 'clientOptions' => array('validateOnSubmit' => true,),)); ?>
                <?php echo $form->errorSummary($model, '', '', array('class'=>'errorSummary error')); ?>
                <ul>
                    <li class="left">
                        <?php echo $form->textField($model, 'name', array('value' => 'Name', 'onblur' => 'if(this.value=="") this.value="Name"', 'onfocus' => 'if(this.value =="Name") this.value=""')); ?>
                    </li>
                    <li class="right">
                        <?php echo $form->textField($model, 'website', array('value' => 'Website', 'onblur' => 'if(this.value=="") this.value="Website"', 'onfocus' => 'if(this.value =="Website") this.value=""')); ?>
                    </li>
                    <li class="clear left">
                        <?php echo $form->textField($model, 'email', array('value' => 'Email', 'onblur' => 'if(this.value=="") this.value="Email"', 'onfocus' => 'if(this.value =="Email") this.value=""')); ?>
                    </li>
                    <li class="right">
                        <select size="1" name="listtype" class="select">
                            <option value="0">Copyright Infringement</option>
                            <option value="1">Trademark Infringement</option>
                            <option value="2">Defamation</option>
                            <option value="3">Adult Content</option>
                            <option value="4">Music Piracy</option>
                        </select> 
                    </li>
                    <li class="clear left"><input type="text" name="phone" value="Phone Number" onblur="if(this.value=='') this.value='Phone Number'" onfocus="if(this.value =='Phone Number' ) this.value=''" /></li>
                    <li class="right captcha">
                        <?php echo $form->textField($model, 'verifyCode', array('class' => 'small-input', 'value' => 'Verification Code', 'onblur' => 'if(this.value=="") this.value="Verification Code"', 'onfocus' => 'if(this.value =="Verification Code") this.value=""')); ?>
                        <?php if (CCaptcha::checkRequirements()): ?>
                            <?php $this->widget('CCaptcha', array('clickableImage' => true, 'showRefreshButton' => false)); ?>
                        <?php endif; ?>
                    </li>
                    <li>
                        <?php echo $form->textArea($model, 'body', array('rows' => 7, 'cols' => 50, 'onblur' => 'if(this.value=="") this.value="Content"', 'onfocus' => 'if(this.value =="Content") this.value=""')); ?>
                    </li>
                    <li>
                        <?php echo CHtml::submitButton('Submit', array('class' => 'submit')); ?>
                    </li>
                </ul>
                <?php $this->endWidget(); ?>
            </div> <!--END left contact-->
            <div class="right-contact">
                <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/contact.png" alt="Contac us"/>
            </div><div class="clear"></div>
        </div>
    </div>
<?php endif; ?>