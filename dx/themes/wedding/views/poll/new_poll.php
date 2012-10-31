<?php if ($new_poll): ?>
    <h4 class="title-left"><span>Thăm dò ý kiến</span></h4>
    <div class="panel-polls">
        <p><?php echo $new_poll['question'] ?></p>
        <ul class="sub-polls">
            <?php
            foreach ($new_poll->Answers as $value) {
                $url_b = ($value['url'] != '') ? '<a target="_blank" href="' . $value['url'] . '" title="' . $value['answer'] . '">' : "";
                $url_e = ($value['url'] != '') ? '</a>' : "";

                echo '<li><input type="radio" id="vote' . $value['id'] . '" name="vote" value="' . $value['id'] . '" />' . $url_b . '<label for="vote' . $value['id'] . '">' . $value['answer'] . '</label>' . $url_e . '</li>';
            }
            ?> 
        </ul>
        <div class="f-action">
            <input class="button_polls" type="button" onclick="sendvoting()" value="Bình chọn" />
        </div>
    </div>

<?php endif ?>

<script type="text/javascript">
    function sendvoting(){
        if($('input[name=vote]:checked').val()==undefined)
            alert('Bạn chưa chọn câu trả lời nào.');
        else
            $(window.location).attr('href', '<?php echo Yii::app()->baseUrl ?>/poll/default/index/vid/<?php echo $new_poll['record_id']; ?>/id/'+$('input[name=vote]:checked').val()); 
    }
    											 
</script>
<div class="bd-bt-left"></div>
