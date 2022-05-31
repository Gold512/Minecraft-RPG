# switch from mainhand to offhand 
# the item will currently be in the offhand 
# and have a currentHand value of 1 
# update currentHand value to 2 

# start write to item in offhand 
function mcrpg:other/edit_item/mh_start

data modify entity @e[type=armor_stand,tag=item_holder,limit=1] HandItems[0].tag.mcrpg.event.currentHand set value 1

function mcrpg:other/edit_item/mh_save