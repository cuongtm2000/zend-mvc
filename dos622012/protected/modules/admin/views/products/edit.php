<div class="content">    
    <?php $form = $this->beginWidget('CActiveForm', array('id'=>'frm', 'enableAjaxValidation'=>true, 'enableClientValidation' =>true, 'htmlOptions'=>array('enctype' =>'multipart/form-data')));?>
        <?php echo $form->errorSummary($model, ''); ?>
        <fieldset>
            <legend>Chỉnh sửa bài viết</legend>
            
            <div class="col1"><?php echo $form->labelEx($model, 'dos_module_product_cats_cat_id') ?></div>
    	    <div class="col2">
                <?php echo $form->dropDownList($model, 'dos_module_product_cats_cat_id', CHtml::listData($model->listItemCat(), 'cat_id', 'cat_title')); ?>
    	    </div>
    	    <div class="clear space"></div>
            
            <div class="col1"><?php echo $form->labelEx($model, 'title') ?></div>
            <div class="col2">
                <?php echo $form->textField($model, 'title', $htmlOptions=array('class'=>'txt-very-large')); ?>
            </div>
            <div class="clear space"></div>
            
            <div class="col1"><?php echo $form->labelEx($model, 'detail') ?></div>
            <div class="col2">
                <?php echo $form->textArea($model, 'detail', $htmlOptions=array('cols'=>20, 'rows'=>10)); ?>
                <script type="text/javascript">
                //<![CDATA[
                	CKEDITOR.replace('<?php echo get_class($model)?>[detail]');
                //]]>
                </script>
            </div>
            <div class="clear space"></div>
            
            <div class="col1"><?php echo $form->labelEx($model, 'unit') ?></div>
            <div class="col2">
                <?php echo $form->textField($model, 'unit', $htmlOptions=array('class'=>'txt-very-large')); ?>
            </div>
            <div class="clear space"></div>
            
            <div class="col1"><?php echo $form->labelEx($model, 'tag') ?></div>
            <div class="col2">
                <?php echo $form->textField($model, 'tag', $htmlOptions=array('class'=>'txt-very-large')); ?>
            </div>
            <div class="clear space"></div>
            
            <div class="col1"><?php echo $form->labelEx($model, 'description') ?></div>
            <div class="col2">
                <?php echo $form->textArea($model, 'description', $htmlOptions=array('cols'=>89, 'rows'=>5)); ?> <span class="info-keyup">0</span>
            </div>
            <div class="clear space"></div>
            
            <div class="col1"><?php echo $form->labelEx($model, 'pic_thumb') ?></div>
            <div class="col2">
                <?php if($model->pic_thumb): ?>
                    <div class="img-marginb5"><img src="<?php echo Yii::app()->request->baseUrl.USERFILES.'/'.$this->getId().'/'.$model->pic_thumb ?>" alt="" />
                    <?php echo $form->checkBox($model, 'remove_pic_thumb') ?><?php echo $form->labelEx($model, 'remove_pic_thumb', array('class'=>'remove')) ?>
                    </div>
                <?php endif;?>
                <?php echo $form->fileField($model, 'pic_thumb', array('class'=>'fileupload', 'size'=>'40%')); ?>
            </div>
            <div class="clear space"></div>
            
            <div class="col1"><?php echo $form->labelEx($model, 'pic_full') ?></div>
            <div class="col2">
                <?php echo $form->fileField($model, 'pic_full', array('class'=>'fileupload', 'size'=>'40%')); ?>
                <?php if($model->pic_full): ?>
                    <a class="nyroModal" href="<?php echo Yii::app()->request->baseUrl.USERFILES.'/'.$this->getId().'/'.$model->pic_full ?>">Xem ảnh lớn</a>
                <?php endif;?>
            </div>
            <div class="clear space"></div>
            
            <?php if($model->pic_desc): ?>
                <?php $str = explode('|', $model->pic_desc); ?>
                <?php foreach ($str as $value): ?>
                    <div class="col1"><?php echo $form->labelEx($model, 'pic_desc') ?></div>
                    <div class="col2">
                        <a class="nyroModal" href="<?php echo Yii::app()->request->baseUrl.USERFILES.'/'.$this->getId().'/'.$value ?>">Xem ảnh lớn</a>
                        <label class="remove"><input type="checkbox" value="<?php echo $value ?>" name="<?php echo ucfirst($this->ID) ?>[remove_pic_desc][]" /> Remove</label>
                    </div>
                    <div class="clear space"></div>
                <?php endforeach; ?>
            <?php endif;?>
            
            <p class="rows"><a href="#" id="add-rows">Hình mô tả</a></p>
            
            <div class="col1"><?php echo $form->labelEx($model, 'hot', $htmlOptions=array('for'=>ucfirst($this->ID).'_hot_0')) ?></div>
    	    <div class="col2 radio">
                <?php echo $form->radioButtonList($model, 'hot', array('0'=>'Bình thường', '1'=>'Nổi bật'), array('separator'=>'&nbsp;&nbsp;')); ?>
    	    </div>
    	    <div class="clear space"></div>
            
            <div class="col1"><?php echo $form->labelEx($model, 'enable', $htmlOptions=array('for'=>ucfirst($this->ID).'_enable_0')) ?></div>
    	    <div class="col2 radio">
                <?php echo $form->radioButtonList($model, 'enable', array('1'=>'Hiển thị', '0'=>'Ẩn'), array('separator'=>'&nbsp;&nbsp;')); ?>
    	    </div>
    	    <div class="clear space"></div>
            
            <div class="col1">&nbsp;</div>
    	    <div class="col2">
                <?php echo CHtml::submitButton('Chỉnh sửa', array('name'=>'submit', 'class'=>'login', 'title'=>'Chỉnh sửa')); ?>
                <?php echo Chtml::link('Hủy bỏ', 'javascript:history.back()', $htmlOptions=array('class'=>'login-a', 'title'=>'Back')) ?>
    	    </div>
    	    <div class="clear space"></div>
        </fieldset>
    <?php $this->endWidget();?>
    <?php $this->widget('ext.seoAlias.seoAlias', array('model'=>$model, 'source'=>'title', 'target'=>'tag')); ?>
    <script type="text/javascript">
	$(document).ready(function(){
	    $("#add-rows").click(function(){
	        $(".rows").before('<div class="col1">Hình mô tả</div><div class="col2"><input type="file" name="<?php echo ucfirst($this->ID) ?>[pic_desc][]" size="40%" /></div><div class="clear space"></div>');
	        return false;
	    });
	});
	</script>
</div>