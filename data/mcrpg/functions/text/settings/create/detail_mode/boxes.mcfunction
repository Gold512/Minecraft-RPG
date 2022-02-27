tellraw @s ["",{"text":"\u25bc","clickEvent":{"action":"run_command","value":"/function mcrpg:text/settings/click/detail_mode/close"}},{"text":" "},{"text":"Detail Mode","hoverEvent":{"action":"show_text","contents":"Amount of particles to display in spells or skills"}}]

execute unless entity @s[tag=mcrpg_ldm] run tellraw @s ["   ",{"text": "\u2523\u2578","color": "gray"},{"text":"\u2610 ","clickEvent":{"action":"run_command","value":"/function mcrpg:text/settings/click/detail_mode/low"}},{"text":"Low","color":"aqua"}]
execute if entity @s[tag=mcrpg_ldm] run tellraw @s ["   ",{"text": "\u2523\u2578","color": "gray"},{"text":"\u2611 ","color": "green"},{"text":"Low","color":"aqua"}]

execute unless entity @s[tag=mcrpg_ldm] run tellraw @s ["   ",{"text": "\u2517\u2578","color": "gray"},{"text":"\u2611 ","color": "green"},{"text":"Medium","color":"blue"}]
execute if entity @s[tag=mcrpg_ldm] run tellraw @s ["   ",{"text": "\u2517\u2578","color": "gray"},{"text":"\u2610 ","clickEvent":{"action":"run_command","value":"/function mcrpg:text/settings/click/detail_mode/normal"}},{"text":"Medium","color":"blue"}]