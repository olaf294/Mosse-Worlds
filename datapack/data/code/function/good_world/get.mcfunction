scoreboard players add .total requests 1
scoreboard players add .good_world requests 1

setblock -2 65 5 polished_blackstone_button[powered=false,facing=north,face=wall]

execute store result score .votes misc run data get storage api good_world.response.votes
execute store result score .visits misc run data get storage api good_world.response.visits

execute positioned 0 64 5 run function code:good_world/check