scoreboard objectives remove mcrpg_hp
scoreboard objectives remove mcrpg_fp
scoreboard objectives remove mcrpg_ap

scoreboard objectives remove mcrpg_money
scoreboard objectives remove mcrpg_level

# detection scoreboards
scoreboard objectives remove mcrpg_coas_use
scoreboard objectives remove mcrpg_shifting

scoreboard objectives remove mcrpg_deaths
scoreboard objectives remove mcrpg_mobkills

scoreboard objectives remove mcrpg_d_dmg
scoreboard objectives remove mcrpg_d_absorbed
scoreboard objectives remove mcrpg_d_resisted

scoreboard objectives remove mcrpg_t_dmg
scoreboard objectives remove mcrpg_t_absorbed
scoreboard objectives remove mcrpg_t_resisted
scoreboard objectives remove mcrpg_t_blocked

# dummy position commands
scoreboard objectives remove mcrpg_ax
scoreboard objectives remove mcrpg_ay
scoreboard objectives remove mcrpg_az

scoreboard objectives remove mcrpg_px
scoreboard objectives remove mcrpg_py
scoreboard objectives remove mcrpg_pz

# raycast distance dummy objective
scoreboard objectives remove mcrpg_rcdist

# function arguments
scoreboard objectives remove mcrpg_pVel

scoreboard objectives remove mcrpg_mana
scoreboard objectives remove mcrpg_manaTimer
scoreboard objectives remove mcrpg_manaRegen
scoreboard objectives remove mcrpg_maxMana

# store wand attack is selected by player
scoreboard objectives remove mcrpg_sel_fw

# damage
scoreboard objectives remove mcrpg_dmg

# variable scoreboards
scoreboard objectives remove mcrpg
scoreboard objectives remove mcrpg1
scoreboard objectives remove mcrpg2

execute as @a at @s run tellraw @p {"text":"[ uninstall ] Minecraft RPG system "}