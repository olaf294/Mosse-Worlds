scoreboard players add .total requests 1
scoreboard players add .world_browser requests 1

# If errors, quit
execute if data storage a a.error run return run tellraw @a[tag=is_admin,tag=!ignore] [{text:"\n⚠ An error occured!\nError: ",color:red},{storage:a,nbt:a.error.message}]

execute if data storage a {a:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:a,nbt:"a.status_code",plain:1b,color:dark_green}]
execute unless data storage a {a:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:a,nbt:"a.status_code",plain:1b,color:yellow}]

# Clear the chest
data remove block -4 64 16 Items

# Get items in array
scoreboard players set .browser_items misc 0
execute store result score .browser_items misc if data storage a a.response[]

# Check how many
execute if score .browser_items misc matches 0 run return run function code:browser/fill_browser/single
function code:browser/fill_browser/array