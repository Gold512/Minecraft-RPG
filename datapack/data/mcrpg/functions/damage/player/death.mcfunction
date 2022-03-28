# tellraw @a [{"selector":"@s"}, " ", {"storage": "mcrpg","nbt":"deathmsg"}]
tellraw @a [{"selector":"@s"}, " died"]

gamerule showDeathMessages false
kill @s
gamerule showDeathMessages true

scoreboard players set @s mcrpg_deaths 1