function mcrpg:other/swap_items

execute if entity @s[nbt={SelectedItem:{tag:{mcrpg:"fire_wand"}}}] at @s run function mcrpg:item/fire_wand/switch_attack
execute if entity @s[nbt={SelectedItem:{tag:{mcrpg:"air_wand"}}}] at @s run function mcrpg:item/air_wand/switch_attack
execute if entity @s[nbt={SelectedItem:{tag:{mcrpg:"earth_wand"}}}] at @s run function mcrpg:item/earth_wand/switch_attack
