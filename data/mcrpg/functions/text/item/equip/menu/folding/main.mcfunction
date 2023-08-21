# fold/unfold fire 
scoreboard players operation .in mcrpg = @s mcrpg_menu_equip_fold
scoreboard players set .pad mcrpg 1 
function mcrpg:general/binary/to

scoreboard players operation .element mcrpg = @s mcrpg_btn 
scoreboard players remove .element mcrpg 80 
scoreboard players operation .element mcrpg %= #100 mcrpg_const

execute if score .element mcrpg matches 1 run function mcrpg:text/item/equip/menu/folding/magic/fire
execute if score .element mcrpg matches 2 run function mcrpg:text/item/equip/menu/folding/magic/water
execute if score .element mcrpg matches 3 run function mcrpg:text/item/equip/menu/folding/magic/air
execute if score .element mcrpg matches 4 run function mcrpg:text/item/equip/menu/folding/magic/earth
execute if score .element mcrpg matches 5 run function mcrpg:text/item/equip/menu/folding/magic/light
execute if score .element mcrpg matches 6 run function mcrpg:text/item/equip/menu/folding/magic/dark


data modify storage mcrpg in set from storage mcrpg out 
function mcrpg:general/binary/from
scoreboard players operation @s mcrpg_menu_equip_fold = .out mcrpg 