# Store array len
execute store result score .len_list misc run data get storage minecraft:playerlist prev_tick

# stop if len 0
execute if score .len_list misc matches 0 run return fail

# current_player = prev_players[-1]
data modify storage playerlist current_player set from storage playerlist prev_tick[-1]

# temp = current_player.id
execute store result score .tempid misc run data get storage playerlist current_player.id

execute as @a if score @s id = .tempid misc run return run function code:offline_time/leave_detect/recurse

# HERE for code on leave
function code:offline_time/leave_detect/left/left

function code:offline_time/leave_detect/recurse