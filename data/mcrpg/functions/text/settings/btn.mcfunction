execute if score @s mcrpg_btn matches 11 run function mcrpg:text/settings/click/detail_mode/open
execute if score @s mcrpg_btn matches 12 run function mcrpg:text/settings/click/detail_mode/close
execute if score @s mcrpg_btn matches 13 run function mcrpg:text/settings/click/detail_mode/low
execute if score @s mcrpg_btn matches 14 run function mcrpg:text/settings/click/detail_mode/normal
execute if score @s mcrpg_btn matches 15 run function mcrpg:text/settings/click/other/cast_cancel
execute if score @s mcrpg_btn matches 16 run function mcrpg:text/settings/click/other/auto_cast
execute if score @s mcrpg_btn matches 17 run function mcrpg:text/settings/click/other/hide_own_cast_effect


function mcrpg:other/click_sound
trigger mcrpg_settings_menu
 