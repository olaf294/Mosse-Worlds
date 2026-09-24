data modify storage api temp set from storage api good_world.response[0]
execute positioned 0 64 5 run function code:good_world/check

data remove storage api good_world.response[0]
execute if data storage api good_world.response[0] run function code:good_world/loop