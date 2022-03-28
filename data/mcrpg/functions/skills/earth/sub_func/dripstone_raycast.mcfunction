scoreboard players remove @s mcrpg_rcdist 1
summon minecraft:falling_block ~ ~1.2 ~ {Motion:[0.0,0.05,0.0],DropItem:0b, HurtEntities: 1,BlockState:{Properties:{waterlogged:"false",thickness:"tip",vertical_direction:"down"}, Name:"minecraft:pointed_dripstone"},Time:1,FallHurtAmount:8.0f,FallHurtMax:8}

execute if score @s mcrpg_rcdist matches 1.. positioned ^ ^ ^.7 if block ~ ~ ~ #mcrpg:no_collision run function mcrpg:skills/earth/sub_func/dripstone_raycast