execute store result score .time time run data get storage time time.response.timestamp
scoreboard players add .time time 1

# Get milliseconds and set the updater scoreboard
data modify storage time time.ms set string storage time time.response.time 9
execute store result score .time_add time run data get storage minecraft:time time.response.time 0.00002

execute as @a[tag=temp_joined] run function code:offline_time/on_join

