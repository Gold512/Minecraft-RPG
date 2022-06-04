execute store result score .skill_id mcrpg run data get storage minecraft:mcrpg skill_id 

execute if score .skill_id mcrpg matches 0 anchored eyes run function mcrpg:skills/socketable/slash/double_slash
execute if score .skill_id mcrpg matches 1 anchored eyes run say slash whirlwind 