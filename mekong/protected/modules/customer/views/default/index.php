<?php $this->breadcrumbs = array($this->lang[$this->module->id]); ?><?php $this->pageTitle = $this->lang[$this->module->id];$this->setDescription() ?><div class="frame-panel">    <?php if ($item): ?>    <?php foreach ($item['models'] as $value): ?>            <div>                <a href="<?php echo Yii::app()->baseUrl. '/khach-hang/'.$value['tag'].'.html' ?>">                    <img src="<?php echo Yii::app()->baseUrl . Yii::getPathOfAlias('filePathUpload') . '/image/' . $this->module->id . '/' . $value->pic_thumb ?>" alt="<?php echo $value['title'] ?>" />                 </a>                               <p><?php echo $value['title'] ?></p>            </div>        <?php endforeach; ?>    <?php else: ?>        No record<?php endif; ?></div>