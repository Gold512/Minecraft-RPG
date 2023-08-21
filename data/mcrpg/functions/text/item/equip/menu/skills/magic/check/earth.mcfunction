execute store result score .state mcrpg run data get storage mcrpg state[3]
execute if score @s mcrpg_menu_y matches ..300 unless score .height mcrpg matches ..300 unless score .state mcrpg matches 1 run function mcrpg:text/item/equip/menu/skills/magic/check/folded/earth
execute if score .state mcrpg matches 1 run function mcrpg:text/item/equip/menu/skills/magic/earth