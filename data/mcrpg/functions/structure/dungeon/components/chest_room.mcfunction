function mcrpg:structure/dungeon/components/hallway/end

execute if entity @s[tag=neg_y] run setblock ^ ^1 ^1 chest[facing=south]{LootTable:"mcrpg:chests/bronze"}
execute if entity @s[tag=neg_x] run setblock ^ ^1 ^1 chest[facing=east]{LootTable:"mcrpg:chests/bronze"}
execute if entity @s[tag=pos_y] run setblock ^ ^1 ^1 chest[facing=north]{LootTable:"mcrpg:chests/bronze"}
execute if entity @s[tag=pos_x] run setblock ^ ^1 ^1 chest[facing=west]{LootTable:"mcrpg:chests/bronze"}