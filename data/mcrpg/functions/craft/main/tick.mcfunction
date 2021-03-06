execute as @e[type=item, limit=1, distance=...5, nbt={Item:{id:"minecraft:blaze_rod", Count:3b}}] at @s run function mcrpg:craft/attempt/materials/enchanted_rod
execute as @e[type=item, limit=1, distance=...5, nbt={Item:{id:"minecraft:blaze_rod", Count:1b, tag:{mcrpg:"enchanted_rod"}}}] at @s run function mcrpg:craft/attempt/fire_wand
execute as @e[type=item, limit=1, distance=...5, nbt={Item:{id:"minecraft:blaze_rod", Count:2b, tag:{mcrpg:"enchanted_rod"}}}] at @s run function mcrpg:craft/attempt/soulfire_wand
execute as @e[type=item, limit=1, distance=...5, nbt={Item:{id:"minecraft:stick", Count:1b}}] at @s run function mcrpg:craft/attempt/air_wand
execute as @e[type=item, limit=1, distance=...5, nbt={Item:{id:"minecraft:nautilus_shell", Count:4b}}] at @s run function mcrpg:craft/attempt/water_wand

# socket skills into items
execute as @e[type=item, limit=1, distance=...5, nbt={Item:{id:"minecraft:carrot_on_a_stick", Count: 1b, tag: {socketable: 1b}}}] at @s run function mcrpg:craft/attempt/socket_skill

schedule function mcrpg:craft/main/tick 4t replace