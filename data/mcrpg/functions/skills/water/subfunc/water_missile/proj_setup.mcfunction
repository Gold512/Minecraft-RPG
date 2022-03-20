scoreboard players set @s mcrpg_missile_dmg 5
scoreboard players operation @s mcrpg_killer_id = @p[tag=caster] mcrpg_killer_id
tag @s remove summoned

# store id of caster 
scoreboard players operation @s mcrpg_sid = .id mcrpg