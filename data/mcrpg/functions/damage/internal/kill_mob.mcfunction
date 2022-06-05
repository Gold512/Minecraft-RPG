scoreboard players operation .id mcrpg = @s mcrpg_killer_id
execute if entity @s[type=!#mcrpg:no_xp] if score @s mcrpg_killer_id = @s mcrpg_killer_id as @a if score @s mcrpg_killer_id = .id mcrpg run tag @s add killer
function mcrpg:damage/internal/give_xp
kill @s