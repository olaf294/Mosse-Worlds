scoreboard players reset @s vote
execute if entity @s[tag=legitermoose.has_voted_lobby] run return run tellraw @s {text:"Yᴏᴜ ʜᴀᴠᴇ ᴀʟʀᴇᴀᴅʏ ᴠᴏᴛᴇᴅ ꜰᴏʀ ᴛʜɪꜱ ᴡᴏʀʟᴅ!",color:red}

# vote lobby
execute if score @s worldid matches 0 at @s run return run function legitermoose:vote/lobby

execute store result storage legitermoose:temp vote.id int 1 run scoreboard players get @s worldid
function legitermoose:vote/world_vote/get_world with storage legitermoose:temp vote