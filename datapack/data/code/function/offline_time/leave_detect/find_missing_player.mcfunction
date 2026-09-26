execute store result score .len_list misc run data get storage playerlist prev_tick
execute if score .len_list misc matches 0 run return fail

data modify storage playerlist current_player set from storage playerlist prev_tick[-1]
execute store result score .tempid misc run data get storage playerlist current_player.id
execute as @a if score @s id = .tempid misc run return run function code:offline_time/leave_detect/recurse

# HERE for code ON leave (not on rejoin)
execute store result storage playerlist current_player.player_count int 1 if entity @a
function code:offline_time/leave_detect/left/macro with storage playerlist current_player

function code:offline_time/leave_detect/recurse