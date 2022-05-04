tellraw @s {"text":"--------------------------------", "color":"light_purple"}
tellraw @s ["", {"text":"mcrpg item tag", "color":"aqua"}, ": '", {"nbt":"SelectedItem.tag.mcrpg","entity":"@s", "color":"green"}, "'"]
tellraw @s ["", {"text":"Item Skills", "color":"aqua"}, ": [", {"text":"'","color": "gray"},{"nbt":"SelectedItem.tag.skills[].displayName","entity":"@s", "separator": {"text":"', '","color":"gray"}, "color": "green"},{"text":"'","color": "gray"}, "]"]
tellraw @s {"text":"--------------------------------", "color":"light_purple"}
