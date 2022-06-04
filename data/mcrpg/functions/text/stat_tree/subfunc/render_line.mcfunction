# ~8 values per branch, 5 branches
execute if score .x1 mcrpg matches 0..7 run function mcrpg:text/stat_tree/subfunc/render_line/l0/0
execute if score .x1 mcrpg matches 8..15 run function mcrpg:text/stat_tree/subfunc/render_line/l0/1
execute if score .x1 mcrpg matches 16..23 run function mcrpg:text/stat_tree/subfunc/render_line/l0/2
execute if score .x1 mcrpg matches 24..31 run function mcrpg:text/stat_tree/subfunc/render_line/l0/3
execute if score .x1 mcrpg matches 32..39 run function mcrpg:text/stat_tree/subfunc/render_line/l0/4
execute if score .x1 mcrpg matches 40..47 run function mcrpg:text/stat_tree/subfunc/render_line/l0/5

# clear storage 
data modify storage minecraft:mcrpg chars set value []