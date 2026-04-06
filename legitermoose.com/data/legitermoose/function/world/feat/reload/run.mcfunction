scoreboard players reset @s reload
scoreboard players enable @s reload

data modify storage legitermoose:http ingoing set value {}
data modify storage legitermoose:http outgoing.data set value {}
execute store result storage legitermoose:http outgoing.data.world_id int 1 run scoreboard players get @s worldid
http body storage legitermoose:http outgoing callback legitermoose:world/feat/reload/callback store legitermoose:http ingoing send "https://9ded-94-31-68-25.ngrok-free.app/world/reload" POST