scoreboard players reset @s reload
scoreboard players enable @s reload

data modify storage legitermoose:http ingoing set value {}
data modify storage legitermoose:http outgoing.data set value {}
execute store result storage legitermoose:http outgoing.data.world_id int 1 run scoreboard players get @s worldid
http body storage legitermoose:http outgoing callback legitermoose:triggers/reload/callback store legitermoose:http ingoing send "https://ec6b-94-31-68-33.ngrok-free.app/api/compile" POST