scoreboard players add .total requests 1
scoreboard players add .jam_world requests 1

setblock -19 65 -7 polished_blackstone_button[powered=false,facing=south,face=wall]

# run check three times
function code:jam/loop

data remove storage api temp