# mainhand rightclick
data modify storage mcrpg attack set from entity @s SelectedItem.tag.mcrpg
execute store result score @s mcrpg run data get entity @s SelectedItem.tag.mcrpg_atkId
