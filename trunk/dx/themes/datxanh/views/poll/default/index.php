
<?php
$this->breadcrumbs = array($this->lang[$this->module->id]);

$i = 1;
$sum = 0;

if ($item):
    foreach ($item->Answers as $value) {
        $sum+=$value['num_vote'];
    }
    if ($sum == 0)
        $sum = -1;
?>
<div class="frame-panel">
    <?php if ($time_remain == -1): ?>
        <p style="color: #0000ff;padding-top:10px"><strong>Hệ thống đã ghi nhận bình chọn của bạn.</strong></p>
    <?php elseif ($time_remain > 0): ?>
        <p style="color: #0000ff;padding-top:10px"><strong>Bạn mới vừa bình chọn xong. Hãy thử lại sau <?php echo number_format(60 - $time_remain / 60) ?> phút nữa</strong></p>
    <?php endif; ?>

    <h3><?php echo $item['question']; ?></h3>
    <div id="poll-results">
        <dl class="graph">
            <?php foreach ($item->Answers as $value) : ?>
                <dt class="bar-title">
                <?php
                if ($value['url'] != '')
                    echo '<a target="_blank" href="' . $value['url'] . '" title="' . $value['answer'] . '">' . $value['answer'] . '</a>';
                else
                    echo $value['answer'];
                ?>
                </dt>
                <dd class="bar-container">
                    <div style="width: <?php echo ($value['num_vote'] * 100 / $sum). '%'; ?>; display: block;" id="bar<?php echo $i++; ?>">&nbsp;</div>
                    <strong><?php echo number_format($value['num_vote'] * 100 / $sum, 1); ?>%</strong>
                </dd>  
            <?php endforeach; ?>
        </dl>
	</div> <div class="clear"></div>

    <p style="padding-top:10px">
        <strong>Tổng số</strong>: <?php echo $sum == -1 ? '0' : number_format($sum); ?> lượt - <strong>Tính từ ngày:</strong>
        <?php echo date('d-m-Y', $item['begin_date']); ?>
    </p>




    <script type="text/javascript">
        //<![CDATA[
        $(document).ready(function(){
            if ($("#poll-results").length > 0) {
                animateResults();
            }
        });
        function animateResults(){
            $("#poll-results div").each(function(){
                var percentage = $(this).next().text();
                $(this).css({
                    width: "0%"
                }).animate({
                    width: percentage
                }, 'slow');
            });
        }
        //]]>
    </script>
</div>	
<?php endif; ?>





