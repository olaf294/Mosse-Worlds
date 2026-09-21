scoreboard players add @s lobby_type 1
execute if score @s lobby_type matches 1 run return run function code:misc/lobby/minimal
execute if score @s lobby_type matches 2 run return run function code:misc/lobby/default
scoreboard players set @s lobby_type 0
function code:misc/lobby/spawn