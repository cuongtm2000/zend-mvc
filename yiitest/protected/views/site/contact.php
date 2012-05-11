<?php $this->pageTitle = 'Liên hệ với chúng tôi'; $this->description = 'Bạn đang gặp khó khăn trong việc sử dụng sản phẩm, bạn muốn đóng góp ý kiến hay phàn nàn về chất lượng phục vụ của Dịch vụ tạo web Dos hãy liên lạc với chúng tôi bằng số Hotline: 0929 001001 hoặc điền vào form liên hệ' ?>

<h1 class="heading-contact marginb10">Liên hệ với Dos</h1>
<?php if(Yii::app()->user->hasFlash('contactSuccess')): ?>
    <p style="height: 400px"><?php echo Yii::app()->user->getFlash('contactSuccess'); ?></p>
<?php else: ?>
    <p>Chúng tôi ghi nhận những ý kiến đóng góp, thắc mắc phản hồi từ phía người sử dụng. Nếu có bất cứ vấn đề gì liên quan đến Dos.vn xin dành ít phút đề chúng tôi tiếp nhận ý kiến của bạn điều này sẽ giúp sản phâm chúng tôi ngày càng hoàn thiện &amp; chăm sóc bạn tốt hơn<br/><br/>Bạn có thể liên lạc trực tiếp với chúng tôi:<br/>Hỗ trợ: <strong>0929 001001 (mr. An)</strong></p>
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
                        <?php echo $form->dropDownList($model, 'type', array('Hỗ trợ kỹ thuật' => 'Hỗ trợ kỹ thuật', 'Thanh toán' => 'Thanh toán', 'Đóng góp ý kiến' => 'Đóng góp ý kiến', 'Vấn đề khác' => 'Vấn đề khác'), array('class' => 'select')); ?>
                    </li>
                    <li class="clear left">
                        <?php echo $form->textField($model, 'phone', array('value' => 'Phone Number', 'onblur' => 'if(this.value=="") this.value="Phone Number"', 'onfocus' => 'if(this.value =="Phone Number") this.value=""')); ?>
                    </li>
                    <li class="right captcha">
                        <?php echo $form->textField($model, 'verifyCode', array('class' => 'small-input', 'value' => 'Mã xác nhận', 'onblur' => 'if(this.value=="") this.value="Mã xác nhận"', 'onfocus' => 'if(this.value =="Mã xác nhận") this.value=""')); ?>
                        <?php if (CCaptcha::checkRequirements()): ?>
                            <?php $this->widget('CCaptcha', array('clickableImage' => true, 'showRefreshButton' => false, 'imageOptions' => array('alt' => 'Mã số xác nhận', 'title' => 'Mã số xác nhận'))); ?>
                        <?php endif; ?>
                    </li>
                    <li>
                        <?php echo $form->textArea($model, 'body', array('rows' => 7, 'cols' => 50, 'onblur' => 'if(this.value=="") this.value="Content"', 'onfocus' => 'if(this.value =="Content") this.value=""')); ?>
                    </li>
                    <li>
                        <?php echo CHtml::submitButton('Send', array('class' => 'submit')); ?>
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