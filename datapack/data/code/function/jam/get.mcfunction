scoreboard players add .total requests 1
scoreboard players add .jam_world requests 1

setblock -19 65 -7 polished_blackstone_button[powered=false,facing=south,face=wall]

data modify storage api jam set from storage api jam_world.response[0]

execute unless data storage api jam.jam.id run return run function code:jam/init


scoreboard players set .jam_id misc -1
execute store result score .jam_id misc run data get storage api jam.jam.id

# if there is a target jam id but no thingy 
execute if score .req_jam_id misc matches 1.. unless score .req_jam_id misc = .jam_id misc run return run function code:jam/init

execute positioned -19 64 -5 run function code:jam/display with storage api jam