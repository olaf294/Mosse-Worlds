scoreboard players reset @s code
scoreboard players enable @s code

data modify storage legitermoose:http ingoing set value {}
data modify storage legitermoose:http outgoing.data set value {}
execute store result storage legitermoose:http outgoing.data.world_id int 1 run scoreboard players get @s worldid
execute store result storage legitermoose:http outgoing.data.player_id int 1 run scoreboard players get @s id
http body storage legitermoose:http outgoing callback legitermoose:world/feat/code/callback store legitermoose:http ingoing send "https://6188-94-31-68-25.ngrok-free.app/world/code" POST