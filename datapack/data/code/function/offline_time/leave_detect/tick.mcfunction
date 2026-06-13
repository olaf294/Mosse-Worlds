# leave detect
# detect leaving just like that
scoreboard players operation .players_last_frame misc = .players misc 
execute store result score .players misc if entity @a
# Total Player Count
scoreboard players operation .players_prev misc = .players misc
execute store result score .players misc if entity @a

execute if score .players misc < .players_last_frame misc run function code:offline_time/leave_detect/find_missing_player

# Store This and Previous Tick
data modify storage playerlist prev_tick set from storage playerlist tick

# Run append function
data remove storage playerlist tick
execute as @a run function code:offline_time/leave_detect/_append


# run streak in here cause its time based
execute as @a unless score .players misc = .players_last_frame misc run function code:streak/get_time