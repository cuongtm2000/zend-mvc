
<?php
$children=  explode('|', $info->four_child);
?>
<div class="diagram">
    <h4 class="level-1"><?php echo $info->dos_module_usernames_username ?></h4>
    <h4 class="level-2-1"><?php echo $info->left_child." " ?></h4>
    <h4 class="level-2-2"><?php echo $info->right_child." " ?></h4>
    <h4 class="level-3-1"><?php echo isset($children[0])?$children[0]:" " ?></h4>
    <h4 class="level-3-2"><?php echo isset($children[1])?$children[1]:" " ?></h4>
    <h4 class="level-3-3"><?php echo isset($children[2])?$children[2]:" " ?></h4>
    <h4 class="level-3-4"><?php echo isset($children[3])?$children[3]:" " ?></h4>
</div>