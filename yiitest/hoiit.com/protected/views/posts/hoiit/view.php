<?php $this->breadcrumbs = array('Posts' => Yii::app()->request->baseUrl . '/posts', $detail['cat_name'] => './'); ?>
<?php $this->pageTitle = $detail['post_title'] . ' - ' . $detail['cat_name']; $this->keywords = CHtml::encode($detail['post_description']); $this->description = CHtml::encode($detail['post_description'])?>
<h1 class="title-view"><strong><?php echo $detail['post_title']?></strong></h1>
<?php echo $detail['post_detail']?>

<!-- Place this tag where you want the +1 button to render -->
Nếu bài viết hay hãy bấm vào đây <div class="g-plusone" data-size="medium"></div>
<script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>

<?php if (!Yii::app()->user->isGuest): ?>
    <div class="comment">
        <div class="panel">
            <?php $form = $this->beginWidget('CActiveForm', array('enableAjaxValidation' => true, 'enableClientValidation' => true)); ?>
            <?php echo $form->errorSummary($comment, ''); ?>
            <div><?php echo $form->labelEx($comment, 'comment_title') ?>
                <?php echo $form->textField($comment, 'comment_title', array('class' => 'smallfield')); ?>
            </div>

            <div>
                <?php echo $form->labelEx($comment, 'comment_content') ?>
                <?php echo $form->textArea($comment, 'comment_content', array('cols' => 90, 'rows' => 7)); ?>
            </div>
            <div><label>&nbsp;</label><?php echo CHtml::submitButton('  Submit  ', array('name' => 'submit', 'class' => 'btn-comment')); ?></div>
            <?php $this->endWidget(); ?>
        </div>
    </div>
<?php endif; ?>

<?php foreach ($listComment as $value):?>
<div class="comment-item">	
    <div class="avatar">
        <img src="<?php echo Yii::app()->theme->baseUrl?>/images/no-avatar.png" alt="<?php echo $value['hoiit_usernames_username']?>" />
    </div>
    <p>
        <a href="#comment-<?php echo $value['comment_id']?>" name="comment-<?php echo $value['comment_id']?>" title="<?php echo $value['hoiit_usernames_username']?>"><?php echo $value['comment_title']?> - <?php echo $value['hoiit_usernames_username']?></a>
        <span class="comment-time"><?php echo date('Y-m-d H:i', strtotime($value['comment_date']))?></span>
        <span class="comment-content"><?php echo $value['comment_content']?></span>
        <span class="dialog"></span>
    </p> 
</div>
<?php endforeach;?>