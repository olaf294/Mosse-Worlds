# Remove all tags
tag @s remove Nitermoose.lobby_gmc
tag @s remove legitermoose.lobby_gma
tag @s remove legitermoose.lobby_gms
tag @s remove legitermoose.lobby_gmsp
tag @s remove legitermoose.is_playing 

tag @s add legitermoose.global_banned

data modify storage legitermoose:bans global append value {id:[],reason:"none"}
data modify storage legitermoose:bans global[-1].id set from entity @s UUID
$data modify storage legitermoose:bans global[-1].reason set value "$(reason)"

function legitermoose:util/get_name
$tellraw @a [{storage:"legitermoose:temp",nbt:playername,color:yellow},{text:" ʜᴀꜱ ʙᴇᴇɴ ʙᴀɴɴᴇᴅ. Rᴇᴀꜱᴏɴ: '",color:gold},{text:"$(reason)",color:yellow},{text:"'.",color:gold}]

tp @s 0 64 0 0 8
gamemode adventure @s
clear @s
scoreboard players reset @s legitermoose.rank
scoreboard players reset @s legitermoose.gamemode
$tellraw @s [{text:"Yᴏᴜ ʜᴀᴠᴇ ʙᴇᴇɴ ʙᴀɴɴᴇᴅ.\nRᴇᴀꜱᴏɴ: ",color:red},"$(reason)"]