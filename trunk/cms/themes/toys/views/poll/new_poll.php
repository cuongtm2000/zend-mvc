<?php if ($new_poll): ?>
    <h4 class="title-grey"><span>Thăm dò ý kiến</span></h4>
    <div class="panel-polls">
        <p><?php echo $new_poll['question'] ?></p>
        <ul class="sub-polls">
        <?php 
            foreach ($new_poll->Answers as $value) {
                $url_b=($value['url']!='')?'<a target="_blank" href="'.$value['url'].'" title="'.$value['answer'].'">':"";
                $url_e=($value['url']!='')?'</a>':"";
                
                echo '<li><input type="radio" id="vote'.$value['id'].'" name="vote" value="'.$value['id'].'" />'.$url_b.'<label for="vote'.$value['id'].'">'.$value['answer'].'</label>'.$url_e.'</li>';
            }
        
        
        
        ?> 
        </ul>
        <div class="f-action">
            <input onclick="sendvoting(6)" class="button_polls" type="button" value="Bình chọn" />
            <a title="Kết quả" rel="prettyPhoto[iframes]"  href="/vote/index/index/vid/6?iframe=true&amp;width=70%&amp;height=70%" >&nbsp; Kết quả</a>
        </div>
    </div>







<?php endif ?>

