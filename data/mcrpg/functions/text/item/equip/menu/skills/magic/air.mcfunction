execute if score @s mcrpg_menu_y matches ..200 unless score .height mcrpg matches ..200 if score .state mcrpg matches 1 run tellraw @s {"text":"","clickEvent":{"action":"run_command","value": "/trigger mcrpg_btn set 20083"},"extra":["", {"text":"▼ Air"}]}
execute if score @s mcrpg_menu_y matches ..230 unless score .height mcrpg matches ..201 run function mcrpg:text/item/equip/menu/skills/magic/air/c1
scoreboard players add .height mcrpg 30
execute if score .category mcrpg matches 2.. if score @s mcrpg_menu_y matches ..260 unless score .height mcrpg matches ..231 run function mcrpg:text/item/equip/menu/skills/magic/air/c2
scoreboard players add .height mcrpg 30
execute if score .category mcrpg matches 3.. if score @s mcrpg_menu_y matches ..290 unless score .height mcrpg matches ..261 run function mcrpg:text/item/equip/menu/skills/magic/air/c3
scoreboard players add .height mcrpg 39
