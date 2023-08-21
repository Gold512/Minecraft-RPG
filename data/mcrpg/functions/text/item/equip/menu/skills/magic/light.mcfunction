execute if score @s mcrpg_menu_y matches ..400 unless score .height mcrpg matches ..400 if score .state mcrpg matches 1 run tellraw @s {"text":"","clickEvent":{"action":"run_command","value": "/trigger mcrpg_btn set 20085"},"extra":["", {"text":"▼ Light"}]}
execute if score @s mcrpg_menu_y matches ..430 unless score .height mcrpg matches ..401 run function mcrpg:text/item/equip/menu/skills/magic/light/c1
scoreboard players add .height mcrpg 30
execute if score .category mcrpg matches 2.. if score @s mcrpg_menu_y matches ..460 unless score .height mcrpg matches ..431 run function mcrpg:text/item/equip/menu/skills/magic/light/c2
scoreboard players add .height mcrpg 30
execute if score .category mcrpg matches 3.. if score @s mcrpg_menu_y matches ..490 unless score .height mcrpg matches ..461 run function mcrpg:text/item/equip/menu/skills/magic/light/c3
scoreboard players add .height mcrpg 39
