execute as @a[scores={cw_hp_old=1..}] run function mcrpg:damage/player/return_health
execute as @a[gamemode=!creative,gamemode=!spectator,scores={mcrpg_dmg=1..}] run function mcrpg:damage/player/deal_damage
scoreboard players set @a mcrpg_dmg 0