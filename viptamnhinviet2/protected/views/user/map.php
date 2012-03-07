
<?php
$this->breadcrumbs = array(
    'Users' => array('index'),
    $tree['value'] => array('view', 'id' => $tree['value']),
    'Sơ đồ cây',
);



Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/jquery.treeview.css');
Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.treeview.js');

?>





<?php

function drawTree($tree, $id, $list) {
    echo '<ul id="' . $id . '" class="filetree">';
    drawNode($tree, $list);
    echo '</ul>';
}

function drawNode($tree, $lst) {
    $class = isset($tree[0]) ? 'folder' : 'file';
    if (in_array($tree['value'], $lst))
        $style = ' style ="color: #FF20FF;" ';
    else
        $style = '';

    echo '<li><span  class="' . $class . '"' . $style . '><b>' . $tree['value'] . '</b> (Trái:<b>' . $tree['c0'] . '</b> - Phải:<b>' . $tree['c1'] . '</b>)</span>';
    if ($class == 'folder') {
        echo '<ul>';
        $i = 0;
        while (isset($tree[$i])) {
            drawNode($tree[$i], $lst);
            $i++;
        }
        echo '</ul>';
    }
    echo '</li>';
}
?>

        <div id="treecontrol">
            <a class="login" title="Collapse the entire tree below" href="#"> Collapse All</a>
            <a class="login" title="Expand the entire tree below" href="#"> Expand All</a>
            <a class="login" title="Toggle the tree below, opening closed branches, closing open branches" href="#">Toggle All</a>
        </div>
        <p>
            <?php $lst = explode('|', $listUserQuanly); ?>
        </p><br />
        <script >
            $(document).ready(function(){
                $("#browser").treeview({
                    control: "#treecontrol",
                    animated:"normal"		
                });	});
        </script>
        <?php drawTree($tree, 'browser', $lst) ?>

