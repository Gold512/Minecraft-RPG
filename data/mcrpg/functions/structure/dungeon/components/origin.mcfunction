# this will be the starting room that the player spawns in 

fill ~-2 ~ ~-2 ~2 ~5 ~2 stone_bricks outline 
setblock ~ ~ ~ bedrock 

# entrances to rooms
fill ~-2 ~1 ~ ~-2 ~2 ~ air 
fill ~2 ~1 ~ ~2 ~2 ~ air 

fill ~ ~1 ~2 ~ ~2 ~2 air 
fill ~ ~1 ~-2 ~ ~2 ~-2 air 

setblock ~ ~4 ~ lantern

# summon the points for the next rooms 
summon marker ~5 ~ ~ {Tags:["gen_dungeon","pos_x", "ungenerated"]}
summon marker ~-5 ~ ~ {Tags:["gen_dungeon","neg_x", "ungenerated"]}

summon marker ~ ~ ~5 {Tags:["gen_dungeon","pos_y", "ungenerated"]}
summon marker ~ ~ ~-5 {Tags:["gen_dungeon","neg_y", "ungenerated"]}