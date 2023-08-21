execute if score @s mcrpg_menu_y matches ..100 unless score .height mcrpg matches ..100 if score .state mcrpg matches 1 run tellraw @s {"text":"","clickEvent":{"action":"run_command","value": "/trigger mcrpg_btn set 20082"},"extra":["", {"text":"▼ Water"}]}
execute if score @s mcrpg_menu_y matches ..130 unless score .height mcrpg matches ..101 run function mcrpg:text/item/equip/menu/skills/magic/water/c1
scoreboard players add .height mcrpg 30
execute if score .category mcrpg matches 2.. if score @s mcrpg_menu_y matches ..160 unless score .height mcrpg matches ..131 run function mcrpg:text/item/equip/menu/skills/magic/water/c2
scoreboard players add .height mcrpg 30
execute if score .category mcrpg matches 3.. if score @s mcrpg_menu_y matches ..190 unless score .height mcrpg matches ..161 run function mcrpg:text/item/equip/menu/skills/magic/water/c3
scoreboard players add .height mcrpg 39
