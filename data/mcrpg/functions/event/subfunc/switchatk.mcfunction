execute if entity @s[nbt={SelectedItem:{tag:{mcrpg:"fire_wand"}}}] at @s run function mcrpg:item/fire_wand/switch_attack
execute if entity @s[nbt={SelectedItem:{tag:{mcrpg:"air_wand"}}}] at @s run function mcrpg:item/air_wand/switch_attack
execute if entity @s[nbt={SelectedItem:{tag:{mcrpg:"earth_wand"}}}] at @s run function mcrpg:item/earth_wand/switch_attack
execute if entity @s[nbt={SelectedItem:{tag:{mcrpg:"water_wand"}}}] at @s run function mcrpg:item/water_wand/switch_attack

# tier 2 
execute if entity @s[nbt={SelectedItem:{tag:{mcrpg:"soulfire_wand"}}}] at @s run function mcrpg:item/soulfire_wand/switch_attack

# socketable items 
execute if entity @s[nbt={SelectedItem:{tag:{socketable:1b}}}] at @s run function mcrpg:item/socketable/switch_attack