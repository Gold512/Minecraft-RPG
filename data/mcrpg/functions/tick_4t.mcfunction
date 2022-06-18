function mcrpg:other/attempt_craft

execute as @e[type=item_frame,tag=mob_room_trigger] at @s unless entity @e[type=#mcrpg:enemies,dx=7,dy=3,dz=7] run function mcrpg:structure/dungeon/components/mob_room/event/room_clear 

schedule function mcrpg:tick_4t 4t replace