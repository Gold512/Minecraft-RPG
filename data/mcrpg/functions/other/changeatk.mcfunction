execute store result score @s mcrpg1 run data get entity @s SelectedItem.tag.mcrpg_atkCount
scoreboard players add @s mcrpg 1
execute if score @s mcrpg = @s mcrpg1 run scoreboard players set @s mcrpg 0