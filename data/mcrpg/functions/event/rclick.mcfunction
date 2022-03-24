scoreboard players reset @s mcrpg_coas_use

execute if data entity @s SelectedItem.tag.mcrpg run data modify storage mcrpg attack set from entity @s SelectedItem.tag.mcrpg
execute unless data entity @s SelectedItem.tag.mcrpg run data modify storage mcrpg attack set from entity @s Inventory[{Slot: -106b}].tag.mcrpg

execute if data storage mcrpg {attack:"fire_wand"} at @s run function mcrpg:item/fire_wand/attack
execute if data storage mcrpg {attack:"air_wand"} at @s run function mcrpg:item/air_wand/attack
execute if data storage mcrpg {attack:"earth_wand"} at @s run function mcrpg:item/earth_wand/attack
execute if data storage mcrpg {attack:"water_wand"} at @s run function mcrpg:item/water_wand/attack

execute if data storage mcrpg {attack:"soulfire_wand"} at @s run function mcrpg:item/soulfire_wand/attack

# execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":""}'}}}}] at @s run function mcrpg:skills/dragon_fireball

# execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"mcrpg_drag_fireball"}'}}}}] at @s run function mcrpg:skills/dragon_fireball
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"mcrpg_dev"}'}}}}] run function mcrpg:skills/water/tier_1/water_missile
# execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"mcrpg_arrow"}'}}}}] run function mcrpg:skills/arrow
# 
# execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"mcrpg_sf_beam"}'}}}}] run function mcrpg:skills/soulfire_beam
# 