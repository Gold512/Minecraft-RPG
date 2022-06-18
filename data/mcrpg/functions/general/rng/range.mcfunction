### Cloud Notes ###
# Newton-Raphson, 4 iterations approach
#
# .min = lower range
# .max = upper range
# .out = random number between range


scoreboard players add .max mcrpg 1
scoreboard players operation #range mcrpg = .max mcrpg
scoreboard players operation #range mcrpg -= .min mcrpg

scoreboard players operation #m1 mcrpg = #range mcrpg
scoreboard players remove #m1 mcrpg 1
function mcrpg:general/rng/zprivate/next_int
scoreboard players operation .out mcrpg += .min mcrpg

scoreboard players reset #m1 mcrpg
scoreboard players remove .max mcrpg 1