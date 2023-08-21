# first store the menu data 
# button block 20000..30000
execute if score .triggered mcrpg matches 1 run function mcrpg:text/item/equip/menu/init

# elements 
# .height is the index of the top of the display 
scoreboard players operation .height mcrpg = @s mcrpg_menu_height
scoreboard players operation .height mcrpg += @s mcrpg_menu_y 

# get state of which are folded 
scoreboard players operation .in mcrpg = @s mcrpg_menu_equip_fold
function mcrpg:general/binary/to
data modify storage mcrpg state set from storage mcrpg out 

execute if score .has_mh_nbt mcrpg matches 1 run data modify storage mcrpg skillNature set from entity @s SelectedItem.tag.mcrpg.skillNature
execute if score .has_oh_nbt mcrpg matches 1 run data modify storage mcrpg skillNature set from entity @s Inventory[{Slot: -106b}].tag.mcrpg.skillNature

execute store result score .type mcrpg run data get storage mcrpg skillNature.type.id
execute store result score .element mcrpg run data get storage mcrpg skillNature.element.id
execute store result score .category mcrpg run data get storage mcrpg skillNature.category
execute if score .type mcrpg matches 1 run function mcrpg:text/item/equip/menu/magic

# add spaces so that the menu will have constant height 
execute if score @s mcrpg_menu_y matches ..610 unless score .height mcrpg matches ..600 run function mcrpg:text/item/equip/menu/pad