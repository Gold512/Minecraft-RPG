execute store result score .attacks mcrpg run data get entity @s SelectedItem.tag.skills
execute store result score .current_attack mcrpg run data get entity @s SelectedItem.tag.mcrpg_atkId
scoreboard players add .current_attack mcrpg 1
execute if score .current_attack mcrpg = .attacks mcrpg run scoreboard players set .current_attack mcrpg 0

data modify storage mcrpg skills set from entity @s SelectedItem.tag.skills

function mcrpg:other/editmh
execute store result entity @e[type=minecraft:armor_stand,tag=mcrpg_item_cont,limit=1,sort=nearest] HandItems[0].tag.mcrpg_atkId int 1 run scoreboard players get .current_attack mcrpg
function mcrpg:item/socketable/subfunc/set_name
function mcrpg:other/savemh
