execute store success score .neg_x mcrpg run execute if entity @s[type=marker,tag=neg_x]
execute store success score .pos_x mcrpg run execute if entity @s[type=marker,tag=pos_x]
execute store success score .neg_y mcrpg run execute if entity @s[type=marker,tag=neg_y]
execute store success score .pos_y mcrpg run execute if entity @s[type=marker,tag=pos_y]

execute if score .neg_x mcrpg matches 1 run particle dust 1 0 0 1
execute if score .pos_x mcrpg matches 1 run particle dust 0 0.184 1 1
execute if score .neg_y mcrpg matches 1 run particle dust 0 1 0.165 1
execute if score .pos_y mcrpg matches 1 run particle dust 0.984 1 0 1
execute unless score .neg_x mcrpg matches 1 unless score .pos_x mcrpg matches 1 unless score .neg_y mcrpg matches 1 unless score .pos_y mcrpg matches 1 run particle dust 1 1 1 1 