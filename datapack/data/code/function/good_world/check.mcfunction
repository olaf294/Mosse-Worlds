# Banned Worlds
execute store result score .is_blacklisted misc run function code:good_world/blacklist/check with storage api temp
execute if score .is_blacklisted misc matches 1 run tellraw olaf_294 [{text:"⚠ ",color:red},{text:"Wᴏʀʟᴅ ᴡɪᴛʜ ID '",color:white},{storage:api,nbt:"temp.world_uuid",interpret:1b,color:yellow},{text:"' ʜᴀꜱ ʙᴇᴇɴ ʙʟᴀᴄᴋʟɪꜱᴛᴇᴅ.",color:white}]
execute if score .is_blacklisted misc matches 2 run tellraw olaf_294 [{text:"⚠ ",color:red},{text:"Oᴡɴᴇʀ ᴡɪᴛʜ ID '",color:white},{storage:api,nbt:"temp.owner_uuid",interpret:1b,color:yellow},{text:"' ʜᴀꜱ ʙᴇᴇɴ ʙʟᴀᴄᴋʟɪꜱᴛᴇᴅ.",color:white}]
execute if score .is_blacklisted misc matches 1..2 run return 0

    #execute if data storage api {good_world:{owner_uuid:"<banned uuid>"}} run return fail

# Store values in score
execute store result score .votes misc run data get storage api temp.votes
execute store result score .visits misc run data get storage api temp.visits

# Filters
# ------------ world with at least 25 votes
execute unless score .votes misc matches 25.. run return 0
# ---- OR ---- world with at least 20 votes and 100 visits
execute unless score .votes misc matches 20.. unless score .visits misc matches 100.. run return 0
# ---- OR ---- world with at least 15 votes and 80 visits
execute unless score .votes misc matches 15.. unless score .visits misc matches 80.. run return 0
# ----------------------

function code:good_world/display with storage api temp