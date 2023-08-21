execute store result score .state mcrpg run data get storage mcrpg state[1]
execute if score @s mcrpg_menu_y matches ..100 unless score .height mcrpg matches ..100 unless score .state mcrpg matches 1 run function mcrpg:text/item/equip/menu/skills/magic/check/folded/water
execute if score .state mcrpg matches 1 run function mcrpg:text/item/equip/menu/skills/magic/water