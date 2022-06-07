scoreboard players add @p[tag=killer] mcrpg_mobkills 1

execute if entity @s[type=endermite] run scoreboard players add @p[tag=killer] mcrpg_killed_endermite 1
execute if entity @s[type=silverfish] run scoreboard players add @p[tag=killer] mcrpg_killed_silverfish 1
execute if entity @s[type=slime] run scoreboard players add @p[tag=killer] mcrpg_killed_slime 1
execute if entity @s[type=magma_cube] run scoreboard players add @p[tag=killer] mcrpg_killed_magma_cube 1
execute if entity @s[type=zombie] run scoreboard players add @p[tag=killer] mcrpg_killed_zombie 1
execute if entity @s[type=zombie] run scoreboard players add @p[tag=killer] mcrpg_killed_husk 1
execute if entity @s[type=skeleton] run scoreboard players add @p[tag=killer] mcrpg_killed_skeleton 1
execute if entity @s[type=spider] run scoreboard players add @p[tag=killer] mcrpg_killed_spider 1
execute if entity @s[type=drowned] run scoreboard players add @p[tag=killer] mcrpg_killed_drowned 1
execute if entity @s[type=creeper] run scoreboard players add @p[tag=killer] mcrpg_killed_creeper 1
execute if entity @s[type=zombified_piglin] run scoreboard players add @p[tag=killer] mcrpg_killed_zombified_piglin 1
execute if entity @s[type=piglin] run scoreboard players add @p[tag=killer] mcrpg_killed_piglin 1
execute if entity @s[type=blaze] run scoreboard players add @p[tag=killer] mcrpg_killed_blaze 1
execute if entity @s[type=ghast] run scoreboard players add @p[tag=killer] mcrpg_killed_ghast 1
execute if entity @s[type=cave_spider] run scoreboard players add @p[tag=killer] mcrpg_killed_cave_spider 1
execute if entity @s[type=guardian] run scoreboard players add @p[tag=killer] mcrpg_killed_guardian 1
execute if entity @s[type=piglin_brute] run scoreboard players add @p[tag=killer] mcrpg_killed_piglin_brute 1
execute if entity @s[type=vindicator] run scoreboard players add @p[tag=killer] mcrpg_killed_vindicator 1
execute if entity @s[type=wither_skeleton] run scoreboard players add @p[tag=killer] mcrpg_killed_wither_skeleton 1
execute if entity @s[type=vex] run scoreboard players add @p[tag=killer] mcrpg_killed_vex 1
execute if entity @s[type=hoglin] run scoreboard players add @p[tag=killer] mcrpg_killed_hoglin 1
execute if entity @s[type=shulker] run scoreboard players add @p[tag=killer] mcrpg_killed_shulker 1
execute if entity @s[type=enderman] run scoreboard players add @p[tag=killer] mcrpg_killed_enderman 1
execute if entity @s[type=ravager] run scoreboard players add @p[tag=killer] mcrpg_killed_ravager 1
execute if entity @s[type=witch] run scoreboard players add @p[tag=killer] mcrpg_killed_witch 1
execute if entity @s[type=evoker] run scoreboard players add @p[tag=killer] mcrpg_killed_evoker 1
execute if entity @s[type=illusioner] run scoreboard players add @p[tag=killer] mcrpg_killed_illusioner 1
execute if entity @s[type=elder_guardian] run scoreboard players add @p[tag=killer] mcrpg_killed_elder_guardian 1
execute if entity @s[type=ender_dragon] run scoreboard players add @p[tag=killer] mcrpg_killed_ender_dragon 1
execute if entity @s[type=wither] run scoreboard players add @p[tag=killer] mcrpg_killed_wither 1

execute as @p[tag=killer] run function mcrpg:damage/internal/give_xp_finish