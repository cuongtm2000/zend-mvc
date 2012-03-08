<?php $form = $this->beginWidget('CActiveForm', array('id' => 'frm', 'enableAjaxValidation' => true, 'enableClientValidation' => true, 'htmlOptions' => array('enctype' => 'multipart/form-data'))); ?>
<?php echo $form->errorSummary($model, ''); ?>
<?php if (!$list_item_cat = $model->listItemCat()): ?>
    <div class="errorSummary">
        <ul>
            <li>Vui lòng thêm mới Danh mục</li>
        </ul>
    </div>
<?php endif; ?>
<fieldset>
    <legend>Thêm sản phẩm</legend>

    <?php if ($list_item_cat): ?>
        <div class="col1"><?php echo $form->labelEx($model, 'dos_module_item_cat_cat_id') ?></div>
        <div class="col2">
            <?php echo $form->dropDownList($model, 'dos_module_item_cat_cat_id', CHtml::listData($list_item_cat, 'cat_id', 'cat_title')); ?>
        </div>
        <div class="clear space"></div>
    <?php endif; ?>

    <div class="col1"><?php echo $form->labelEx($model, 'title') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'title', $htmlOptions = array('class' => 'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'detail') ?></div>
    <div class="col2">
        <?php echo $form->textArea($model, 'detail', $htmlOptions = array('cols' => 20, 'rows' => 10)); ?>
        <script type="text/javascript">
            //<![CDATA[
            CKEDITOR.replace('<?php echo get_class($model) ?>[detail]');
            //]]>
        </script>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'unit') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'unit', $htmlOptions = array('class' => 'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'tag') ?></div>
    <div class="col2">
        <?php echo $form->textField($model, 'tag', $htmlOptions = array('class' => 'txt-very-large')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'description') ?></div>
    <div class="col2">
        <?php echo $form->textArea($model, 'description', $htmlOptions = array('cols' => 89, 'rows' => 5)); ?> <span class="info-keyup">0</span>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'pic_thumb') ?></div>
    <div class="col2">
        <?php echo $form->fileField($model, 'pic_thumb', array('class' => 'fileupload')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'pic_full') ?></div>
    <div class="col2">
        <?php echo $form->fileField($model, 'pic_full', array('class' => 'fileupload')); ?>
    </div>
    <div class="clear space"></div>

    <!-- <p class="rows"><a href="#" id="add-rows">Hình mô tả</a></p> -->

    <div class="col1"><?php echo $form->labelEx($model, 'hot', $htmlOptions = array('for' => ucfirst($this->ID) . '_hot_0')) ?></div>
    <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'hot', array('0' => 'Bình thường', '1' => 'Nổi bật'), array('separator' => '&nbsp;&nbsp;')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1"><?php echo $form->labelEx($model, 'enable', $htmlOptions = array('for' => ucfirst($this->ID) . '_enable_0')) ?></div>
    <div class="col2 radio">
        <?php echo $form->radioButtonList($model, 'enable', array('1' => 'Hiển thị', '0' => 'Ẩn'), array('separator' => '&nbsp;&nbsp;')); ?>
    </div>
    <div class="clear space"></div>

    <div class="col1">&nbsp;</div>
    <div class="col2">
        <?php echo CHtml::submitButton('Thêm mới', array('name' => 'submit', 'class' => 'login', 'title' => 'Thêm mới')); ?>
        <?php echo Chtml::link('Hủy bỏ', 'javascript:history.back()', $htmlOptions = array('class' => 'login-a', 'title' => 'Back')) ?>
    </div>
    <div class="clear space"></div>
</fieldset>
<?php $this->endWidget(); ?>
<?php $this->widget('ext.seoAlias.seoAlias', array('model' => $model, 'source' => 'title', 'target' => 'tag')); ?>
<!-- <script type="text/javascript">
    $(document).ready(function(){
        $("#add-rows").click(function(){
            $(".rows").before('<div class="col1">Hình mô tả</div><div class="col2"><input type="file" name="<?php echo ucfirst($this->ID) ?>[pic_desc][]" size="40%" /></div><div class="clear space"></div>');
            return false;
        });
    });
</script> -->