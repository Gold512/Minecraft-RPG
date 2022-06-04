function mcrpg:other/edit_item/mh_start

data modify entity @e[type=armor_stand,sort=nearest,tag=mcrpg_item_cont,limit=1] HandItems[0].tag.mcrpg.skills set value []

function mcrpg:other/edit_item/mh_save