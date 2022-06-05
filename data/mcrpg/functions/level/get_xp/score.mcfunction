# output 
# <scoreboard> .xp_gain mcrpg

# note optimise with function (execute if score @s mcrpg_killed_${name} matches 1.. run function ...)

scoreboard players set .xp_gain mcrpg 0

# endermite
scoreboard players set .xp_each mcrpg 2
scoreboard players operation @s mcrpg_killed_endermite *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_endermite
scoreboard players reset @s mcrpg_killed_endermite

# silverfish
scoreboard players set .xp_each mcrpg 2
scoreboard players operation @s mcrpg_killed_silverfish *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_silverfish
scoreboard players reset @s mcrpg_killed_silverfish

# slime
scoreboard players set .xp_each mcrpg 1
scoreboard players operation @s mcrpg_killed_slime *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_slime
scoreboard players reset @s mcrpg_killed_slime

# magma cube
scoreboard players set .xp_each mcrpg 2
scoreboard players operation @s mcrpg_killed_magma_cube *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_magma_cube
scoreboard players reset @s mcrpg_killed_magma_cube

# zombie
scoreboard players set .xp_each mcrpg 3
scoreboard players operation @s mcrpg_killed_zombie *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_zombie
scoreboard players reset @s mcrpg_killed_zombie

# skeleton
scoreboard players set .xp_each mcrpg 3
scoreboard players operation @s mcrpg_killed_skeleton *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_skeleton
scoreboard players reset @s mcrpg_killed_skeleton

# spider
scoreboard players set .xp_each mcrpg 3
scoreboard players operation @s mcrpg_killed_spider *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_spider
scoreboard players reset @s mcrpg_killed_spider

# drowned
scoreboard players set .xp_each mcrpg 4
scoreboard players operation @s mcrpg_killed_drowned *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_drowned
scoreboard players reset @s mcrpg_killed_drowned

# creeper
scoreboard players set .xp_each mcrpg 4
scoreboard players operation @s mcrpg_killed_creeper *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_creeper
scoreboard players reset @s mcrpg_killed_creeper

# zombie piglin
scoreboard players set .xp_each mcrpg 5
scoreboard players operation @s mcrpg_killed_zombie_piglin *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_zombie_piglin
scoreboard players reset @s mcrpg_killed_zombie_piglin

# piglin
scoreboard players set .xp_each mcrpg 5
scoreboard players operation @s mcrpg_killed_piglin *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_piglin
scoreboard players reset @s mcrpg_killed_piglin

# blaze
scoreboard players set .xp_each mcrpg 5
scoreboard players operation @s mcrpg_killed_blaze *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_blaze
scoreboard players reset @s mcrpg_killed_blaze

# ghast
scoreboard players set .xp_each mcrpg 5
scoreboard players operation @s mcrpg_killed_ghast *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_ghast
scoreboard players reset @s mcrpg_killed_ghast

# cave spider
scoreboard players set .xp_each mcrpg 5
scoreboard players operation @s mcrpg_killed_cave_spider *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_cave_spider
scoreboard players reset @s mcrpg_killed_cave_spider

# guardian
scoreboard players set .xp_each mcrpg 6
scoreboard players operation @s mcrpg_killed_guardian *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_guardian
scoreboard players reset @s mcrpg_killed_guardian

# piglin brute
scoreboard players set .xp_each mcrpg 8
scoreboard players operation @s mcrpg_killed_piglin_brute *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_piglin_brute
scoreboard players reset @s mcrpg_killed_piglin_brute

# vindicator
scoreboard players set .xp_each mcrpg 8
scoreboard players operation @s mcrpg_killed_vindicator *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_vindicator
scoreboard players reset @s mcrpg_killed_vindicator

# wither skeletons
scoreboard players set .xp_each mcrpg 8
scoreboard players operation @s mcrpg_killed_wither_skeleton *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_wither_skeleton
scoreboard players reset @s mcrpg_killed_wither_skeleton

# vex
scoreboard players set .xp_each mcrpg 10
scoreboard players operation @s mcrpg_killed_vex *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_vex
scoreboard players reset @s mcrpg_killed_vex

# zombie/normal hoglins
scoreboard players set .xp_each mcrpg 8
scoreboard players operation @s mcrpg_killed_hoglins *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_hoglins
scoreboard players reset @s mcrpg_killed_hoglins

# shulker
scoreboard players set .xp_each mcrpg 8
scoreboard players operation @s mcrpg_killed_shulker *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_shulker
scoreboard players reset @s mcrpg_killed_shulker

# endermen
scoreboard players set .xp_each mcrpg 9
scoreboard players operation @s mcrpg_killed_endermen *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_endermen
scoreboard players reset @s mcrpg_killed_endermen

# ravager
scoreboard players set .xp_each mcrpg 10
scoreboard players operation @s mcrpg_killed_ravager *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_ravager
scoreboard players reset @s mcrpg_killed_ravager

# witch
scoreboard players set .xp_each mcrpg 10
scoreboard players operation @s mcrpg_killed_witch *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_witch
scoreboard players reset @s mcrpg_killed_witch

# evoker
scoreboard players set .xp_each mcrpg 12
scoreboard players operation @s mcrpg_killed_evoker *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_evoker
scoreboard players reset @s mcrpg_killed_evoker

# illusioner
scoreboard players set .xp_each mcrpg 12
scoreboard players operation @s mcrpg_killed_illusioner *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_illusioner
scoreboard players reset @s mcrpg_killed_illusioner

# elder guardian
scoreboard players set .xp_each mcrpg 18
scoreboard players operation @s mcrpg_killed_elder_guardian *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_elder_guardian
scoreboard players reset @s mcrpg_killed_elder_guardian

# ender dragon
scoreboard players set .xp_each mcrpg 30
scoreboard players operation @s mcrpg_killed_ender_dragon *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_ender_dragon
scoreboard players reset @s mcrpg_killed_ender_dragon

# wither
scoreboard players set .xp_each mcrpg 100
scoreboard players operation @s mcrpg_killed_wither *= .xp_each mcrpg
scoreboard players operation .xp_gain mcrpg += @s mcrpg_killed_wither
scoreboard players reset @s mcrpg_killed_wither

