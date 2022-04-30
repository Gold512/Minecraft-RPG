execute store result score .armor mcrpg run attribute @s generic.armor get

# get % defense of physical armor
# defense = armor * 4 <- percentage of damage reduced 
# dmg * (100 - defense) / 100 

# since 1 point of armor represents 1% damage multiply damage by 4 
scoreboard players operation .armor mcrpg *= #4 mcrpg_const
scoreboard players set .def mcrpg 100
scoreboard players operation .def mcrpg -= .armor mcrpg
scoreboard players operation @s mcrpg_normal_dmg *= .def mcrpg
scoreboard players operation @s mcrpg_normal_dmg /= #100 mcrpg_const
scoreboard players operation @s mcrpg_dmg = @s mcrpg_normal_dmg
scoreboard players reset @s mcrpg_normal_dmg