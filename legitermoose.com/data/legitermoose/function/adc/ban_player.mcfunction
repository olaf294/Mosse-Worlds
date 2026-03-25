# Remove all tags
tag @s remove legitermoose.lobby_gmc
tag @s remove legitermoose.lobby_gma
tag @s remove legitermoose.lobby_gms
tag @s remove legitermoose.lobby_gmsp
tag @s remove legitermoose.is_playing 

tag @s add legitermoose.global_banned

data modify storage legitermoose:bans global append value {id:[],reason:"none"}
data modify storage legitermoose:bans global[-1].id set from entity @s UUID
$data modify storage legitermoose:bans global[-1].reason set value "$(reason)"

tp @s 0 64 0 0 8
gamemode adventure @s
clear @s
$tellraw @s [{text:"Yᴏᴜ ʜᴀᴠᴇ ʙᴇᴇɴ ʙᴀɴɴᴇᴅ.\nRᴇᴀꜱᴏɴ: ",color:red},"$(reason)"]