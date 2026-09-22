scoreboard players add .total requests 1
scoreboard players add .random_world requests 1

setblock 0 65 5 stone_button[powered=false,facing=north,face=wall]

# de-array
data modify storage api random set from storage api random.response[0]
execute positioned 0 64 5 run function code:random_world/display with storage api random