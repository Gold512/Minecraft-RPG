execute store result score .state mcrpg run data get storage mcrpg state[4]
execute if score @s mcrpg_menu_y matches ..400 unless score .height mcrpg matches ..400 unless score .state mcrpg matches 1 run function mcrpg:text/item/equip/menu/skills/magic/check/folded/light
execute if score .state mcrpg matches 1 run function mcrpg:text/item/equip/menu/skills/magic/light