execute store result score .success mcrpg run execute positioned ~ ~5 ~ unless entity @e[type=marker,tag=gen_dungeon,distance=...2] 

execute if score .success mcrpg matches 1 run function mcrpg:structure/dungeon/components/subfunc/stairwell_success 
execute if score .success mcrpg matches 0 run function mcrpg:structure/dungeon/components/subfunc/random