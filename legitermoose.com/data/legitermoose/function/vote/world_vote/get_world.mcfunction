# store the votes of that world in the score
$execute store result score .world_vote legitermoose.misc run data get storage legitermoose:worlds worlds[{world_id:$(id)}].votes 1

execute if score @s worldid > .global_id legitermoose.misc run return run tellraw @s {text:"Yᴏᴜ ᴄᴀɴɴᴏᴛ ᴠᴏᴛᴇ ᴀ ɴᴏɴ-ᴇxɪꜱᴛᴀɴᴛ ᴡᴏʀʟᴅ!",color:dark_red}
execute if score @s worldid matches ..-9 run return run tellraw @s {text:"Yᴏᴜ ᴄᴀɴɴᴏᴛ ᴠᴏᴛᴇ ᴀ ɴᴏɴ-ᴇxɪꜱᴛᴀɴᴛ ᴡᴏʀʟᴅ!",color:dark_red}

# if you are world owner - part 1
execute store result score .uuid_0 legitermoose.temp run data get entity @s UUID[0]
$execute store result score .world_uuid_0 legitermoose.temp run data get storage legitermoose:worlds worlds[{world_id:$(id)}].uuid[0]
execute if score .uuid_0 legitermoose.temp = .world_uuid_0 legitermoose.temp at @s run playsound block.note_block.bass ui @s ~ ~ ~ 1 .5 1
execute if score .uuid_0 legitermoose.temp = .world_uuid_0 legitermoose.temp run return run tellraw @s {text:"Yᴏᴜ ᴄᴀɴɴᴏᴛ ᴠᴏᴛᴇ ʏᴏᴜʀ ᴏᴡɴ ᴡᴏʀʟᴅ!",color:dark_red}

execute store result score .uuid_1 legitermoose.temp run data get entity @s UUID[1]
$execute store result score .world_uuid_1 legitermoose.temp run data get storage legitermoose:worlds worlds[{world_id:$(id)}].uuid[1]
execute if score .uuid_1 legitermoose.temp = .world_uuid_1 legitermoose.temp at @s run playsound block.note_block.bass ui @s ~ ~ ~ 1 .5 1
execute if score .uuid_1 legitermoose.temp = .world_uuid_1 legitermoose.temp run return run tellraw @s {text:"Yᴏᴜ ᴄᴀɴɴᴏᴛ ᴠᴏᴛᴇ ʏᴏᴜʀ ᴏᴡɴ ᴡᴏʀʟᴅ!",color:dark_red}

execute store result score .uuid_2 legitermoose.temp run data get entity @s UUID[2]
$execute store result score .world_uuid_2 legitermoose.temp run data get storage legitermoose:worlds worlds[{world_id:$(id)}].uuid[2]
execute if score .uuid_2 legitermoose.temp = .world_uuid_2 legitermoose.temp at @s run playsound block.note_block.bass ui @s ~ ~ ~ 1 .5 1
execute if score .uuid_2 legitermoose.temp = .world_uuid_2 legitermoose.temp run return run tellraw @s {text:"Yᴏᴜ ᴄᴀɴɴᴏᴛ ᴠᴏᴛᴇ ʏᴏᴜʀ ᴏᴡɴ ᴡᴏʀʟᴅ!",color:dark_red}

execute store result score .uuid_3 legitermoose.temp run data get entity @s UUID[3]
$execute store result score .world_uuid_3 legitermoose.temp run data get storage legitermoose:worlds worlds[{world_id:$(id)}].uuid[3]
execute if score .uuid_3 legitermoose.temp = .world_uuid_3 legitermoose.temp at @s run playsound block.note_block.bass ui @s ~ ~ ~ 1 .5 1
execute if score .uuid_3 legitermoose.temp = .world_uuid_3 legitermoose.temp run return run tellraw @s {text:"Yᴏᴜ ᴄᴀɴɴᴏᴛ ᴠᴏᴛᴇ ʏᴏᴜʀ ᴏᴡɴ ᴡᴏʀʟᴅ!",color:dark_red}

# get if you have already voted that world
data modify storage legitermoose:temp check_voted.uuid set from entity @s UUID
data modify storage legitermoose:temp check_voted.id set from storage legitermoose:temp vote.id
function legitermoose:vote/world_vote/check_if_voted with storage legitermoose:temp check_voted
