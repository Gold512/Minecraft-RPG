execute store result score .state mcrpg run data get storage mcrpg state[5]
execute if score @s mcrpg_menu_y matches ..500 unless score .height mcrpg matches ..500 unless score .state mcrpg matches 1 run function mcrpg:text/item/equip/menu/skills/magic/check/folded/dark
execute if score .state mcrpg matches 1 run function mcrpg:text/item/equip/menu/skills/magic/dark