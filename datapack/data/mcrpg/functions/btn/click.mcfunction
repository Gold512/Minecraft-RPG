execute if score @s mcrpg_btn matches 2..10 run function mcrpg:level/btn_click
execute if score @s mcrpg_btn matches 11..100 run function mcrpg:text/settings/btn
scoreboard players reset @s mcrpg_btn
scoreboard players enable @s mcrpg_btn