execute if score @s mcrpg_btn matches 20000 run function mcrpg:text/item/equip/btn/clear
execute if score @s mcrpg_btn matches 20001 run scoreboard players remove @s mcrpg_menu_y 1
execute if score @s mcrpg_btn matches 20002 run scoreboard players add @s mcrpg_menu_y 1
execute if score @s mcrpg_btn matches 20080..20099 run function mcrpg:text/item/equip/menu/folding/main
execute if score @s mcrpg_btn matches 20100..22000 run function mcrpg:text/item/equip/menu/add_skill/main
trigger mcrpg_item set 2 