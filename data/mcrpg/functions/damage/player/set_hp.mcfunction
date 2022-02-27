# set death message if none is specified it says $player died
execute if score #temp cw_hp_old matches ..0 run function mcrpg:damage/player/death

# set new health
execute if score #temp cw_hp_old matches 1..511 run function mcrpg:damage/player/set_hp/l3_i0
execute if score #temp cw_hp_old matches 512..1023 run function mcrpg:damage/player/set_hp/l3_i512