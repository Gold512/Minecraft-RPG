execute if score @s mcrpg_menu_y matches ..0 unless score .height mcrpg matches ..0 if score .state mcrpg matches 1 run tellraw @s {"text":"","clickEvent":{"action":"run_command","value": "/trigger mcrpg_btn set 20081"},"extra":["", {"text":"▼ Fire"}]}
execute if score @s mcrpg_menu_y matches ..30 unless score .height mcrpg matches ..1 run function mcrpg:text/item/equip/menu/skills/magic/fire/c1
scoreboard players add .height mcrpg 30
execute if score .category mcrpg matches 2.. if score @s mcrpg_menu_y matches ..60 unless score .height mcrpg matches ..31 run function mcrpg:text/item/equip/menu/skills/magic/fire/c2
scoreboard players add .height mcrpg 30
execute if score .category mcrpg matches 3.. if score @s mcrpg_menu_y matches ..90 unless score .height mcrpg matches ..61 run function mcrpg:text/item/equip/menu/skills/magic/fire/c3
scoreboard players add .height mcrpg 39
