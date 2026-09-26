data modify storage api temp set from storage api jam_world.response[0]

# get jam id
scoreboard players set .jam_id misc -1
execute store result score .jam_id misc run data get storage api temp.jam.id

# if there is a target jam id but its not the correct jam id 
execute if score .req_jam_id misc matches 1.. unless score .req_jam_id misc = .jam_id misc run data remove storage api jam_world.response[0]
execute if score .req_jam_id misc matches 1.. unless score .req_jam_id misc = .jam_id misc if data storage api jam_world.response[0] run return run function code:jam/loop
execute if score .req_jam_id misc matches 1.. unless score .req_jam_id misc = .jam_id misc run return 0

execute if data storage api temp.jam.id positioned -19 64 -5 run function code:jam/display with storage api temp

data remove storage api jam_world.response[0]
execute if data storage api jam_world.response[0] run function code:jam/loop