execute if score @s mcrpg_menu_y matches ..300 unless score .height mcrpg matches ..300 if score .state mcrpg matches 1 run tellraw @s {"text":"","clickEvent":{"action":"run_command","value": "/trigger mcrpg_btn set 20084"},"extra":["", {"text":"▼ Earth"}]}
execute if score @s mcrpg_menu_y matches ..330 unless score .height mcrpg matches ..301 run function mcrpg:text/item/equip/menu/skills/magic/earth/c1
scoreboard players add .height mcrpg 30
execute if score .category mcrpg matches 2.. if score @s mcrpg_menu_y matches ..360 unless score .height mcrpg matches ..331 run function mcrpg:text/item/equip/menu/skills/magic/earth/c2
scoreboard players add .height mcrpg 30
execute if score .category mcrpg matches 3.. if score @s mcrpg_menu_y matches ..390 unless score .height mcrpg matches ..361 run function mcrpg:text/item/equip/menu/skills/magic/earth/c3
scoreboard players add .height mcrpg 39
