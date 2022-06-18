execute as @e[type=marker,tag=ungenerated,sort=random] run function mcrpg:structure/dungeon/components/random
scoreboard players remove .max_depth mcrpg 1 
execute if score .max_depth mcrpg matches 1 as @e[type=marker,tag=ungenerated,sort=random] run function mcrpg:structure/dungeon/components/subfunc/end/set_direction
execute if score .max_depth mcrpg matches 2.. if entity @e[type=marker,tag=ungenerated] run function mcrpg:structure/dungeon/subfunc/gen_loop