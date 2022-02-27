function mcrpg:other/changeatk
function mcrpg:other/editmh
execute if entity @s[scores={mcrpg=0}] run data modify entity @e[type=minecraft:armor_stand,tag=mcrpg_item_cont,limit=1,sort=nearest] HandItems[0].tag.mcrpg_atkName set value "Dripstone Drop"
execute if entity @s[scores={mcrpg=1}] run data modify entity @e[type=minecraft:armor_stand,tag=mcrpg_item_cont,limit=1,sort=nearest] HandItems[0].tag.mcrpg_atkName set value "Spike Launch"
execute if entity @s[scores={mcrpg=2}] run data modify entity @e[type=minecraft:armor_stand,tag=mcrpg_item_cont,limit=1,sort=nearest] HandItems[0].tag.mcrpg_atkName set value "Earth Shield"
function mcrpg:other/savemh