scoreboard objectives remove iso8601convert
scoreboard objectives add iso8601convert dummy
scoreboard players set -1 iso8601convert -1
scoreboard players set 1000 iso8601convert 1000
scoreboard players set 60000 iso8601convert 60000
scoreboard players set 3600000 iso8601convert 3600000

# Strip timezone and microsecond data (…000+00:00) 
data modify storage discordsync:data cm.timestamp set string storage discordsync:data cm.timestamp 0 -9

# Process date information
data modify storage iso8601:data out.year set string storage discordsync:data cm.timestamp 0 4
data modify storage iso8601:data out.month set string storage discordsync:data cm.timestamp 5 7
data modify storage iso8601:data out.day set string storage discordsync:data cm.timestamp 8 10

# Process time information
data modify storage iso8601:data out.hour set string storage discordsync:data cm.timestamp 11 13
data modify storage iso8601:data out.minute set string storage discordsync:data cm.timestamp 14 16
data modify storage iso8601:data out.second set string storage discordsync:data cm.timestamp 17 19
data modify storage iso8601:data out.ms set string storage discordsync:data cm.timestamp 20 23

function discordsync:commands/_ping/process with storage iso8601:data out