# LCG Seed implementation
# By CloudWolf
#
# x_(n+1) = x_(n)*a + c
#
# a = marker UUID, c = 12345

scoreboard players operation #lcg mcrpg *= #lcg mcrpg_const
scoreboard players add #lcg mcrpg 12345
scoreboard players operation .out mcrpg = #lcg mcrpg