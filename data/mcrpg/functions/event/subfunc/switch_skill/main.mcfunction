# -- vars --
# .hand : 1 -> mainhand, 2 -> offhand

execute if score .hand mcrpg matches 1 run function mcrpg:event/subfunc/switch_skill/mh
execute if score .hand mcrpg matches 2 run function mcrpg:event/subfunc/switch_skill/oh

# search skills object 
function mcrpg:event/subfunc/switch_skill/get_skill_at_index

execute if score .hand mcrpg matches 1 run function mcrpg:other/edit_item/mh_start
execute if score .hand mcrpg matches 2 run function mcrpg:other/edit_item/oh_start

execute if score .hand mcrpg matches 1 run data modify entity @e[type=armor_stand,tag=item_holder,limit=1] HandItems[0].tag.mcrpg.selectedSkill set from storage mcrpg skill

execute if score .hand mcrpg matches 1 run function mcrpg:other/edit_item/mh_save
execute if score .hand mcrpg matches 2 run function mcrpg:other/edit_item/oh_save