execute positioned ^ ^ ^.8 if block ~ ~ ~ #mcrpg:weak_or_no_collision run tp @s ~ ~ ~
execute positioned ~ ~.8 ~ positioned ^ ^ ^-.5 run particle cloud ~ ~ ~ .2 .2 .2 .1 10
execute positioned ~ ~.3 ~ unless block ^ ^ ^1 #mcrpg:weak_or_no_collision run scoreboard players set @s mcrpg_dmg 1
execute unless block ^ ^ ^1 #mcrpg:weak_or_no_collision run scoreboard players remove @s mcrpg_dash 1
scoreboard players remove @s mcrpg_dash 1
scoreboard players remove @s mcrpg_mana 5 