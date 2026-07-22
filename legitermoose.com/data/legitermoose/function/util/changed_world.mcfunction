clear @s
effect clear @s
inventory @s close

# add more handling
execute if entity @s[gamemode=spectator] run return run tp @s 1000 64 0

execute if score @s worldid matches 0 run tellraw @s [{text:"Jᴏɪɴᴇᴅ ",color:dark_green},{text:"Lᴏʙʙʏ",color:green},{text:".",color:dark_green}]
execute unless score @s worldid matches 0 run tellraw @s [{text:"Jᴏɪɴᴇᴅ Wᴏʀʟᴅ ID ",color:dark_green},{score:{name:"@s",objective:worldid},color:green},{text:".",color:dark_green}]

execute store result storage legitermoose:temp code.world_id int 1 run scoreboard players get @s worldid
data modify storage legitermoose:temp code.event set value "player_events_join"

execute store result storage legitermoose:code code.player_id int 1 run scoreboard players get @s id
function legitermoose:code/run_event with storage legitermoose:temp code
data modify storage legitermoose:code code.player_id set value -1


function legitermoose:world_browser/sort/players/start


# merge fly data
function legitermoose:util/perm/world_gm
execute if score @s legitermoose.rank matches 5..10 run return run data merge entity @s {abilities:{mayfly:1b}}
execute if entity @s[tag=is_admin] run return fail

data merge entity @s {abilities:{mayfly:0b,flying:0b}}