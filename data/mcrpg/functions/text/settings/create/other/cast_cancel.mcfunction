execute store success score .state mcrpg run execute if entity @s[tag=mcrpg_cast_cancel]

function mcrpg:text/settings/create/component/create_box

tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 15"},"extra":["", {"storage":"mcrpg","nbt":"text", "interpret":true}, {"text":" Cast cancelation","hoverEvent":{"action":"show_text","contents":"Whether or not to allow clicking again to cancel cast"}}]}