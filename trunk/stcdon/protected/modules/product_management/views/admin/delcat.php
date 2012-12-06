<form action="" method="post" name="frm">
    <fieldset>
        <legend>Xóa danh mục</legend>

        <div class="col-left"><strong>Tên phân loại:</strong></div>
        <div class="col-right">
            <strong><?php echo $infocat ?></strong>
        </div>
        <div class="clear space"></div>

        <div class="col-left">Số sản phẩm thuộc phân loại này:</div>
        <div class="col-right">
            <strong><?php echo $numcat ?></strong>
        </div>
        <div class="clear space"></div>

        <div class="col-left"><strong>Các phân loại con:</strong></div>
        <div class="col-right">
            <strong><?php echo $subcat['sub_cat_num'] ?></strong>
        </div>
        <div class="clear space"></div>

        <div class="col-left">Số sản phẩm thuộc các con:</div>
        <div class="col-right">
            <strong><?php echo $subcat['sub_num_item'] ?></strong>
        </div>
        <div class="clear space"></div>

        <div class="col-left"><strong>Xóa sản phẩm</strong></div>
        <div class="col-right"></div>
        <div class="clear space"></div>

        <div class="col-left"><label style="width:340px"><input type="radio" name="delitems" checked="checked" value="del" /> Xóa tất cả sản phẩm của phân loại này</label></div>
        <div class="col-right"></div>
        <div class="clear space"></div>

        <?php if ($listcat): ?>
            <div class="col-left"><label style="width:340px"><input type="radio" name="delitems" value="move" /> Di chuyển tất cả sản phẩm này đến phân loại</label></div>
            <div class="col-right">
                <select name="catmove" class="select-55">
                    <?php foreach ($listcat as $value): ?>
                        <option value="<?php echo $value['cat_id'] ?>"><?php echo $value['cat_title_prefix'] ?></option>
                    <?php endforeach ?>
                </select>
            </div>
            <div class="clear space"></div>
        <?php endif; ?>

        <div class="col-left"><strong>Xóa Các phân loại con</strong></div>
        <div class="col-right"></div>
        <div class="clear space"></div>

        <div class="col-left"><label style="width:340px"><input type="radio" name="delcat" value="del" checked="checked" /> Xóa tất cả các phân loại con: </label></div>
        <div class="col-right"></div>
        <div class="clear space"></div>

        <div style="margin-left:20px">
            <div class="col-left"><label style="width:340px"><input type="radio" name="movecat" value="del" checked="checked" />Xóa tất cả sản phẩm của phân loại con</label></div>
            <div class="col-right"></div>
            <div class="clear space"></div>
        </div>

		<?php if ($listcat): ?>
		<div style="margin-left:20px">
			<div class="col-left"><label style="width:340px"><input type="radio" name="movecat" value="move" />Di chuyển tất cả sản phẩm của phân loại con đến phân loại:</label></div>
			<div class="col-right">
				<select name="moveprotocat" class="select-55">
					<?php foreach ($listcat as $value): ?>
					<option value="<?php echo $value['cat_id'] ?>"><?php echo $value['cat_title_prefix'] ?></option>
					<?php endforeach ?>
				</select>
			</div>
			<div class="clear space"></div>
		</div>
		<?php endif; ?>

		<?php if ($listcat): ?>
		<div class="col-left"><label style="width:340px"><input type="radio" name="delcat" value="move" /> Di chuyển tất cả các phân loại con này đến phân loại:</label></div>
		<div class="col-right">
			<select name="movetocat" class="select-55">
				<?php foreach ($listcat as $value): ?>
				<option value="<?php echo $value['cat_id'] ?>"><?php echo $value['cat_title_prefix'] ?></option>
				<?php endforeach ?>
			</select>
		</div>
		<div class="clear space"></div>
		<?php endif; ?>

        <div class="col-left"><label></label></div>
        <div class="col-right">
            <input type="submit" onclick="return confirm('Bạn có chắc chắn xóa?')" value="    Xóa    " />
        </div>
        <div class="clear space"></div>
    </fieldset>
</form>