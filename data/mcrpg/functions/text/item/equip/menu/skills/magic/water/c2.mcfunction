data modify storage mcrpg temp set value []
data modify storage mcrpg temp append from storage mcrpg db.water[{category:2}]
execute if score @s mcrpg_menu_y matches ..31 unless score .height mcrpg matches ..31 if data storage mcrpg temp[0] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20131"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[0].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[0].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[0].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..32 unless score .height mcrpg matches ..32 if data storage mcrpg temp[1] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20132"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[1].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[1].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[1].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..33 unless score .height mcrpg matches ..33 if data storage mcrpg temp[2] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20133"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[2].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[2].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[2].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..34 unless score .height mcrpg matches ..34 if data storage mcrpg temp[3] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20134"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[3].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[3].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[3].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..35 unless score .height mcrpg matches ..35 if data storage mcrpg temp[4] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20135"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[4].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[4].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[4].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..36 unless score .height mcrpg matches ..36 if data storage mcrpg temp[5] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20136"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[5].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[5].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[5].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..37 unless score .height mcrpg matches ..37 if data storage mcrpg temp[6] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20137"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[6].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[6].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[6].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..38 unless score .height mcrpg matches ..38 if data storage mcrpg temp[7] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20138"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[7].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[7].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[7].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..39 unless score .height mcrpg matches ..39 if data storage mcrpg temp[8] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20139"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[8].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[8].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[8].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..40 unless score .height mcrpg matches ..40 if data storage mcrpg temp[9] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20140"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[9].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[9].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[9].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..41 unless score .height mcrpg matches ..41 if data storage mcrpg temp[10] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20141"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[10].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[10].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[10].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..42 unless score .height mcrpg matches ..42 if data storage mcrpg temp[11] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20142"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[11].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[11].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[11].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..43 unless score .height mcrpg matches ..43 if data storage mcrpg temp[12] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20143"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[12].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[12].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[12].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..44 unless score .height mcrpg matches ..44 if data storage mcrpg temp[13] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20144"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[13].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[13].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[13].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..45 unless score .height mcrpg matches ..45 if data storage mcrpg temp[14] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20145"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[14].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[14].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[14].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..46 unless score .height mcrpg matches ..46 if data storage mcrpg temp[15] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20146"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[15].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[15].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[15].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..47 unless score .height mcrpg matches ..47 if data storage mcrpg temp[16] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20147"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[16].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[16].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[16].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..48 unless score .height mcrpg matches ..48 if data storage mcrpg temp[17] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20148"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[17].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[17].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[17].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..49 unless score .height mcrpg matches ..49 if data storage mcrpg temp[18] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20149"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[18].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[18].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[18].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..50 unless score .height mcrpg matches ..50 if data storage mcrpg temp[19] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20150"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[19].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[19].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[19].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..51 unless score .height mcrpg matches ..51 if data storage mcrpg temp[20] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20151"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[20].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[20].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[20].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..52 unless score .height mcrpg matches ..52 if data storage mcrpg temp[21] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20152"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[21].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[21].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[21].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..53 unless score .height mcrpg matches ..53 if data storage mcrpg temp[22] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20153"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[22].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[22].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[22].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..54 unless score .height mcrpg matches ..54 if data storage mcrpg temp[23] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20154"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[23].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[23].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[23].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..55 unless score .height mcrpg matches ..55 if data storage mcrpg temp[24] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20155"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[24].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[24].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[24].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..56 unless score .height mcrpg matches ..56 if data storage mcrpg temp[25] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20156"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[25].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[25].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[25].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..57 unless score .height mcrpg matches ..57 if data storage mcrpg temp[26] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20157"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[26].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[26].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[26].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..58 unless score .height mcrpg matches ..58 if data storage mcrpg temp[27] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20158"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[27].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[27].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[27].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..59 unless score .height mcrpg matches ..59 if data storage mcrpg temp[28] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20159"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[28].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[28].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[28].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..60 unless score .height mcrpg matches ..60 if data storage mcrpg temp[29] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20160"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[29].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[29].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[29].ct", "color":"green","extra":["⌛"]}]}
execute store result score .len mcrpg run data get storage mcrpg temp
scoreboard players operation .height mcrpg -= .len mcrpg