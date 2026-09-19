# leave detect
function code:offline_time/leave_detect/get_player_count

execute if score .players misc < .players_last_frame misc run function code:offline_time/leave_detect/find_missing_player

# Store This and Previous Tick
data modify storage playerlist prev_tick set from storage playerlist tick
data remove storage playerlist tick
execute as @a run function code:offline_time/leave_detect/_append