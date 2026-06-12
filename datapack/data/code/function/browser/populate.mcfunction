scoreboard players add .total requests 1
scoreboard players add .world_browser requests 1

# If errors, try again
execute if data storage a a.error run tellraw @a[tag=is_admin,tag=!ignore] [{text:"\n⚠ An error occured!\nError: ",color:red},{storage:a,nbt:a.error.message}]
execute if data storage a a.error run return run http callback code:browser/populate store a a send "https://api.legiti.dev/top/5" GET


execute if data storage a {a:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:a,nbt:"a.status_code",color:dark_green}]
execute unless data storage a {a:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:a,nbt:"a.status_code",color:yellow}]

tellraw @a[tag=is_admin,tag=!ignore] {text:"Pᴏᴘᴜʟᴀᴛɪɴɢ Wᴏʀʟᴅꜱ...",color:"#333388"}

# cleanup aka setting an example structure because /data is dumb
data remove storage a temp.a
data merge storage a {temp:{a:{components:{"minecraft:lore":[[],"",[{text:"0",color:green,italic:0b},{text:"/",color:green},{text:"30",color:green},{text:" playing",color:gray}],[{text:"0",color:green,italic:0b},{text:" votes, ",color:gray},{text:"0",color:green},{text:" visits",color:gray}]],"minecraft:custom_data":{id:"none",slot:0,navigator.world:1b}}}}}
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# Get World 1
data modify storage a temp.a.id set from storage minecraft:a a.response[0].icon
data modify storage a temp.a.Slot set value 0b
data modify storage a temp.a.count set value 1
data modify storage a temp.a.components.minecraft:item_name set from storage a a.response[0].raw_name
data modify storage a temp.a.components.minecraft:lore[0] set from storage a a.response[0].raw_description
data modify storage a temp.a.components.minecraft:lore[3][0].text set string storage a a.response[0].votes
data modify storage a temp.a.components.minecraft:lore[3][2].text set string storage a a.response[0].visits
# Check if online
data modify storage a temp.isLocked set from storage a a.response[0].locked
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][0].text set string storage a a.response[0].player_count
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][0].color set value "green"
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][1].text set value "/"
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][2].text set string storage a a.response[0].max_players
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][3].text set value " playing"
# offline
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][0].text set value "World offline"
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][0].color set value "gray"
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][1].text set value ""
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][2].text set value ""
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][3].text set value ""
# Set custom data
data modify storage a temp.a.components.minecraft:custom_data.id set from storage a a.response[0].world_uuid
data modify storage a temp.a.components.minecraft:custom_data.slot set value 0

# Merge World 1
data modify block -5 64 9 Items append from storage a temp.a

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# Get World 2
data modify storage a temp.a.id set from storage minecraft:a a.response[1].icon
data modify storage a temp.a.Slot set value 1b
data modify storage a temp.a.count set value 1
data modify storage a temp.a.components.minecraft:item_name set from storage a a.response[1].raw_name
data modify storage a temp.a.components.minecraft:lore[0] set from storage a a.response[1].raw_description
data modify storage a temp.a.components.minecraft:lore[3][0].text set string storage a a.response[1].votes
data modify storage a temp.a.components.minecraft:lore[3][2].text set string storage a a.response[1].visits
# Check if online
data modify storage a temp.isLocked set from storage a a.response[1].locked
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][0].text set string storage a a.response[1].player_count
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][0].color set value "green"
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][1].text set value "/"
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][2].text set string storage a a.response[1].max_players
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][3].text set value " playing"
# offline
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][0].text set value "World offline"
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][0].color set value "gray"
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][1].text set value ""
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][2].text set value ""
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][3].text set value ""
# Set custom data
data modify storage a temp.a.components.minecraft:custom_data.id set from storage a a.response[1].world_uuid
data modify storage a temp.a.components.minecraft:custom_data.slot set value 1

# Merge World 2
data modify block -5 64 9 Items append from storage a temp.a

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# Get World 3
data modify storage a temp.a.id set from storage minecraft:a a.response[2].icon
data modify storage a temp.a.Slot set value 2b
data modify storage a temp.a.count set value 1
data modify storage a temp.a.components.minecraft:item_name set from storage a a.response[2].raw_name
data modify storage a temp.a.components.minecraft:lore[0] set from storage a a.response[2].raw_description
data modify storage a temp.a.components.minecraft:lore[3][0].text set string storage a a.response[2].votes
data modify storage a temp.a.components.minecraft:lore[3][2].text set string storage a a.response[2].visits
# Check if online
data modify storage a temp.isLocked set from storage a a.response[2].locked
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][0].text set string storage a a.response[2].player_count
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][0].color set value "green"
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][1].text set value "/"
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][2].text set string storage a a.response[2].max_players
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][3].text set value " playing"
# offline
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][0].text set value "World offline"
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][0].color set value "gray"
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][1].text set value ""
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][2].text set value ""
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][3].text set value ""
# Set custom data
data modify storage a temp.a.components.minecraft:custom_data.id set from storage a a.response[2].world_uuid
data modify storage a temp.a.components.minecraft:custom_data.slot set value 2

# Merge World 3
data modify block -5 64 9 Items append from storage a temp.a

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# Get World 4
data modify storage a temp.a.id set from storage minecraft:a a.response[3].icon
data modify storage a temp.a.Slot set value 3b
data modify storage a temp.a.count set value 1
data modify storage a temp.a.components.minecraft:item_name set from storage a a.response[3].raw_name
data modify storage a temp.a.components.minecraft:lore[0] set from storage a a.response[3].raw_description
data modify storage a temp.a.components.minecraft:lore[3][0].text set string storage a a.response[3].votes
data modify storage a temp.a.components.minecraft:lore[3][2].text set string storage a a.response[3].visits
# Check if online
data modify storage a temp.isLocked set from storage a a.response[3].locked
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][0].text set string storage a a.response[3].player_count
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][0].color set value "green"
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][1].text set value "/"
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][2].text set string storage a a.response[3].max_players
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][3].text set value " playing"
# offline
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][0].text set value "World offline"
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][0].color set value "gray"
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][1].text set value ""
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][2].text set value ""
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][3].text set value ""
# Set custom data
data modify storage a temp.a.components.minecraft:custom_data.id set from storage a a.response[3].world_uuid
data modify storage a temp.a.components.minecraft:custom_data.slot set value 3

# Merge World 4
data modify block -5 64 9 Items append from storage a temp.a

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# Get World 5
data modify storage a temp.a.id set from storage minecraft:a a.response[4].icon
data modify storage a temp.a.Slot set value 4b
data modify storage a temp.a.count set value 1
data modify storage a temp.a.components.minecraft:item_name set from storage a a.response[4].raw_name
data modify storage a temp.a.components.minecraft:lore[0] set from storage a a.response[4].raw_description
data modify storage a temp.a.components.minecraft:lore[3][0].text set string storage a a.response[4].votes
data modify storage a temp.a.components.minecraft:lore[3][2].text set string storage a a.response[4].visits
# Check if online
data modify storage a temp.isLocked set from storage a a.response[4].locked
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][0].text set string storage a a.response[4].player_count
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][0].color set value "green"
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][1].text set value "/"
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][2].text set string storage a a.response[4].max_players
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][3].text set value " playing"
# offline
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][0].text set value "World offline"
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][0].color set value "gray"
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][1].text set value ""
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][2].text set value ""
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][3].text set value ""
# Set custom data
data modify storage a temp.a.components.minecraft:custom_data.id set from storage a a.response[4].world_uuid
data modify storage a temp.a.components.minecraft:custom_data.slot set value 4

# Merge World 5
data modify block -5 64 9 Items append from storage a temp.a

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# Get World 6
data modify storage a temp.a.id set from storage minecraft:a a.response[5].icon
data modify storage a temp.a.Slot set value 5b
data modify storage a temp.a.count set value 1
data modify storage a temp.a.components.minecraft:item_name set from storage a a.response[5].raw_name
data modify storage a temp.a.components.minecraft:lore[0] set from storage a a.response[5].raw_description
data modify storage a temp.a.components.minecraft:lore[3][0].text set string storage a a.response[5].votes
data modify storage a temp.a.components.minecraft:lore[3][2].text set string storage a a.response[5].visits
# Check if online
data modify storage a temp.isLocked set from storage a a.response[5].locked
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][0].text set string storage a a.response[5].player_count
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][0].color set value "green"
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][1].text set value "/"
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][2].text set string storage a a.response[5].max_players
execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][3].text set value " playing"
# offline
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][0].text set value "World offline"
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][0].color set value "gray"
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][1].text set value ""
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][2].text set value ""
execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][3].text set value ""
# Set custom data
data modify storage a temp.a.components.minecraft:custom_data.id set from storage a a.response[5].world_uuid
data modify storage a temp.a.components.minecraft:custom_data.slot set value 5

# Merge World 6
data modify block -5 64 9 Items append from storage a temp.a

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
## Get World 7
#data modify storage a temp.a.id set from storage minecraft:a a.response[6].icon
#data modify storage a temp.a.Slot set value 6b
#data modify storage a temp.a.count set value 1
#data modify storage a temp.a.components.minecraft:item_name set from storage a a.response[6].raw_name
#data modify storage a temp.a.components.minecraft:lore[0] set from storage a a.response[6].raw_description
#data modify storage a temp.a.components.minecraft:lore[3][0].text set string storage a a.response[6].votes
#data modify storage a temp.a.components.minecraft:lore[3][2].text set string storage a a.response[6].visits
## Check if online
#data modify storage a temp.isLocked set from storage a a.response[6].locked
#execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][0].text set string storage a a.response[6].player_count
#execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][0].color set value "green"
#execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][1].text set value "/"
#execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][2].text set string storage a a.response[6].max_players
#execute if data storage a temp{isLocked:1b} run data modify storage a temp.a.components.minecraft:lore[2][3].text set value " playing"
## offline
#execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][0].text set value "World offline"
#execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][0].color set value "gray"
#execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][1].text set value ""
#execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][2].text set value ""
#execute if data storage a temp{isLocked:0b} run data modify storage a temp.a.components.minecraft:lore[2][3].text set value ""
## Set custom data
#data modify storage a temp.a.components.minecraft:custom_data.id set from storage a a.response[6].world_uuid
#data modify storage a temp.a.components.minecraft:custom_data.slot set value 6
#
## Merge World 7
#data modify block -5 64 9 Items append from storage a temp.a