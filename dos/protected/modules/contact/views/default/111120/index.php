<?php $this->breadcrumbs = array($this->lang[$this->module->id] => LANGURL . '/' . $this->module->id); ?>
<?php if ($item): ?>
    <?php
    $this->pageTitle = $item['title' . LANG];
    $this->description = $item['description'];
    ?>

    <h2 class="title-contact"><?php echo $item['title' . LANG] ?></h2>
    <?php echo $item['content' . LANG] ?>
    <form id="frm" name="frm" action="" method="post"  onsubmit="return validatecheck();">
        <ul class="frame-contact">
            <li class="left"><p>Name: <span>*</span></p><input type="text" name="fullname" value="" /></li>
            <li><p>Email: <span>*</span></p><input type="text" name="email" value="" /></li>
            <li><p>Telephone: <span>*</span></p><input type="text" name="phone" value="" /></li>
            <li><p>Content: <span>*</span></p><textarea name="content" rows="10" cols="" ></textarea></li>						
        </ul>                  
        <input type="submit" class="singin" title="Submit"  value="Submit"/>  
    </form>
    <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl ?>/js/contact.js"></script>
    <!--End Page tent right-->
<?php endif; ?>