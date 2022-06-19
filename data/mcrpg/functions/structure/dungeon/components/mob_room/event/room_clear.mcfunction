title @a[dx=7,dy=3,dz=7] title {"text":"Room Cleared","color":"green"}
summon marker ~ ~ ~ {Tags:["coords"]}

# unblock entrances 
data modify entity @e[type=marker,tag=coords,limit=1,sort=nearest] Pos set from entity @s Item.tag.entrance
execute at @e[type=marker,tag=coords,limit=1,sort=nearest] run fill ~ ~ ~ ~ ~1 ~ air 

# spawn reward chest
data modify entity @e[type=marker,tag=coords,limit=1,sort=nearest] Pos set from entity @s Item.tag.center
execute at @e[type=marker,tag=coords,limit=1,sort=nearest] run setblock ~ ~ ~ chest{LootTable:"mcrpg:chest/medium_room_clear"}

data modify entity @e[type=marker,tag=coords,limit=1,sort=nearest] Pos set from entity @s Item.tag.barrier
execute at @e[type=marker,tag=coords,limit=1,sort=nearest] run fill ~ ~ ~ ~ ~1 ~ air 

kill @e[type=marker,tag=coords,limit=1]
kill @s