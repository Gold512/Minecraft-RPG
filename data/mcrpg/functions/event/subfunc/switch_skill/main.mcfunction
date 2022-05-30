# -- vars --
# .hand : 1 -> mainhand, 2 -> offhand
# storage mcrpg skills : copy of item skills object
# .skill_index index of skill 

# cycle skill index though skill array 
execute store result score .skill_count mcrpg run data get storage mcrpg skills 
scoreboard players add .skill_index mcrpg 1 
execute if score .skill_index mcrpg >= .skill_count mcrpg run scoreboard players set .skill_index mcrpg 0

# search skills object 
function mcrpg:event/subfunc/switch_skill/get_skill_at_index

execute if score .hand mcrpg matches 1 run function mcrpg:other/edit_item/mh_start
execute if score .hand mcrpg matches 2 run function mcrpg:other/edit_item/oh_start

# modify item data 
data modify entity @e[type=armor_stand,tag=item_holder,limit=1] HandItems[0].tag.mcrpg.selectedSkill set from storage mcrpg skill
execute store result entity @e[type=armor_stand,tag=item_holder,limit=1] HandItems[0].tag.mcrpg.skillIndex int 1 run scoreboard players get .skill_index mcrpg 

execute if score .hand mcrpg matches 1 run function mcrpg:other/edit_item/mh_save
execute if score .hand mcrpg matches 2 run function mcrpg:other/edit_item/oh_save