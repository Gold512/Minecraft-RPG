function mcrpg:other/edit_item/oh_start

data modify entity @e[type=armor_stand,tag=item_holder,limit=1] HandItems[0].tag.mcrpg.skills append from storage minecraft:mcrpg skill

function mcrpg:other/edit_item/oh_save