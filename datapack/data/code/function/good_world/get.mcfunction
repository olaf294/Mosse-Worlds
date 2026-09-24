scoreboard players add .total requests 1
scoreboard players add .good_world requests 1

setblock -2 65 5 polished_blackstone_button[powered=false,facing=north,face=wall]

# run check three times
function code:good_world/loop

data remove storage api temp