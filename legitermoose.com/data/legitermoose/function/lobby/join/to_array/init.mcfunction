# Converts playername to array
data remove storage str out
data remove storage str in
data modify storage str in.str set from storage legitermoose:temp playername


execute store result score #l legitermoose.temp run data get storage str in.str
function legitermoose:lobby/join/to_array/loop
data modify storage str out set from storage str in.l

execute store result score len_playername legitermoose.temp if data storage str out[]