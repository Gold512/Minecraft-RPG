execute store success score .state mcrpg run execute if entity @s[tag=no_cast_effect]
execute if score .state mcrpg matches 1 run tag @s remove no_cast_effect
execute if score .state mcrpg matches 0 run tag @s add no_cast_effect