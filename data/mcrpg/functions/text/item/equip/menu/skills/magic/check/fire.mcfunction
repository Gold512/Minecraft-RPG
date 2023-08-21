execute store result score .state mcrpg run data get storage mcrpg state[0]
execute if score @s mcrpg_menu_y matches ..0 unless score .height mcrpg matches ..0 unless score .state mcrpg matches 1 run function mcrpg:text/item/equip/menu/skills/magic/check/folded/fire
execute if score .state mcrpg matches 1 run function mcrpg:text/item/equip/menu/skills/magic/fire