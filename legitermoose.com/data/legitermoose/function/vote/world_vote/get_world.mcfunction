# store the votes of that world in the score
$execute store result score .world_vote legitermoose.misc run data get storage legitermoose:worlds worlds[{world_id:$(id)}].votes 1

execute if score @s worldid > .global_id legitermoose.misc run return run tellraw @s {text:"Yᴏᴜ ᴄᴀɴɴᴏᴛ ᴠᴏᴛᴇ ᴀ ɴᴏɴ-ᴇxɪꜱᴛᴀɴᴛ ᴡᴏʀʟᴅ!",color:dark_red}
execute if score @s worldid matches ..-1 run return run tellraw @s {text:"Yᴏᴜ ᴄᴀɴɴᴏᴛ ᴠᴏᴛᴇ ᴀ ɴᴏɴ-ᴇxɪꜱᴛᴀɴᴛ ᴡᴏʀʟᴅ!",color:dark_red}

# Check if you own this world
scoreboard players set .owns_world legitermoose.temp 0
$data modify storage legitermoose:temp vote_uuid.temp set from storage legitermoose:worlds worlds[{world_id:$(id)}].uuid
data modify storage legitermoose:temp vote_uuid.UUID set from entity @s UUID
data modify storage legitermoose:temp vote_uuid.uid0 set from storage legitermoose:temp vote_uuid.UUID[0]
data modify storage legitermoose:temp vote_uuid.uid1 set from storage legitermoose:temp vote_uuid.UUID[1]
data modify storage legitermoose:temp vote_uuid.uid2 set from storage legitermoose:temp vote_uuid.UUID[2]
data modify storage legitermoose:temp vote_uuid.uid3 set from storage legitermoose:temp vote_uuid.UUID[3]

function legitermoose:vote/world_vote/get_voted with storage legitermoose:temp vote_uuid
execute if score .owns_world legitermoose.temp matches 1 run return run tellraw @s {text:"Yᴏᴜ ᴄᴀɴɴᴏᴛ ᴠᴏᴛᴇ ʏᴏᴜʀ ᴏᴡɴ ᴡᴏʀʟᴅ!",color:dark_red}

# get if you have already voted that world
data modify storage legitermoose:temp check_voted.uuid set from entity @s UUID
data modify storage legitermoose:temp check_voted.id set from storage legitermoose:temp vote.id
function legitermoose:vote/world_vote/check_if_voted with storage legitermoose:temp check_voted