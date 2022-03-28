execute if data storage mcrpg {attack:"fire_wand"} at @s run function mcrpg:item/fire_wand/attack
execute if data storage mcrpg {attack:"air_wand"} at @s run function mcrpg:item/air_wand/attack
execute if data storage mcrpg {attack:"earth_wand"} at @s run function mcrpg:item/earth_wand/attack
execute if data storage mcrpg {attack:"water_wand"} at @s run function mcrpg:item/water_wand/attack

execute if data storage mcrpg {attack:"soulfire_wand"} at @s run function mcrpg:item/soulfire_wand/attack

# execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":""}'}}}}] at @s run function mcrpg:skills/dragon_fireball

# execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"mcrpg_drag_fireball"}'}}}}] at @s run function mcrpg:skills/dragon_fireball
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"mcrpg_dev"}'}}}}] run function mcrpg:skills/water/tier_1/water_missile
