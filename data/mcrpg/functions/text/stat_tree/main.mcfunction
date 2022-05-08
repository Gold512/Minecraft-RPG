execute unless score @s mcrpg_menu_x = @s mcrpg_menu_x run scoreboard players set @s mcrpg_menu_x 0
execute unless score @s mcrpg_menu_y = @s mcrpg_menu_y run scoreboard players set @s mcrpg_menu_y 0
execute unless score @s mcrpg_menu_width = @s mcrpg_menu_width run scoreboard players set @s mcrpg_menu_width 30
execute unless score @s mcrpg_menu_height = @s mcrpg_menu_height run scoreboard players set @s mcrpg_menu_height 14

scoreboard players operation .x1 mcrpg = @s mcrpg_menu_x
scoreboard players operation .y1 mcrpg = @s mcrpg_menu_y

scoreboard players operation .x2 mcrpg = @s mcrpg_menu_x
scoreboard players operation .x2 mcrpg += @s mcrpg_menu_width

scoreboard players operation .y2 mcrpg = @s mcrpg_menu_y
scoreboard players operation .y2 mcrpg += @s mcrpg_menu_height

# 10000-10999
# 10001 - up, 10002 - down, 10003 - left, 10004 - right

data modify storage mcrpg btn set value {}

# alternative idea
# by setting interpret to true the JSON text properties could be defined using a string from storage 
# then extra property could be used to chain the actual text at which the properties will be inherited

execute unless score .y1 mcrpg matches 0 run data modify storage mcrpg btn.up set value '{"text":"\\u2191","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 10001"}}'
execute if score .y1 mcrpg matches 0 run data modify storage mcrpg btn.up set value '{"text":"\\u2191","color":"gray"}'


execute unless score .y2 mcrpg matches 45 run data modify storage mcrpg btn.down set value '{"text":"\\u2193","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 10002"}}'
execute if score .y2 mcrpg matches 45 run data modify storage mcrpg btn.down set value '{"text":"\\u2193","color":"gray"}'

data modify storage mcrpg btn.right set value '{"text":"-\\u2192","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 10004"}}'

execute unless score .x1 mcrpg matches 0 run data modify storage mcrpg btn.left set value '{"text":"\\u2190-","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 10003"}}'
execute if score .x1 mcrpg matches 0 run data modify storage mcrpg btn.left set value '{"text":"\\u2190-","color":"gray"}'

tellraw @s ["\n\n\n\n\n\n\n\n\n",{"nbt":"btn.up","storage": "mcrpg","interpret": true},{"text":" ","color":"light_purple"},{"nbt":"btn.left","storage": "mcrpg","interpret": true},{"text":"------------------------","color":"light_purple"},{"nbt":"btn.right","storage": "mcrpg","interpret": true},{"text":" "}]

data modify storage mcrpg format set value '{"text":"","font":"consolas:everson"}'

data modify storage mcrpg text set value [["{\"text\":\"Thi\",\"color\":\"blue\"}","[\"\",{\"text\":\"s \",\"color\":\"blue\"},{\"text\":\"i\"}]","[\"\",{\"text\":\"s \"},{\"text\":\"s\",\"color\":\"light_purple\"}]","{\"text\":\"amp\",\"color\":\"light_purple\"}","{\"text\":\"le \",\"color\":\"light_purple\"}","{\"text\":\"tex\"}","{\"text\":\"t. \"}","{\"text\":\"It \"}","{\"text\":\"sho\"}","{\"text\":\"uld\"}","[\"\",{\"text\":\" \"},{\"text\":\"be\",\"color\":\"yellow\"}]","[\"\",{\"text\":\" \",\"color\":\"yellow\"},{\"text\":\"ch\"}]","{\"text\":\"opp\"}","{\"text\":\"ed \"}","{\"text\":\"int\"}","[\"\",{\"text\":\"o \"},{\"text\":\"b\",\"color\":\"gold\"}]","{\"text\":\"loc\",\"color\":\"gold\"}","{\"text\":\"ks \",\"color\":\"gold\"}","{\"text\":\"of \"}","[\"\",{\"text\":\"n \",\"color\":\"green\"},{\"text\":\"l\"}]","{\"text\":\"eng\"}","{\"text\":\"th.\"}","{\"text\":\" Th\"}","{\"text\":\"e f\"}","{\"text\":\"orm\"}","{\"text\":\"att\"}","{\"text\":\"ing\"}","{\"text\":\" li\"}","{\"text\":\"ke \"}","{\"text\":\"col\"}","{\"text\":\"ors\"}","{\"text\":\" sh\"}","{\"text\":\"oul\"}","{\"text\":\"d b\"}","[\"\",{\"text\":\"e \"},{\"text\":\"p\",\"color\":\"dark_purple\"}]","{\"text\":\"res\",\"color\":\"dark_purple\"}","{\"text\":\"erv\",\"color\":\"dark_purple\"}","{\"text\":\"ed \",\"color\":\"dark_purple\"}","{\"text\":\"as \"}","{\"text\":\"wel\"}","{\"text\":\"l a\"}","{\"text\":\"s t\"}","{\"text\":\"he \"}","{\"text\":\"tex\",\"color\":\"dark_aqua\"}","[\"\",{\"text\":\"t \",\"color\":\"dark_aqua\"},{\"text\":\"i\"}]","{\"text\":\"tse\"}","{\"text\":\"lf \"}","{\"text\":\"obv\"}","{\"text\":\"iou\"}","{\"text\":\"sly\"}"]]
function mcrpg:text/stat_tree/subfunc/render_page

tellraw @s ["",{"nbt":"btn.down","storage": "mcrpg","interpret": true},{"text":" ","color":"light_purple"},{"nbt":"btn.left","storage": "mcrpg","interpret": true},{"text":"------------------------","color":"light_purple"},{"nbt":"btn.right","storage": "mcrpg","interpret": true},{"text":" "}]
