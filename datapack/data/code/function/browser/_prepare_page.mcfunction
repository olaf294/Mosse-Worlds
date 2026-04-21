# Put back in chest
$item replace block -5 64 9 container.$(slot) from entity @s player.cursor 

# Clear Cursor
item replace entity @s player.cursor with air

# Store World ID
data modify storage a temp2.id set from block -5 55 9 Items[0].components.minecraft:custom_data.id

# Open browser
function code:browser/_open_page with storage a temp2