<?php $this->pageTitle = $item['title'.LANG] . ' - ' . $item[ucfirst($this->module->id).'Cat']['cat_title' . LANG] . ' - ' . $this->lang[$this->module->id]; $this->description = $item['description'.LANG];?>
<h3 class="title-right"><span><?php echo $item['title'.LANG] ?></span></h3>
<div class="frame-tent-right" style="text-align:center">
<script type="text/javascript">embedyoutube('<?php echo $item['url'] ?>',600,450);</script>
</div>
<?php if($item_other):?>
<h3 class="title-right"><span><?php echo $this->lang[$this->module->id]?> <?php echo strtolower($this->lang['other'])?></span></h3>
<ul class="all-product">
    <?php foreach($item_other as $value):?>
    <li class="product">
        <div class="product-img">
            <a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $value[ucfirst($this->module->id).'Cat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG]?>">
                <?php if($value['pic_thumb']):?>
                <img src="<?php echo Yii::app()->baseUrl.USERFILES ?>/<?php echo $this->module->id?>/<?php echo $value['pic_thumb'] ?>" alt="<?php echo $value['title'.LANG] ?>" />
                <?php else :?>
                <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/no-images.jpg" alt="<?php echo $value['title'.LANG] ?>" />
                <?php endif?>
            </a>
        </div>
        <h2 class="title-pro"><a href="<?php echo Yii::app()->request->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $value[ucfirst($this->module->id).'Cat']['tag'.LANG] ?>/<?php echo $value['tag'.LANG] ?>.html" title="<?php echo $value['title'.LANG]?>"><?php echo $value['title'.LANG]?></a></h2>
    </li>
    <?php endforeach?>
</ul>
<?php endif;?>