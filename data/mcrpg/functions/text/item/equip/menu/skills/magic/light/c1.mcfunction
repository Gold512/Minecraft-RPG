data modify storage mcrpg temp set value []
data modify storage mcrpg temp append from storage mcrpg db.light[{category:1}]
execute if score @s mcrpg_menu_y matches ..301 unless score .height mcrpg matches ..301 if data storage mcrpg temp[0] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20401"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[0].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[0].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[0].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..302 unless score .height mcrpg matches ..302 if data storage mcrpg temp[1] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20402"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[1].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[1].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[1].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..303 unless score .height mcrpg matches ..303 if data storage mcrpg temp[2] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20403"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[2].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[2].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[2].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..304 unless score .height mcrpg matches ..304 if data storage mcrpg temp[3] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20404"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[3].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[3].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[3].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..305 unless score .height mcrpg matches ..305 if data storage mcrpg temp[4] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20405"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[4].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[4].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[4].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..306 unless score .height mcrpg matches ..306 if data storage mcrpg temp[5] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20406"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[5].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[5].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[5].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..307 unless score .height mcrpg matches ..307 if data storage mcrpg temp[6] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20407"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[6].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[6].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[6].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..308 unless score .height mcrpg matches ..308 if data storage mcrpg temp[7] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20408"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[7].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[7].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[7].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..309 unless score .height mcrpg matches ..309 if data storage mcrpg temp[8] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20409"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[8].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[8].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[8].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..310 unless score .height mcrpg matches ..310 if data storage mcrpg temp[9] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20410"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[9].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[9].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[9].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..311 unless score .height mcrpg matches ..311 if data storage mcrpg temp[10] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20411"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[10].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[10].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[10].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..312 unless score .height mcrpg matches ..312 if data storage mcrpg temp[11] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20412"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[11].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[11].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[11].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..313 unless score .height mcrpg matches ..313 if data storage mcrpg temp[12] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20413"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[12].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[12].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[12].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..314 unless score .height mcrpg matches ..314 if data storage mcrpg temp[13] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20414"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[13].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[13].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[13].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..315 unless score .height mcrpg matches ..315 if data storage mcrpg temp[14] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20415"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[14].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[14].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[14].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..316 unless score .height mcrpg matches ..316 if data storage mcrpg temp[15] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20416"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[15].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[15].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[15].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..317 unless score .height mcrpg matches ..317 if data storage mcrpg temp[16] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20417"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[16].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[16].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[16].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..318 unless score .height mcrpg matches ..318 if data storage mcrpg temp[17] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20418"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[17].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[17].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[17].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..319 unless score .height mcrpg matches ..319 if data storage mcrpg temp[18] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20419"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[18].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[18].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[18].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..320 unless score .height mcrpg matches ..320 if data storage mcrpg temp[19] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20420"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[19].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[19].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[19].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..321 unless score .height mcrpg matches ..321 if data storage mcrpg temp[20] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20421"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[20].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[20].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[20].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..322 unless score .height mcrpg matches ..322 if data storage mcrpg temp[21] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20422"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[21].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[21].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[21].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..323 unless score .height mcrpg matches ..323 if data storage mcrpg temp[22] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20423"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[22].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[22].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[22].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..324 unless score .height mcrpg matches ..324 if data storage mcrpg temp[23] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20424"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[23].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[23].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[23].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..325 unless score .height mcrpg matches ..325 if data storage mcrpg temp[24] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20425"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[24].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[24].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[24].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..326 unless score .height mcrpg matches ..326 if data storage mcrpg temp[25] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20426"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[25].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[25].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[25].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..327 unless score .height mcrpg matches ..327 if data storage mcrpg temp[26] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20427"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[26].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[26].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[26].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..328 unless score .height mcrpg matches ..328 if data storage mcrpg temp[27] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20428"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[27].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[27].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[27].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..329 unless score .height mcrpg matches ..329 if data storage mcrpg temp[28] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20429"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[28].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[28].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[28].ct", "color":"green","extra":["⌛"]}]}
execute if score @s mcrpg_menu_y matches ..330 unless score .height mcrpg matches ..330 if data storage mcrpg temp[29] run tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 20430"},"extra":["   ", {"text":"┣━ ","color":"gray"},{"storage":"mcrpg","nbt":"temp[29].displayName","interpret":true}, " ", {"storage":"mcrpg","nbt":"temp[29].mana", "color":"blue","extra":["❁"]}," ", {"storage":"mcrpg","nbt":"temp[29].ct", "color":"green","extra":["⌛"]}]}
execute store result score .len mcrpg run data get storage mcrpg temp
scoreboard players operation .height mcrpg -= .len mcrpg
