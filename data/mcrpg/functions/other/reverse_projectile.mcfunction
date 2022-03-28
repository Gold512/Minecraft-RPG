execute store result score @s mcrpg_ax run data get entity @s power[0] 1000
execute store result score @s mcrpg_ay run data get entity @s power[1] 1000
execute store result score @s mcrpg_az run data get entity @s power[2] 1000

function mcrpg:other/calc_reverse

execute if entity @s store result entity @s power[0] double .001 run scoreboard players get @s mcrpg_ax
execute if entity @s store result entity @s power[1] double .001 run scoreboard players get @s mcrpg_ay
execute if entity @s store result entity @s power[2] double .001 run scoreboard players get @s mcrpg_az

execute store result score @s mcrpg_ax run data get entity @s Motion[0] 1000
execute store result score @s mcrpg_ay run data get entity @s Motion[1] 1000
execute store result score @s mcrpg_az run data get entity @s Motion[2] 1000

function mcrpg:other/calc_reverse

execute if entity @s store result entity @s Motion[0] double .001 run scoreboard players get @s mcrpg_ax
execute if entity @s store result entity @s Motion[1] double .001 run scoreboard players get @s mcrpg_ay
execute if entity @s store result entity @s Motion[2] double .001 run scoreboard players get @s mcrpg_az

scoreboard players operation @s mcrpg_sid = @p[tag=caster] mcrpg_sid