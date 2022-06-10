data modify storage minecraft:mcrpg skills set from storage mcrpg mcrpg.skills
execute unless score .has_oh_nbt mcrpg matches 1 unless score .has_mh_nbt mcrpg matches 1 run tellraw @s {"text":"Item does not have anything to edit", "color":"red"}
execute if score .has_mh_nbt mcrpg matches 1 run function mcrpg:text/item/equip/text
execute if score .has_oh_nbt mcrpg matches 1 run function mcrpg:text/item/equip/text

scoreboard players set @s mcrpg_menu 300