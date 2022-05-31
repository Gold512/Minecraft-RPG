# switch from offhand to mainhand
# the item will currently be in the mainhand
# and have a currentHand value of 2
# update currentHand value to 1

# start write to item in mainhand 
function mcrpg:other/edit_item/oh_start

data modify entity @e[type=armor_stand,tag=item_holder,limit=1] HandItems[0].tag.mcrpg.event.currentHand set value 2

function mcrpg:other/edit_item/oh_save