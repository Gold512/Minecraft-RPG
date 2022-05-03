particle sweep_attack ^.5 ^ ^1.5 0 0 0 1 1 force @a 
particle sweep_attack ^-.5 ^ ^1.5 0 0 0 1 1 force @a 
playsound entity.player.attack.sweep block @a ~ ~ ~
playsound entity.player.attack.sweep block @a ~ ~ ~

execute positioned ^.5 ^ ^1.5 as @e[type=!#mcrpg:no_xp,distance=.5,limit=3] run function mcrpg:skills/socketable/slash/double_slash/dmg
execute positioned ^.5 ^ ^1.5 as @e[type=!#mcrpg:no_xp,distance=.5,limit=3] run function mcrpg:skills/socketable/slash/double_slash/dmg

function mcrpg:level/calc/set_casting_dmg

function mcrpg:damage/type/normal
function mcrpg:damage/mobs

scoreboard players remove @s mcrpg_mana 0