execute store success score .state mcrpg run execute if entity @s[tag=mcrpg_cast_cancel]
execute if score .state mcrpg matches 1 run tag @s remove mcrpg_cast_cancel
execute if score .state mcrpg matches 0 run tag @s add mcrpg_cast_cancel