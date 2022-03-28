# tags to ensure the function only runs once
tag @a[tag=mcrpg_utility_book,nbt=!{SelectedItem:{tag:{mcrpg:"utility_book"}}}] remove mcrpg_utility_book

execute as @a[tag=!mcrpg_utility_book,nbt={SelectedItem:{tag:{mcrpg:"utility_book"}}}] run function mcrpg:update_book

tag @a[tag=!mcrpg_utility_book,nbt={SelectedItem:{tag:{mcrpg:"utility_book"}}}] add mcrpg_utility_book

# remove tag if player is no longer holding book
tag @a[tag=mcrpg_utility_book,nbt=!{SelectedItem:{tag:{mcrpg:"utility_book"}}}] remove mcrpg_utility_book
