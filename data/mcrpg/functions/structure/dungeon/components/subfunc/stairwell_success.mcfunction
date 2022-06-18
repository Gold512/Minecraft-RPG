# floor 
fill ~2 ~ ~2 ~-2 ~ ~-2 stone_bricks 

#walls
fill ^-2 ^9 ^-2 ^-2 ^ ^2 stone_bricks 
fill ^2 ^9 ^-2 ^2 ^ ^2 stone_bricks 

fill ^-2 ^ ^2 ^2 ^9 ^2 stone_bricks

# roof 
fill ^2 ^10 ^-2 ^-2 ^10 ^2 stone_bricks

fill ^1 ^9 ^-2 ^-1 ^9 ^-2 stone_bricks


# stairs 
setblock ^ ^1 ^-1 smooth_stone_slab[type=bottom]
setblock ^1 ^1 ^-1 smooth_stone_slab[type=top]

setblock ^1 ^2 ^ smooth_stone_slab[type=bottom]
setblock ^1 ^2 ^1 smooth_stone_slab[type=top]

setblock ^ ^3 ^1 smooth_stone_slab[type=bottom]
setblock ^-1 ^3 ^1 smooth_stone_slab[type=top]

setblock ^-1 ^4 ^ smooth_stone_slab[type=bottom]
fill ^-1 ^4 ^-1 ^ ^4 ^-1 smooth_stone_slab[type=top]

fill ^1 ^5 ^-2 ^-1 ^5 ^-2 smooth_stone_slab[type=bottom]

# central lantern 
setblock ~ ~2 ~ lantern[hanging=true]
fill ~ ~3 ~ ~ ~9 ~ chain

# second lantern
setblock ^1 ^6 ^-1 lantern[hanging=true]
fill ^1 ^7 ^-1 ^1 ^9 ^-1 chain

# prevent stairwell from being overwritten
summon marker ~ ~5 ~ {Tags:["gen_dungeon"]} 

# spawn new room generators 
execute if entity @s[tag=neg_x] run summon marker ^ ^5 ^-5 {Tags:["gen_dungeon","pos_x","ungenerated"]}
execute if entity @s[tag=pos_x] run summon marker ^ ^5 ^-5 {Tags:["gen_dungeon","neg_x","ungenerated"]}
execute if entity @s[tag=pos_y] run summon marker ^ ^5 ^-5 {Tags:["gen_dungeon","neg_y","ungenerated"]}
execute if entity @s[tag=neg_y] run summon marker ^ ^5 ^-5 {Tags:["gen_dungeon","pos_y","ungenerated"]}