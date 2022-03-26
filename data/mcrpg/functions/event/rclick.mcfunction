scoreboard players reset @s mcrpg_coas_use

data modify storage mcrpg attack set value ""
execute if data entity @s SelectedItem.tag.mcrpg run function mcrpg:event/subfunc/mh_rc
execute unless data entity @s SelectedItem.tag.mcrpg run function mcrpg:event/subfunc/oh_rc
execute unless data storage mcrpg {attack:""} run function mcrpg:event/subfunc/get_wand 