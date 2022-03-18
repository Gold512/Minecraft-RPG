execute store result score @s mcrpg run data get entity @s SelectedItem.tag.mcrpg_atkId
execute if entity @s[scores={mcrpg=0,mcrpg_mana=10..}] run function mcrpg:skills/fire/tier_2/soulfire_beam
execute if entity @s[scores={mcrpg=1,mcrpg_mana=250..}] run function mcrpg:skills/fire/tier_2/soulfire_blast
execute if entity @s[scores={mcrpg=2,mcrpg_mana=60..}] run function mcrpg:skills/fire/tier_2/soulfire_shockwave