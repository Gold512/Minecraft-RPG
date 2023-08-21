data modify storage mcrpg out append value 0b
scoreboard players remove .loop mcrpg 1
execute if score .loop mcrpg matches 1.. run function mcrpg:general/binary/subfunc/pad_loop