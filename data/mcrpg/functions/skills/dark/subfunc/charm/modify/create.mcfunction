data modify entity @s Gossips append value {Type:"minor_positive", Value:20}
data modify entity @s Gossips[-1].Target set from entity @a[tag=caster,limit=1,sort=nearest] UUID