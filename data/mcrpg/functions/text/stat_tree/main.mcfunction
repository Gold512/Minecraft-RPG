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


tellraw @s ["",{"text":"\u2191","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 10001"}},{"text":" ","color":"light_purple"},{"text":"\u2190-","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 10003"}},{"text":"------------------------","color":"light_purple"},{"text":"-\u2192","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 10004"}},{"text":" "}]

execute if score .y1 mcrpg matches ..0 unless score .y2 mcrpg matches ..0 run data modify storage mcrpg chars set value ["╤═ ", "Tie", "r 1", " ══", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═══", " Fi", "re ", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═"]
execute if score .y1 mcrpg matches ..0 unless score .y2 mcrpg matches ..0 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..1 unless score .y2 mcrpg matches ..1 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", " ┌─", "───", "───", "───", "───", "───", "┐"]
execute if score .y1 mcrpg matches ..1 unless score .y2 mcrpg matches ..1 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..2 unless score .y2 mcrpg matches ..2 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", " │ ", "   ", "  F", "ire", "   ", "   ", "│ "]
execute if score .y1 mcrpg matches ..2 unless score .y2 mcrpg matches ..2 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..3 unless score .y2 mcrpg matches ..3 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", " └─", "───", "───", "───", "───", "───", "┘"]
execute if score .y1 mcrpg matches ..3 unless score .y2 mcrpg matches ..3 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..4 unless score .y2 mcrpg matches ..4 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", "   ", "   ", "  │"]
execute if score .y1 mcrpg matches ..4 unless score .y2 mcrpg matches ..4 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..5 unless score .y2 mcrpg matches ..5 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", " ┌─", "───", "───", "───", "───", "───", "┐"]
execute if score .y1 mcrpg matches ..5 unless score .y2 mcrpg matches ..5 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..6 unless score .y2 mcrpg matches ..6 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", " │ ", "Sma", "ll ", "Fir", "eba", "ll ", "│"]
execute if score .y1 mcrpg matches ..6 unless score .y2 mcrpg matches ..6 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..7 unless score .y2 mcrpg matches ..7 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", " └─", "───", "───", "───", "───", "───", "┘"]
execute if score .y1 mcrpg matches ..7 unless score .y2 mcrpg matches ..7 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..8 unless score .y2 mcrpg matches ..8 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", "   ", "  │", "   ", "   ", "   ", "│"]
execute if score .y1 mcrpg matches ..8 unless score .y2 mcrpg matches ..8 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..9 unless score .y2 mcrpg matches ..9 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", "   ", "  │", "   ", "   ", "   ", "│"]
execute if score .y1 mcrpg matches ..9 unless score .y2 mcrpg matches ..9 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..10 unless score .y2 mcrpg matches ..10 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", " ┌─", "──┘", "   ", "   ", "   ", "└──", "───", "───", "───", "┬──", "───", "───", "───", "───", "───", "───", "──┐"]
execute if score .y1 mcrpg matches ..10 unless score .y2 mcrpg matches ..10 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..11 unless score .y2 mcrpg matches ..11 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", " │ ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "│  ", "   ", "   ", "   ", "   ", "   ", "   ", "  │"]
execute if score .y1 mcrpg matches ..11 unless score .y2 mcrpg matches ..11 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..12 unless score .y2 mcrpg matches ..12 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "┌──", "───", "───", "───", "┐  ", "   ", "   ", "   ", "   ", "   ", "│  ", "   ", "   ", "   ", "   ", "   ", "   ", "  │"]
execute if score .y1 mcrpg matches ..12 unless score .y2 mcrpg matches ..12 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..13 unless score .y2 mcrpg matches ..13 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "│ F", "ire", " Be", "am ", "│  ", "   ", "   ", "   ", "   ", "   ", "│  ", "   ", "   ", "   ", "   ", "   ", "   ", "  │"]
execute if score .y1 mcrpg matches ..13 unless score .y2 mcrpg matches ..13 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..14 unless score .y2 mcrpg matches ..14 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "└──", "───", "───", "───", "┘  ", "   ", "   ", "   ", "   ", "   ", "│  ", "   ", "   ", "   ", "   ", "   ", "   ", "  │"]
execute if score .y1 mcrpg matches ..14 unless score .y2 mcrpg matches ..14 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..15 unless score .y2 mcrpg matches ..15 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", " │ ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "│  ", "   ", "   ", "   ", "   ", "   ", "   ", "  │"]
execute if score .y1 mcrpg matches ..15 unless score .y2 mcrpg matches ..15 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..16 unless score .y2 mcrpg matches ..16 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", " │ ", "   ", "   ", "   ", "   ", "   ", "  ┌", "───", "───", "───", "───", "───", "─┐ ", "   ", " ┌─", "───", "───", "───", "───", "┐"]
execute if score .y1 mcrpg matches ..16 unless score .y2 mcrpg matches ..16 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..17 unless score .y2 mcrpg matches ..17 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "┌──", "───", "───", "──┐", "   ", "   ", "   ", "  │", " La", "rge", " Fi", "reb", "all", " │ ", "   ", " │ ", "Fla", "me ", "Spr", "ay ", "│"]
execute if score .y1 mcrpg matches ..17 unless score .y2 mcrpg matches ..17 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..18 unless score .y2 mcrpg matches ..18 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "│ E", "rup", "tio", "n │", "   ", "   ", "   ", "  └", "───", "───", "───", "───", "───", "─┘ ", "   ", " └─", "───", "───", "───", "───", "┘"]
execute if score .y1 mcrpg matches ..18 unless score .y2 mcrpg matches ..18 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..19 unless score .y2 mcrpg matches ..19 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "└──", "───", "───", "──┘", "   ", "   ", "   ", "   ", "   ", "   ", "│  ", "   ", "   ", "   ", "   ", "   ", "   ", "  │"]
execute if score .y1 mcrpg matches ..19 unless score .y2 mcrpg matches ..19 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..20 unless score .y2 mcrpg matches ..20 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", " │ ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "│  ", "   ", "   ", "   ", "   ", "   ", "   ", "  │"]
execute if score .y1 mcrpg matches ..20 unless score .y2 mcrpg matches ..20 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..21 unless score .y2 mcrpg matches ..21 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", " │ ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "│  ", "   ", "   ", "   ", "   ", "   ", "   ", "  │"]
execute if score .y1 mcrpg matches ..21 unless score .y2 mcrpg matches ..21 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..22 unless score .y2 mcrpg matches ..22 run data modify storage mcrpg chars set value ["╪═ ", "Tie", "r 2", " ══", "══│", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═│═", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "│══", "═══", "═══", "═ S", "oul", "fir", "e ═", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═"]
execute if score .y1 mcrpg matches ..22 unless score .y2 mcrpg matches ..22 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..23 unless score .y2 mcrpg matches ..23 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", " │ ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "│  ", "   ", "   ", "   ", "   ", "   ", "   ", "  │"]
execute if score .y1 mcrpg matches ..23 unless score .y2 mcrpg matches ..23 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..24 unless score .y2 mcrpg matches ..24 run data modify storage mcrpg chars set value ["│  ", "  ┌", "───", "───", "───", "───", "───", "┐  ", "   ", "   ", " ┌─", "───", "───", "───", "───", "───", "───", "─┐ ", "   ", "   ", "  │"]
execute if score .y1 mcrpg matches ..24 unless score .y2 mcrpg matches ..24 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..25 unless score .y2 mcrpg matches ..25 run data modify storage mcrpg chars set value ["│  ", "  │", " So", "ulf", "ire", " Be", "am ", "│  ", "   ", "   ", " │ ", "Sou", "lfi", "re ", "Sho", "ckw", "ave", " │ ", "   ", "   ", "  │"]
execute if score .y1 mcrpg matches ..25 unless score .y2 mcrpg matches ..25 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..26 unless score .y2 mcrpg matches ..26 run data modify storage mcrpg chars set value ["│  ", "  └", "───", "───", "───", "───", "───", "┘  ", "   ", "   ", " └─", "───", "───", "───", "───", "───", "───", "─┘ ", "   ", "   ", "  │"]
execute if score .y1 mcrpg matches ..26 unless score .y2 mcrpg matches ..26 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..27 unless score .y2 mcrpg matches ..27 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", " │ ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "│  ", "   ", "   ", "   ", "   ", "  ┌", "───", "───", "───", "───", "───", "─┐"]
execute if score .y1 mcrpg matches ..27 unless score .y2 mcrpg matches ..27 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..28 unless score .y2 mcrpg matches ..28 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", " └─", "───", "───", "───", "──┬", "───", "───", "───", "───", "┘  ", "   ", "   ", "   ", "   ", "  │", " So", "ulf", "ire", " Sp", "ray", " │"]
execute if score .y1 mcrpg matches ..28 unless score .y2 mcrpg matches ..28 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..29 unless score .y2 mcrpg matches ..29 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "  │", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "  └", "───", "───", "───", "───", "───", "─┘"]
execute if score .y1 mcrpg matches ..29 unless score .y2 mcrpg matches ..29 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..30 unless score .y2 mcrpg matches ..30 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", "   ", "  ┌", "───", "───", "───", "───", "───", "─┐ ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "  │"]
execute if score .y1 mcrpg matches ..30 unless score .y2 mcrpg matches ..30 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..31 unless score .y2 mcrpg matches ..31 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", "   ", "  │", " So", "ulf", "ire", " Bl", "ast", " │ ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "  │"]
execute if score .y1 mcrpg matches ..31 unless score .y2 mcrpg matches ..31 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..32 unless score .y2 mcrpg matches ..32 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", "   ", "  └", "───", "───", "───", "───", "───", "─┘ ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "  │"]
execute if score .y1 mcrpg matches ..32 unless score .y2 mcrpg matches ..32 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..33 unless score .y2 mcrpg matches ..33 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "  │", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "  │"]
execute if score .y1 mcrpg matches ..33 unless score .y2 mcrpg matches ..33 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..34 unless score .y2 mcrpg matches ..34 run data modify storage mcrpg chars set value ["╪═ ", "Tie", "r 3", " ══", "═══", "═══", "═══", "═══", "═══", "│══", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "═══", "│══", "═══", "═══", "══ ", "Dra", "gon", " Fi", "re ", "═══", "═══", "═══", "═══", "═══", "═══", "══"]
execute if score .y1 mcrpg matches ..34 unless score .y2 mcrpg matches ..34 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..35 unless score .y2 mcrpg matches ..35 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "  │", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "  │", " "]
execute if score .y1 mcrpg matches ..35 unless score .y2 mcrpg matches ..35 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..36 unless score .y2 mcrpg matches ..36 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "  │", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "  │"]
execute if score .y1 mcrpg matches ..36 unless score .y2 mcrpg matches ..36 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..37 unless score .y2 mcrpg matches ..37 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", "   ", "  ┌", "───", "───", "───", "───", "───", "───", "┐  ", "   ", "   ", "   ", "   ", "   ", "┌──", "───", "───", "───", "───", "┐"]
execute if score .y1 mcrpg matches ..37 unless score .y2 mcrpg matches ..37 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..38 unless score .y2 mcrpg matches ..38 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", "   ", "  │", " Dr", "ago", "n F", "ire", " Be", "am ", "│  ", "   ", "   ", "   ", "   ", "   ", "│ D", "rag", "on ", "Spr", "ay ", "│ "]
execute if score .y1 mcrpg matches ..38 unless score .y2 mcrpg matches ..38 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..39 unless score .y2 mcrpg matches ..39 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", "   ", "  └", "───", "───", "───", "───", "───", "───", "┘  ", "   ", "   ", "   ", "   ", "   ", "└──", "───", "───", "───", "───", "┘  ", "   ", "  "]
execute if score .y1 mcrpg matches ..39 unless score .y2 mcrpg matches ..39 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..40 unless score .y2 mcrpg matches ..40 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", " │ ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "  │"]
execute if score .y1 mcrpg matches ..40 unless score .y2 mcrpg matches ..40 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..41 unless score .y2 mcrpg matches ..41 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", " └─", "───", "───", "───", "───", "───", "──┬", "───", "───", "───", "───", "───", "──┘"]
execute if score .y1 mcrpg matches ..41 unless score .y2 mcrpg matches ..41 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..42 unless score .y2 mcrpg matches ..42 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "  │"]
execute if score .y1 mcrpg matches ..42 unless score .y2 mcrpg matches ..42 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..43 unless score .y2 mcrpg matches ..43 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", " ┌─", "───", "───", "───", "───", "──┐"]
execute if score .y1 mcrpg matches ..43 unless score .y2 mcrpg matches ..43 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..44 unless score .y2 mcrpg matches ..44 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", " │ ", "Dra", "gon", " Br", "eat", "h │", " "]
execute if score .y1 mcrpg matches ..44 unless score .y2 mcrpg matches ..44 run function mcrpg:text/stat_tree/subfunc/render_line
execute if score .y1 mcrpg matches ..45 unless score .y2 mcrpg matches ..45 run data modify storage mcrpg chars set value ["│  ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", " └─", "───", "───", "───", "───", "──┘"]
execute if score .y1 mcrpg matches ..45 unless score .y2 mcrpg matches ..45 run function mcrpg:text/stat_tree/subfunc/render_line


tellraw @s ["",{"text":"\u2193","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 10002"}},{"text":" ","color":"light_purple"},{"text":"\u2190-","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 10003"}},{"text":"------------------------","color":"light_purple"},{"text":"-\u2192","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 10004"}},{"text":" "}]
