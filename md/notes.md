prevent jittering of entities with 'Motion' or 'power' set
execute as @e[type=#mcrpg:vis_fix, tag=mcrpg_vis_fix] run function mcrpg:other/vis_fix
scoreboard players operation .global visfix *= #-1 mcrpg_const

player tracker
execute facing entity @e[limit=1,type=player,sort=nearest,distance=1..] anchored eyes run particle flame ^ ^ ^1.6

tellraw @s [{"text": "hello world", "font":"illageralt"}]

/msg @s 1-5: @e[distance=.1..5,limit=5,sort=nearest], 6-10: @e[distance=6..10,limit=5,sort=nearest], 11-15: @e[distance=11..15,limit=5,sort=nearest], 16-20: @e[distance=16..20,limit=5,sort=nearest], 21-25: @e[distance=20..25,limit=5,sort=nearest]
