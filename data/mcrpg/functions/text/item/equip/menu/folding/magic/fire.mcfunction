execute store result score .state mcrpg run data get storage mcrpg out[0]
execute if score .state mcrpg matches 1 run data modify storage mcrpg out[0] set value 0b
execute if score .state mcrpg matches 0 run data modify storage mcrpg out[0] set value 1b