execute if score @p mcrpg_money matches ..59 run tellraw @s [{"text":"Insufficient currency ","color":"red"},{"text":"item costs ","color":"white"},{"text":"$60 ","color":"aqua"},{"text":"but you only have "},{"score":{"name":"@p","objective":"mcrpg_money"},"color":"red"}]
execute if score @p mcrpg_money matches 60.. run tellraw @s [{"text":"Bought ","color":"green"},{"text":"item "},{"text":"Enchanted Book ","color":"yellow"},{"text":"[","color":"gray"},{"text":"sharpness 5","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"for "},{"text":"$60","color":"aqua"}]
execute if score @p mcrpg_money matches 60.. run give @s enchanted_book{StoredEnchantments:[{id:"sharpness",lvl:5}]} 1
execute if score @p mcrpg_money matches 60.. run scoreboard players remove @s mcrpg_money 60
function mcrpg:update_book