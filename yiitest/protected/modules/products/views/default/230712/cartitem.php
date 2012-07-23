<?php $this->breadcrumbs = array($this->lang[$this->module->id] => Yii::app()->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link'), $this->lang['cart']); ?>
<?php $this->pageTitle = $this->lang['cart'] . ' - ' . $this->lang[$this->module->id]; ?>
<div class="main-line-top"><div><div>&nbsp;</div></div></div> <!--End main-content-top -->  
	<div class="main-content">
		<h2 class="title-right"><span><?php echo Yii::t('user', 'shoppingcart')?></span></h2>
		<div class="frame-tent-right">
		<form name="order" action="" method="post" >
			<table class="form_order" cellspacing="0" cellpadding="5" width="100%">
				<thead>
					<tr align="center">
						<td width="150"><?php echo Yii::t('user', 'picture')?></td>
						<td><?php echo Yii::t('user', 'products.name')?></td>
						<td><?php echo Yii::t('user', 'unit')?></td>
						<td width="80"><?php echo Yii::t('user', 'number')?></td>
						<td><?php echo Yii::t('user', 'cash')?></td>
						<td width="40"><?php echo Yii::t('user', 'remove')?></td>
					</tr>
				</thead>
				<tbody>
					<?php
					if ($Items): $total = 0;
						foreach ($Items as $k => $v):
							$url = '<a href="'.Yii::app()->baseUrl . LANGURL . '/' . Yii::t('user', $this->module->id . '.link') . '/' . $v['ProductsCat']['tag'.LANG] .'/'.$v['tag'.LANG].'.html" title="'.$v['title'.LANG].'">';
							$pic = ($v['pic_thumb'] != '') ? '<img src="'.Yii::app()->baseUrl.USERFILES.'/'.$this->module->id.'/'.$v['pic_thumb'] .'" alt="'.$v['title'.LANG] .'" />' : '<img src="'.Yii::app()->theme->baseUrl.'/images/no-images.jpg" alt="'.$v['title'.LANG].'" />';
							$name = $v['title' . LANG] . ' - ' . $v['ProductsCat']['cat_title' . LANG];
							$price = $v['unit'];
							$num_of_dates = '<input  name="num_of_dates[' . $v['record_id'].']" value="'.$carts[$v['record_id']].'" style="width:30px;text-align: center;" maxlength="3" />';
							$total_item = $price * $carts[$v['record_id']];
							$total += $total_item;
							$link_del = '<a href="' . Yii::app()->baseUrl.'/products/default/cartdelete/id/' . $v['record_id'] . '" title="Del ' . $name . '"><img src="' . Yii::app()->theme->baseUrl . '/images/delete-cart.png" alt="delete cart" /></a>';
							?>
							<tr align="center">
								<td class="pic-order"><?php echo $url . $pic ?></a></td>
								<td><?php echo $url ?><strong><?php echo $name ?></strong></a></td>
								<td><?php echo Common::getPrice($price) ?></td>
								<td><?php echo $num_of_dates ?></td>
								<td><strong><?php echo Common::getPrice($total_item) ?></strong></td>
								<td><?php echo $link_del ?></td>
							</tr>
							<?php endforeach;?>
						<tr><td colspan="4" style="padding:5px; text-align: right"><strong><?php echo Yii::t('user', 'sum')?>:</strong></td><td align="center"><strong><?php echo Common::getPrice($total)?></strong> VND</td><td></td></tr>
					<?php else:?>
						<tr><td colspan="6" style="padding:5px"><?php echo Yii::t('user', 'emptycart') ?></td></tr>
					<?php endif?>
				</tbody>
			</table>
			<div class="panel-order">
				<input type="submit" value="<?php echo Yii::t('user', 'products.purchase.shopping')?>" title="<?php echo Yii::t('user', 'products.purchase.shopping')?>" class="btn_order" />
				<a href="javascript:history.back()" class="btn_order" title="<?php echo Yii::t('user', 'products.continue.shopping')?>"><?php echo Yii::t('user', 'products.continue.shopping')?></a>
				<a href="<?php echo Yii::app()->baseUrl . LANGURL?>/<?php echo Yii::t('user', 'products.link')?>/<?php echo Yii::t('user', 'products.delallcart.link')?>" class="btn_order" title="<?php echo Yii::t('user', 'products.delallcart.name')?>"><?php echo Yii::t('user', 'products.delallcart.name')?></a>
			</div>
		</form>
		</div>
	</div> 
<div class="main-content-bottom"></div> <!--End main-content-bottom-->  