
<?php
$children=  explode('|', $info->four_child);
?>
<div class="diagram">
    <h4 class="level-1"><?php echo $info->dos_module_usernames_username ?></h4>
    <h4 class="level-2-1"><?php echo $info->left_child." " ?> Con trai đầu</h4>
    <h4 class="level-2-2"><?php echo $info->right_child." " ?> Con gái đầu</h4>
    <h4 class="level-3-1"><?php echo isset($children[0])?$children[0]:" " ?> Cháu nội</h4>
    <h4 class="level-3-2"><?php echo isset($children[1])?$children[1]:" " ?> Cháu nội</h4>
    <h4 class="level-3-3"><?php echo isset($children[2])?$children[2]:" " ?> Cháu ngoại</h4>
    <h4 class="level-3-4"><?php echo isset($children[3])?$children[3]:" " ?> Cháu ngoại</h4>
</div>