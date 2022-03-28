scoreboard objectives add mcrpg_hp health
scoreboard objectives add mcrpg_fp food
scoreboard objectives add mcrpg_ap armor

scoreboard objectives add mcrpg_money dummy
scoreboard objectives add mcrpg_level dummy

# detection scoreboards
scoreboard objectives add mcrpg_coas_use minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add mcrpg_shifting minecraft.custom:minecraft.sneak_time

scoreboard objectives add mcrpg_deaths deathCount

# scoreboard objectives add mcrpg_d_dmg minecraft.custom:minecraft.damage_dealt
# scoreboard objectives add mcrpg_d_absorbed minecraft.custom:minecraft.damage_dealt_absorbed
# scoreboard objectives add mcrpg_d_resisted minecraft.custom:minecraft.damage_dealt_resisted
# 
# scoreboard objectives add mcrpg_t_dmg minecraft.custom:minecraft.damage_taken
# scoreboard objectives add mcrpg_t_absorbed minecraft.custom:minecraft.damage_absorbed
# scoreboard objectives add mcrpg_t_resisted minecraft.custom:minecraft.damage_resisted
# scoreboard objectives add mcrpg_t_blocked minecraft.custom:minecraft.damage_blocked_by_shield

# if there is no value, add default value
execute as @a unless score @s mcrpg_money = @s mcrpg_money run scoreboard players set @s mcrpg_money 100
execute as @a unless score @s mcrpg_level = @s mcrpg_level run scoreboard players set @s mcrpg_level 1

# dummy position commands
scoreboard objectives add mcrpg_ax dummy
scoreboard objectives add mcrpg_ay dummy
scoreboard objectives add mcrpg_az dummy

scoreboard objectives add mcrpg_px dummy
scoreboard objectives add mcrpg_py dummy
scoreboard objectives add mcrpg_pz dummy

# raycast distance dummy objective
scoreboard objectives add mcrpg_rcdist dummy

# function arguments
scoreboard objectives add mcrpg_pVel dummy

# projectile velocity for shoot foward function set speed to n% of default
execute as @a unless score @s mcrpg_pVel = @s mcrpg_pVel run scoreboard players set @s mcrpg_pVel 100

scoreboard objectives add mcrpg_mana dummy
scoreboard objectives add mcrpg_manaTimer dummy

execute as @a unless score @s mcrpg_mana = @s mcrpg_mana run scoreboard players set @s mcrpg_mana 20
execute as @a unless score @s mcrpg_manaTimer = @s mcrpg_manaTimer run scoreboard players set @s mcrpg_manaTimer 20
execute as @a unless score @s mcrpg_manaRegen = @s mcrpg_manaRegen run scoreboard players set @s mcrpg_manaRegen 3
execute as @a unless score @s mcrpg_maxMana = @s mcrpg_maxMana run scoreboard players set @s mcrpg_maxMana 20

# store wand attack is selected by player
scoreboard objectives add mcrpg_sel_fw dummy

# damage amount
scoreboard objectives add mcrpg_dmg dummy

# used for type damage which is converted to x true damage
# type damage should be converted to true damage before the end of the tick
scoreboard objectives add mcrpg_normal_dmg dummy
scoreboard objectives add mcrpg_magic_dmg dummy

# variable scoreboards
scoreboard objectives add mcrpg dummy
scoreboard objectives add mcrpg1 dummy
scoreboard objectives add mcrpg2 dummy

scoreboard objectives add mcrpg_shield_hp dummy 

scoreboard objectives add mcrpg_dash dummy
execute as @a unless score @s mcrpg_dash = @s mcrpg_dash run scoreboard players set @s mcrpg_dash 0

# UUID storage 
scoreboard objectives add mcrpg_uuid1 dummy
scoreboard objectives add mcrpg_uuid2 dummy
scoreboard objectives add mcrpg_uuid3 dummy
scoreboard objectives add mcrpg_uuid4 dummy

# triggers
scoreboard objectives add mcrpg_ldm trigger
scoreboard objectives add mcrpg_settings_menu trigger

# player damage module
function mcrpg:damage/player/init

# scoreboard ids
scoreboard objectives add mcrpg_sid dummy
scoreboard objectives add mcrpg_killer_id dummy

execute unless score .global mcrpg_sid = .global mcrpg_killer_id run scoreboard players set .global mcrpg_sid 0
execute unless score .global mcrpg_killer_id = .global mcrpg_killer_id run scoreboard players set .global mcrpg_killer_id 0

function mcrpg:level/init

# buttons
scoreboard objectives add mcrpg_spend_stats trigger

# constants
scoreboard objectives add mcrpg_const dummy

scoreboard players set #1000 mcrpg_const 1000
scoreboard players set #100 mcrpg_const 100
scoreboard players set #10 mcrpg_const 10

scoreboard players set #-1 mcrpg_const -1
scoreboard players set #50 mcrpg_const 50
scoreboard players set #40 mcrpg_const 40
scoreboard players set #30 mcrpg_const 30
scoreboard players set #20 mcrpg_const 20

scoreboard players set #2 mcrpg_const 2
scoreboard players set #3 mcrpg_const 3
scoreboard players set #4 mcrpg_const 4
scoreboard players set #5 mcrpg_const 5

execute as @a at @s run tellraw @p {"text":"[ load ] Minecraft RPG system "}

# fix jitter of projectiles 
scoreboard objectives add visfix dummy
scoreboard players set .global visfix 1

# settings scoreboards
scoreboard objectives add mcrpg_st_dm dummy

# water missile damage scoreboard
scoreboard objectives add mcrpg_missile_dmg dummy 

schedule function mcrpg:tick_40t 40t replace

execute as @a unless score @s mcrpg_sid = @s mcrpg_sid run function mcrpg:other/sid/init_player

scoreboard objectives add mcrpg_cd dummy
scoreboard players set @a mcrpg_cd 0