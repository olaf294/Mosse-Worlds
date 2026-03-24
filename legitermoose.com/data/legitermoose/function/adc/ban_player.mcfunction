# Remove all tags
tag @s remove legitermoose.lobby_gmc
tag @s remove legitermoose.is_playing 

data modify storage legitermoose:bans global append value {id:[],reason:"none"}
data modify storage legitermoose:bans global[-1].id set from entity @s UUID
$data modify storage legitermoose:bans global[-1].reason set value $(reason)
