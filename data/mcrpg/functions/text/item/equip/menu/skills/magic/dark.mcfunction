execute if score @s mcrpg_menu_y matches ..500 unless score .height mcrpg matches ..500 if score .state mcrpg matches 1 run tellraw @s {"text":"","clickEvent":{"action":"run_command","value": "/trigger mcrpg_btn set 20086"},"extra":["", {"text":"▼ Dark"}]}
execute if score @s mcrpg_menu_y matches ..530 unless score .height mcrpg matches ..501 run function mcrpg:text/item/equip/menu/skills/magic/dark/c1
scoreboard players add .height mcrpg 30
execute if score .category mcrpg matches 2.. if score @s mcrpg_menu_y matches ..560 unless score .height mcrpg matches ..531 run function mcrpg:text/item/equip/menu/skills/magic/dark/c2
scoreboard players add .height mcrpg 30
execute if score .category mcrpg matches 3.. if score @s mcrpg_menu_y matches ..590 unless score .height mcrpg matches ..561 run function mcrpg:text/item/equip/menu/skills/magic/dark/c3
scoreboard players add .height mcrpg 39
