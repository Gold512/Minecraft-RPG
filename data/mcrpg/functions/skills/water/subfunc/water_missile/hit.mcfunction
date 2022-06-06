scoreboard players operation @s mcrpg_normal_dmg = @e[tag=projectile] mcrpg_missile_dmg
scoreboard players operation @s mcrpg_killer_id = @e[tag=projectile] mcrpg_killer_id

tag @s add target
execute as @a if score @s mcrpg_killer_id = @e[tag=projectile,sort=nearest,limit=1] mcrpg_killer_id run data modify entity @e[tag=target,limit=1,sort=nearest] AngryAt set from entity @s UUID
tag @s remove target

function mcrpg:level/calc/set_casting_dmg

function mcrpg:damage/type/normal
function mcrpg:damage/mobs

kill @e[tag=projectile]