# this function is to be executed as the entity to push away 

execute store result score .ax mcrpg run data get entity @s Pos[0] 1000
execute store result score .ay mcrpg run data get entity @s Pos[1] 1000
execute store result score .az mcrpg run data get entity @s Pos[2] 1000

execute at @s facing entity @p[tag=caster] eyes run tp @s ^ ^ ^-.2

execute store result score .bx mcrpg run data get entity @s Pos[0] 1000
execute store result score .by mcrpg run data get entity @s Pos[1] 1000
execute store result score .bz mcrpg run data get entity @s Pos[2] 1000

scoreboard players operation .bx mcrpg -= .ax mcrpg
scoreboard players operation .by mcrpg -= .ay mcrpg
scoreboard players operation .bz mcrpg -= .az mcrpg

execute if entity @s[type=#mcrpg:fireballs] run function mcrpg:skills/wind/subfunc/push_away/power

# if fireballs do not have motion modified, they will curve
function mcrpg:skills/wind/subfunc/push_away/motion

scoreboard players operation @s mcrpg_sid = @p[tag=caster] mcrpg_sid
