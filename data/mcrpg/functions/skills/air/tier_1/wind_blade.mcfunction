scoreboard players set @s mcrpg_rcdist 20

tag @s add mcrpg_caster
execute anchored eyes positioned ^ ^ ^1.6 run function mcrpg:skills/air/subfunc/wind_blade
tag @s remove mcrpg_caster

function mcrpg:level/calc/set_casting_dmg

function mcrpg:damage/type/normal
function mcrpg:damage/mobs
playsound entity.player.attack.sweep block @a ~ ~ ~
scoreboard players remove @s mcrpg_mana 20