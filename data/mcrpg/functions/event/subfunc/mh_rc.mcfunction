# mainhand rightclick
data modify storage mcrpg attack set from entity @s SelectedItem.tag.mcrpg
execute if entity @s[nbt={SelectedItem:{tag:{socketable:1b}}}] run function mcrpg:event/subfunc/socketable_data
execute store result score @s mcrpg run data get entity @s SelectedItem.tag.mcrpg_atkId

# store skill id 
data modify storage mcrpg skills set from entity @s SelectedItem.tag.skills
execute if data storage mcrpg {attack:"socketable"} run function mcrpg:event/subfunc/set_skill_id