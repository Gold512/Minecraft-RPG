# function mcrpg:book/auto_update
# execute as @a[predicate=mcrpg:offhand] at @s run function mcrpg:event/switch/oh
# execute as @a[predicate=mcrpg:mainhand] at @s run function mcrpg:event/switch/mh

execute as @a[predicate=mcrpg:switch_event] at @s run function mcrpg:event/switch

execute as @a[scores={mcrpg_coas_use=1..}] at @s run function mcrpg:event/rclick
execute as @a[scores={mcrpg_skill_id=-2147483648..2147483647}] at @s run function mcrpg:event/subfunc/rclick/cast/tick

scoreboard players set @a[scores={mcrpg_shifting=1..}] mcrpg_shifting 0

scoreboard players add @a mcrpg_manaTimer 1

execute as @a[gamemode=!creative,gamemode=!spectator] run function mcrpg:other/statbar

execute as @a[scores={mcrpg_manaTimer=30..}] run function mcrpg:other/regen_mana

# death event
execute as @a[scores={mcrpg_deaths=1..}] run function mcrpg:event/death

# trigger functions
execute as @a[scores={mcrpg_settings_menu=1..}] run function mcrpg:text/triggers/settings
execute as @a[scores={mcrpg_stat_menu=1..}] run function mcrpg:level/stat_menu_trigger
execute as @a[scores={mcrpg_item=1..}] run function mcrpg:text/item/trigger

execute as @e[type=armor_stand,tag=mcrpg_init] run function mcrpg:block/check

# altar block stuff
execute as @e[type=armor_stand,tag=mcrpg_model_altar] at @s unless block ~ ~1 ~ lodestone run function mcrpg:block/altar/break

# shield block
execute as @e[type=armor_stand,tag=mcrpg_model_shield] at @s unless block ~ ~ ~ brown_stained_glass at @s run function mcrpg:block/shield/break

# player damage module
function mcrpg:damage/player/main


# dash
execute as @a[scores={mcrpg_dash=1..}] at @s run function mcrpg:skills/sub_func/dash_tick
execute as @a[scores={mcrpg_cd=1..}] run scoreboard players remove @s mcrpg_cd 1

function mcrpg:level/tick
execute as @e[tag=dmy] at @s positioned ~ ~1 ~ run particle enchanted_hit ^ ^ ^2.5 0 0 0 0 1 force @p

# general water missile functions 
execute as @e[tag=missile,type=marker] at @s run function mcrpg:skills/water/subfunc/water_missile/proj_tick

# custom particles
execute as @e[type=snowball,scores={mcrpg_life=-2147483648..2147483647}] run function mcrpg:general/particle_tick

execute as @a at @s as @e[type=item_frame,tag=room_enter_trigger,dx=0,dy=.5,dz=0] at @s run function mcrpg:structure/dungeon/components/mob_room/event/player_enter