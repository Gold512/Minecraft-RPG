execute store success score .state mcrpg run execute if entity @s[tag=mcrpg_auto_cast]
execute if score .state mcrpg matches 1 run tag @s remove mcrpg_auto_cast
execute if score .state mcrpg matches 0 run tag @s add mcrpg_auto_cast