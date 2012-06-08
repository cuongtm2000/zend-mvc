<h1 class="heading-contact marginb10">Kiểm tra tên miền</h1>

<?php if($domain):?>
    <div class="left" style="width: 200px">
        <?php echo $domain;?>
    </div>
    <div>
        <?php $i=1; foreach ($types as $value):?>
            <div id="result-<?php echo $i?>" class="left" style="width: 80px; background: #ccc; margin-right: 10px">
                <img src="<?php echo Yii::app()->theme->baseUrl ?>/images/ajax-loader.gif" alt="loading" />
            </div>
        <?php $i++; endforeach?>
    </div>
    <script type="text/javascript">
        jQuery(function($) {
            <?php $i=1; foreach ($types as $value):?>
                $("#result-<?php echo $i?>").load("/site/checkDomain/domain/<?php echo $domain.'.'.$value?>");
            <?php $i++; endforeach?>
        });
    </script>
<?php else:?>
   Ten mien khong duoc rong
<?php endif?>