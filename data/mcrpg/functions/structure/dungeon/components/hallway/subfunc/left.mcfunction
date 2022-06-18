fill ^2 ^1 ^-1 ^2 ^3 ^1 air 
execute if entity @s[tag=pos_x] run summon marker ^5 ^ ^ {Tags:["gen_dungeon","neg_y","ungenerated"]}
execute if entity @s[tag=neg_y] run summon marker ^5 ^ ^ {Tags:["gen_dungeon","neg_x","ungenerated"]}
execute if entity @s[tag=neg_x] run summon marker ^5 ^ ^ {Tags:["gen_dungeon","pos_y","ungenerated"]}
execute if entity @s[tag=pos_y] run summon marker ^5 ^ ^ {Tags:["gen_dungeon","pos_x","ungenerated"]}