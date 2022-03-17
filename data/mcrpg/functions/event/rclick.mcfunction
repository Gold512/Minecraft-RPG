scoreboard players reset @s mcrpg_coas_use
execute if entity @s[nbt={SelectedItem:{tag:{mcrpg:"fire_wand"}}}] at @s run function mcrpg:item/fire_wand/attack
execute if entity @s[nbt={SelectedItem:{tag:{mcrpg:"air_wand"}}}] at @s run function mcrpg:item/air_wand/attack
execute if entity @s[nbt={SelectedItem:{tag:{mcrpg:"earth_wand"}}}] at @s run function mcrpg:item/earth_wand/attack

execute if entity @s[nbt={SelectedItem:{tag:{mcrpg:"soulfire_wand"}}}] at @s run function mcrpg:item/soulfire_wand/attack

execute if entity @s[scores={mcrpg_mana=80..},nbt={SelectedItem:{tag:{display:{Name:'{"text":"Earth Shield"}'}}}}] at @s run function mcrpg:skills/earth/shield

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":""}'}}}}] at @s run function mcrpg:skills/dragon_fireball

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"mcrpg_drag_fireball"}'}}}}] at @s run function mcrpg:skills/dragon_fireball
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"mcrpg_dev"}'}}}}] run function mcrpg:skills/wind/dash 
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"mcrpg_arrow"}'}}}}] run function mcrpg:skills/arrow

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"mcrpg_sf_beam"}'}}}}] run function mcrpg:skills/soulfire_beam
