# ranged aoe 
particle soul_fire_flame ~ ~ ~ 0 0 0 .1 128 force @a
execute as @e[distance=..2,type=!#mcrpg:no_xp,tag=!caster] run function mcrpg:skills/fire/subfunc/soulfire_blast/hit