<?php $this->breadcrumbs = array($this->lang[$this->module->id] => array($this->setUrlModule()), $item['title']); ?><div class="frame-panel">    <?php if($item):?>        <h2 class="title-right"><?php echo $item['title']?></h2>        <div class="frame-tent-right">            <?php echo $item['content']?>        </div>    <?php endif?></div>