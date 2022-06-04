# on state 
execute if score .state mcrpg matches 1 run data modify storage minecraft:mcrpg text set value '{"text":"\\u2611","color":"green"}'

# off state 
execute if score .state mcrpg matches 0 run data modify storage minecraft:mcrpg text set value '{"text":"\\u2610","color":"white"}'