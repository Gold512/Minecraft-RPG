data modify storage minecraft:mcrpg skills set from entity @s SelectedItem.tag.mcrpg.skills
execute store result score .skill_index mcrpg run data get entity @s SelectedItem.tag.mcrpg.skillIndex