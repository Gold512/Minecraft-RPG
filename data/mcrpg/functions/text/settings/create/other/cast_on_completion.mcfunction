execute store success score .state mcrpg run execute if entity @s[tag=mcrpg_auto_cast]

function mcrpg:text/settings/create/component/create_box

tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 16"},"extra":["", {"storage":"mcrpg","nbt":"text", "interpret":true}, {"text":" Auto cast","hoverEvent":{"action":"show_text","contents":"Whether or not to automatically cast the skill once it is finished casting, if off right click once charged to cast"}}]}