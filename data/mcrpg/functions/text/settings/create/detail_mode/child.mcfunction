tellraw @s ["",{"text":"\u25bc","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 12"}},{"text":" "},{"text":"Detail Mode","hoverEvent":{"action":"show_text","contents":"Amount of particles to display in spells or skills"}}]

function mcrpg:text/settings/create/component/create_box

execute unless entity @s[tag=mcrpg_ldm] run tellraw @s ["   ",{"text": "\u2523\u2578","color": "gray"},{"text":"\u25CB ","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 13"}},{"text":"Low","color":"aqua"}]
execute if entity @s[tag=mcrpg_ldm] run tellraw @s ["   ",{"text": "\u2523\u2578","color": "gray"},{"text":"\u25CF ","color": "green"},{"text":"Low","color":"aqua"}]

execute unless entity @s[tag=mcrpg_ldm] run tellraw @s ["   ",{"text": "\u2517\u2578","color": "gray"},{"text":"\u25CF ","color": "green"},{"text":"Medium","color":"blue"}]
execute if entity @s[tag=mcrpg_ldm] run tellraw @s ["   ",{"text": "\u2517\u2578","color": "gray"},{"text":"\u25CB ","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 14"}},{"text":"Medium","color":"blue"}]