execute store result score @s mcrpg run data get entity @s SelectedItem.tag.mcrpg_atkId
execute if entity @s[scores={mcrpg=0,mcrpg_mana=30..}] run function mcrpg:skills/water/tier_1/water_beam
execute if entity @s[scores={mcrpg=1,mcrpg_mana=250..}] run function mcrpg:skills/water/tier_1/soulfire_blast
execute if entity @s[scores={mcrpg=2,mcrpg_mana=80..}] run function mcrpg:skills/water/tier_1/water_missile