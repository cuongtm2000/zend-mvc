<?php $this->breadcrumbs = array($this->lang[$this->module->id] => LANGURL . '/' . Yii::t('user', $this->module->id . '.link'), $item[ucfirst($this->module->id) . 'Cat']['cat_title' . LANG] => '../' . $item->NewsCat->tag, $item['title' . LANG]); ?>
<?php $this->pageTitle = $item['title' . LANG]; $this->description = $item['description'.LANG];?>

<?php echo $item['content'.LANG] ?>