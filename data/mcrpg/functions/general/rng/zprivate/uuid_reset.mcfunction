summon minecraft:marker ~ ~ ~ {Tags:["uuid"]}
execute store result score #lcg mcrpg run data get entity @e[tag=uuid,limit=1] UUID[0]
execute store result score #temp mcrpg run data get entity @e[tag=uuid,limit=1] UUID[1]
execute store result score #temp1 mcrpg run data get entity @e[tag=uuid,limit=1] UUID[2]
execute store result score #temp2 mcrpg run data get entity @e[tag=uuid,limit=1] UUID[3]
scoreboard players operation #lcg mcrpg += #temp mcrpg
scoreboard players operation #lcg mcrpg += #temp1 mcrpg
scoreboard players operation #lcg mcrpg += #temp2 mcrpg
kill @e[tag=uuid]