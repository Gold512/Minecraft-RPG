# ↑ ↓

# calculate total value 
scoreboard players operation .value mcrpg = .bronze_coins mcrpg

scoreboard players operation .temp mcrpg = .silver_coins mcrpg
scoreboard players operation .temp mcrpg *= #100 mcrpg_const
scoreboard players operation .value mcrpg += .temp mcrpg

scoreboard players operation .temp mcrpg = .gold_coins mcrpg
scoreboard players operation .temp mcrpg *= #10000 mcrpg_const
scoreboard players operation .value mcrpg += .temp mcrpg

scoreboard players operation .temp mcrpg = .platinum_coins mcrpg
scoreboard players operation .temp mcrpg *= #1000000 mcrpg_const
scoreboard players operation .value mcrpg += .temp mcrpg

function mcrpg:text/item/coin_exchange/parse_int/init


tellraw @s {"text":"--------------------------------","color":"dark_purple"}
tellraw @s ["", {"text":"Total Value: "}, {"storage":"mcrpg","nbt":"temp[]","separator": "", "color":"aqua"}]
tellraw @s ["", {"text":"[","color":"gray"},{"text":"-","color":"dark_gray"},{"text":"]","color":"gray"}, {"text":"","clickEvent": {"action":"run_command", "value":"/trigger mcrpg_btn set 1500"},"hoverEvent":{"action":"show_text","contents":{"text":"Convert 100 bronze coins to a bronze coin"}},"extra": [{"text":"[","color":"gray"},{"text":"↓","color":"green"},{"text":"]","color":"gray"}]}, " ", {"score":{"name": ".bronze_coins","objective": "mcrpg"}}, " ", {"text":"Bronze Coin(s)","color":"dark_green"}]
tellraw @s ["", {"text":"","clickEvent": {"action":"run_command", "value":"/trigger mcrpg_btn set 1501"},"hoverEvent":{"action":"show_text","contents":"convert a silver coin to 100 bronze coins"},"extra": [{"text":"[","color":"gray"},{"text":"↑","color":"red"},{"text":"]","color":"gray"}]},{"text":"","clickEvent": {"action":"run_command", "value":"/trigger mcrpg_btn set 1502"},"hoverEvent":{"action":"show_text","contents":"Convert 100 silver coins to a gold coin"},"extra": [{"text":"[","color":"gray"},{"text":"↓","color":"green"},{"text":"]","color":"gray"}]}, " ", {"score":{"name": ".silver_coins","objective": "mcrpg"}}, " ", {"text":"Silver Coin(s)","color":"blue"}]
tellraw @s ["", {"text":"","clickEvent": {"action":"run_command", "value":"/trigger mcrpg_btn set 1503"},"hoverEvent":{"action":"show_text","contents":"convert a gold coin to 100 silver coins"},"extra": [{"text":"[","color":"gray"},{"text":"↑","color":"red"},{"text":"]","color":"gray"}]},{"text":"","clickEvent": {"action":"run_command", "value":"/trigger mcrpg_btn set 1504"},"hoverEvent":{"action":"show_text","contents":"Convert 100 gold coins to a silver coin"},"extra": [{"text":"[","color":"gray"},{"text":"↓","color":"green"},{"text":"]","color":"gray"}]}, " ", {"score":{"name": ".gold_coins","objective": "mcrpg"}}, " ", {"text":"Gold Coin(s)","color":"dark_purple"}]
tellraw @s ["", {"text":"","clickEvent": {"action":"run_command", "value":"/trigger mcrpg_btn set 1505"},"hoverEvent":{"action":"show_text","contents":"convert a platinum coin to 100 gold coins"},"extra": [{"text":"[","color":"gray"},{"text":"↑","color":"red"},{"text":"]","color":"gray"}]},{"text":"[","color":"gray"},{"text":"-","color":"dark_gray"},{"text":"]","color":"gray"}, " ", {"score":{"name": ".platinum_coins","objective": "mcrpg"}}, " ", {"text":"Platinum Coin(s)","color":"gold"}]

# data remove storage mcrpg temp
