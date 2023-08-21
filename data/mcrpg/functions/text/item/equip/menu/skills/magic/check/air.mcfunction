execute store result score .state mcrpg run data get storage mcrpg state[2]
execute if score @s mcrpg_menu_y matches ..200 unless score .height mcrpg matches ..200 unless score .state mcrpg matches 1 run function mcrpg:text/item/equip/menu/skills/magic/check/folded/air
execute if score .state mcrpg matches 1 run function mcrpg:text/item/equip/menu/skills/magic/air