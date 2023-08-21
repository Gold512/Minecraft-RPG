execute store success score .state mcrpg run execute if entity @s[tag=no_cast_effect]

function mcrpg:text/settings/create/component/create_box

tellraw @s {"text":"","clickEvent":{"action":"run_command","value":"/trigger mcrpg_btn set 17"},"extra":["", {"storage":"mcrpg","nbt":"text", "interpret":true}, {"text":" Hide own casting effects","hoverEvent":{"action":"show_text","contents":"Whether or not to hide your own casting particles to prevent obstruction"}}]}