execute if entity @s[scores={mcrpg=0,mcrpg_mana=10..,mcrpg_dash=..1,mcrpg_cd=..1}] if block ^ ^ ^.2 #mcrpg:weak_or_no_collision run function mcrpg:item/air_wand/dash_check
execute if entity @s[scores={mcrpg=1,mcrpg_mana=20..}] run function mcrpg:skills/wind/blade
execute if entity @s[scores={mcrpg=2,mcrpg_mana=70..}] run function mcrpg:skills/wind/whirlwind