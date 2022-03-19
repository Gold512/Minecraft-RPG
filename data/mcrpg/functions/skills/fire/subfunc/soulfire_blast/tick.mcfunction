particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
particle soul ~ ~ ~ 0 0 0 0.032 2 force

scoreboard players set .hit mcrpg 0 
execute as @e[dx=0,tag=!mcrpg_caster,type=!#mcrpg:no_xp] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] run function mcrpg:skills/fire/subfunc/soulfire_blast/hit

scoreboard players add @s mcrpg_rcdist 1

# block collision animation
execute if score .hit mcrpg matches 1 run function mcrpg:skills/fire/subfunc/soulfire_blast/collision
execute unless score .hit mcrpg matches 1 unless block ~ ~ ~ #mcrpg:no_collision run function mcrpg:skills/fire/subfunc/soulfire_blast/collision

execute if entity @s[scores={mcrpg_rcdist=..72}] if block ~ ~ ~ #mcrpg:no_collision unless score .hit mcrpg matches 1 positioned ^ ^ ^.3 run function mcrpg:skills/fire/subfunc/soulfire_blast/tick
